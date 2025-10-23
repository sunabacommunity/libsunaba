package newhaven;

import newhaven.core.Object;
import newhaven.core.native.NativeObject;
import newhaven.core.ArrayList;
import newhaven.core.TypedArray;
import newhaven.core.native.NativeReference;
import Type;

class GameObject extends Object {
	public function new(?_native: NativeObject) {
		super();
		if (_native == null) {
			_native = new NativeObject('GameObject');
		}
		native = _native;
	}

	public var name(get, set): String;
	function get_name():String {
		return native.get("Name");
	}
	function set_name(value:String):String {
		native.set("Name", value);
		return value;
	}

	public var scene(get, default): Scene;
	function get_scene():Scene {
		return new Scene(native.get("Scene"));
	}

	public var parent(get, default): GameObject;
	function get_parent():GameObject {
		return new GameObject(native.get("Parent"));
	}

	public var node(get, set): Node;
	function get_node():Node {
		return new Node(native.get("Node"));
	}
	function set_node(value:Node):Node {
		native.set("Node", value.native);
		return value;
	}

	public var isPrefab(get, default): Bool;
	function get_isPrefab():Bool {
		return native.get("IsPrefab");
	}

	public var prefabPath(get, set): String;
	function get_prefabPath():String {
		return native.get("PrefabPath");
	}
	function set_prefabPath(value:String):String {
		native.set("PrefabPath", value);
		return value;
	}

	private function addNativeComponent(component: Component) {
		var args = new ArrayList();
		args.append(component);
		native.call("AddComponent", args);
	}

	private function removeNativeComponent(component: Component) {
		var args = new ArrayList();
		args.append(component.native);
		native.call("RemoveComponent", args);
	}

	@:generic
	public function addComponent<T>(type: Class<T>): T {
		var behaviorT = Type.createEmptyInstance(type);
		var component = new Component();
		var behavior: Behavior = cast behaviorT;
		behavior.native = component;
		component.script = cast behavior;
		component.name = Type.getClassName(type);
		addNativeComponent(component);
		return behaviorT;
	}

	@:generic
	public function removeComponent<T>(type: Class<T>): Void {
		var components = getNativeComponents();
		for (component in components) {
			var behavior = component.script;
			var behaviorType = Type.getClass(behavior);
			if (Type.getClassName(behaviorType) == Type.getClassName(type)) {
				removeNativeComponent(component);
				break;
			}
		}
	}

	@:generic
	public function getComponent<T>(type: Class<T>):Null<T> {
		var components = getComponents();
		for (component in components) {
			var ctype = Type.getClass(component);
			if (Type.getClassName(ctype) == Type.getClassName(type)) {
				 cast component;
			}
		}
		return null;
	}

	private function getNativeComponentsAL(): ArrayList {
		return native.call("GetComponents", new ArrayList());
	}

	private function getNativeComponents(): Array<Component> {
		var nativeComponentsAl = getNativeComponentsAL();
		var nativeComponents = new Array<Component>();
		for (i in 0...nativeComponentsAl.size()) {
			var ref: NativeReference = nativeComponentsAl.get(i);
			nativeComponents.push(new Component(ref));
		}
		return nativeComponents;
	}

	public function getComponents(): Array<Behavior> {
		var nativeComponents = getNativeComponents();
		var components = new Array<Behavior>();
		for (nativeC in nativeComponents) {
			components.push(nativeC.script);
		}
		return components;
	}

	public function getComponentNames(): TypedArray<String>  {
		return native.call("GetComponentNames", new ArrayList());
	}

	public function addChild(object: GameObject) {
		var args = new ArrayList();
		args.append(object.native);
		native.call("AddChild", args);
	}

	public function removeChild(object: GameObject) {
		var args = new ArrayList();
		args.append(object.native);
		native.call("RemoveChild", args);
	}

	public function hasChild(object: GameObject) {
		var args = new ArrayList();
		args.append(object.native);
		native.call("HasChild", args);
	}

	public function find(path: String): GameObject {
		var args = new ArrayList();
		args.append(path);
		var obj = native.call("Find", args);
		return new GameObject(obj);
	}

	public function getChildCount(): Int {
		return native.call("GetChildCount", new ArrayList());
	}

	public function getChild(index: Int): GameObject {
		var args = new ArrayList();
		args.append(index);
		var obj = native.call("GetChild", args);
		return new GameObject(obj);
	}

	public function getChildren(): Array<GameObject> {
		var arrayList : ArrayList = native.call("GetChildren", new ArrayList());
		var children: Array<GameObject> = new Array();
		for (i in 0...arrayList.size()) {
			var gameObj = new GameObject(arrayList.get(i));
			children.push(gameObj);
		}
		return children;
	}

	public var children(get, default): Array<GameObject>;
	function get_children():Array<GameObject> {
		return getChildren();
	}


	public function destroy() {
		native.call("destroy", new ArrayList());
	}
}
