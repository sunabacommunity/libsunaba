package sunaba;

import Type;
import sunaba.input.InputEvent;

class Entity extends BaseClass {
	public function new() {

	}

	private var _freed: Bool = false;

	public var name = "Entity";

	private var components: Array<Behavior> = new Array();
	private var children: Array<Entity> = new Array();

	var _parent: Entity = null;

	public var scene: SceneRoot;

	public var parent(get, set): Entity;
	function get_parent():Entity {
		return _parent;
	}
	function set_parent(value:Entity):Entity {
		this._parent = value;

		return _parent;
	}

	private var _node: Node;
	public var node(get, set): Node;
	function get_node():Node {
		return _node;
	}
	function set_node(value:Node):Node {
		if (_node != null) {
			if (value != null) {
				if (!value.isNull()) {
					if (_node.native == value.native) return _node;
					if (!_freed && value != null) {
						var c = new Array<Node>();
						for (i in 0..._node.getChildCount()) {
							var child = _node.getChild(i);
							if (child != null) {
								c.push(child);
								_node.removeChild(child);
							}
						}

						for (child in c) {
							if (child != null) {
								value.addChild(child);
							}
						}
					}
				}
			}

			_node.queueFree();
		}

		_node = value;
		if (value != null) {
			if (!value.isNull()) {
				if (parent != null) {
					parent.node.addChild(value);
				}
				else if (scene != null) {
					scene.addChild(value);
				}
				_node.name = this.name;
			}
		}
		return value;
	}

	private var _prefabPath: String = "";
	public var prefabPath(get, set): String;
	function get_prefabPath():String {
		return _prefabPath;
	}
	function set_prefabPath(value:String):String {
		if ((value != "") && (!StringTools.contains(value, "://") && !StringTools.endsWith(value, ".vpfb"))) {
			throw "Invalid prefab path";
			return value;
		}

		return this._prefabPath = value;
	}

	public function isPrefab() {
		return prefabPath != "";
	}

	public function findEnt(path: Array<String>, index: Int) {
		if (index == path.length - 1) return this;

		for (child in children) {
			if (child.name == path[index]) {
				return child.findEnt(path, index + 1);
			}
		}
		return null;
	}

	public function addComponentNG(type: Class<Dynamic>): Dynamic {
		var behaviorT = Type.createEmptyInstance(type);
		var behavior: Behavior = cast behaviorT;
		behavior.entity = this;
		behavior.name = Type.getClassName(type);
		components.push(behavior);
		behavior.onInit();
		if (_hasEnteredTree) {
			behavior.onEnterTree();
		}
		if (_started == true) {
			behavior.onStart();
		}
		return behaviorT;
	}

	@:generic
	public function addComponent<T>(type: Class<T>): T {
		var behaviorT = Type.createEmptyInstance(type);
		var behavior: Behavior = cast behaviorT;
		behavior.entity = this;
		behavior.name = Type.getClassName(type);
		components.push(behavior);
		behavior.onInit();
		if (_hasEnteredTree) {
			behavior.onEnterTree();
		}
		if (_started == true) {
			behavior.onStart();
		}
		return behaviorT;
	}

	@:generic
	public function removeComponent<T>(type: Class<T>): Void {
		var compName = Type.getClassName(type);
		for (component in components) {
			if (component.name == compName) {
				component.onExitTree();
				component.onEnd();
				components.remove(component);
			}
		}
	}

	@:generic
	public function getComponent<T>(type: Class<T>):Null<T> {
		var compName = Type.getClassName(type);
		for (component in components) {
			if (component.name == compName) {
				var compT: T = cast component;
				return compT;
			}
		}
		return null;
	}

	public function getConponents() {
		var components: Array<Behavior> = new Array();
		for (comp in this.components) {
			components.push(comp);
		}
		return components;
	}

	private var _started = false;

	private var _hasEnteredTree: Bool = false;

	public function addChild(child: Entity) {
		child.parent = this;
		child.scene = scene;
		children.push(child);
		if (node != null && child.node != null) {
			node.addChild(child.node);
		}
		if (scene != null) {
			child.enterTree();
		}
		if (_started) {
			child.start();
		}
	}

	public function removeChild(child: Entity){
		if (child == null)
			return;

		if (children.contains(child)) {
			if (scene != null)
				child.exitTree();

			child.scene = null;
			child.parent = null;

			children.remove(child);
			if (node != null && child.node != null) {
				node.removeChild(child.node);
			}
		}
	}

	public function hasChild(child: Entity): Bool {
		return children.contains(child);
	}

	public function find(path: String) {
		var split = path.split("/");
		return findEnt(split, 0);
	}

	public function getChildCount() {
		return children.length;
	}

	public function getChild(index: Int) {
		if (index < 0 || index >= children.length)
			return null;
		return children[index];
	}

	public function enterTree() {
		for (comp in components) {
			comp.onEnterTree();
		}
		for (child in children) {
			child.enterTree();
		}
		_hasEnteredTree = true;
	}

	public function exitTree() {
		if (components != null) {
			for (comp in components) {
				comp.onExitTree();
			}
		}
		if (children != null) {
			for (child in children) {
				child.exitTree();
			}
		}
	}

	public function start() {
		for (comp in components) {
			comp.onStart();
		}
		for (child in children) {
			child.start();
		}
		_started = true;
	}

	public function update(deltaTime: Float) {
		for (comp in components) {
			comp.onUpdate(deltaTime);
		}
		for (child in children) {
			child.update(deltaTime);
		}
	}

	public function physicsUpdate(deltaTime: Float) {
		for (comp in components) {
			comp.onPhysicsUpdate(deltaTime);
		}
		for (child in children) {
			child.physicsUpdate(deltaTime);
		}
	}

	public function input(event: InputEvent) {
		for (comp in components) {
			comp.onInput(event);
		}
		for (child in children) {
			child.input(event);
		}
	}

	public function unhandledInput(event: InputEvent) {
		for (comp in components) {
			comp.onUnhandledInput(event);
		}
		for (child in children) {
			child.unhandledInput(event);
		}
	}

	public function unhandledKeyInput(event: InputEvent) {
		for (comp in components) {
			comp.onUnhandledKeyInput(event);
		}
		for (child in children) {
			child.unhandledKeyInput(event);
		}
	}

	public function shortcutInput(event: InputEvent) {
		for (comp in components) {
			comp.onShortcutInput(event);
		}
		for (child in children) {
			child.shortcutInput(event);
		}
	}

	public function destroy() {
		exitTree();
		for (comp in components) {
			removeComponent(Type.getClass(comp));
		}
		components = null;

		for (child in children) {
			child.destroy();
			removeChild(child);
		}
		children = null;

		if (node != null) {
			node.queueFree();
			node = null;
		}

		if (parent != null) {
			parent.removeChild(this);
			parent = null;
		}
		else if (scene != null) {
			scene.removeEntity(this);
		}
		scene = null;

		_freed = true;
	}
}
