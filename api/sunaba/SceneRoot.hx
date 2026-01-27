package sunaba;
import sunaba.input.InputEvent;
import sunaba.io.IoInterface;

class SceneRoot extends Node {
	public function new() {
		super();
		entities = new Array();
		initializeProxy();
	}

	private var entities: Array<Entity>;

	public var io: IoInterface;

	function findEnt(path: Array<String>, index: Int) {
		for (entity in entities) {
			if (entity.name == path[index]) {
				return entity.findEnt(path, index);
			}
		}
		return null;
	}

	function __findByNode(entity: Entity, node: Node): Null<Entity> {
		if (entity.node.native.eq(node.native)) {
			return entity;
		}
		for (i in 0...entity.getChildCount()) {
			var child = entity.getChild(i);

			var result = __findByNode(child, node);
			if (result != null) {
				return result;
			}
		}

		return null;
	}

	public function findByNode(node: Node): Null<Entity> {
		for (entity in entities) {
			var result = __findByNode(entity, node);
			if (result != null) {
				return result;
			}
		}
		return null;
	}

	private var started: Bool = false;
	private var enteredTree: Bool = false;

	public var isInEditor = false;

	public function addEntity(entity: Entity) {
		if (entity == null) return;

		entity.scene = this;
		entities.push(entity);
		if (entity.node != null) {
			if (!entity.node.isNull()) {
				addChild(entity.node);
			}
		}
		if (enteredTree)
			entity.enterTree();
		if (started)
			entity.start();
	}

	public function removeEntity(entity: Entity) {
		if (entity == null) return;

		entity.exitTree();
		entity.scene = null;
		entities.remove(entity);
		if (entity.node != null) {
			if (!entity.node.isNull()) {
				removeChild(entity.node);
			}
		}
	}

	public function hasEntity(entity: Entity){
		return entities.contains(entity);
	}

	public function find(path: String) {
		var split = path.split("/");
		if (split.length == 1) {
			split = ["Scene", split[0]];
		}
		else {
			var newsplit = ["Scene"];
			for (string in split) {
				newsplit.push((string));
			}
		}
		return findEnt(split, 1);
	}

	public function getEntityCount() {
		return entities.length;
	}

	public function getEntity(index: Int) {
		if (index < 0 || index >= entities.length)
			return null;
		return entities[index];
	}

	public override function onEnterTree() {
		for (entity in entities) {
			entity.exitTree();
		}

		enteredTree = true;
	}

	public override function onExitTree() {
		if (entities != null) {
			for (entity in entities) {
				entity.exitTree();
			}
		}

	}

	public override function onReady() {
		for (entity in entities) {
			entity.start();
		}

		started = true;
	}

	public override function onProcess(deltaTime: Float) {
		for (entity in entities) {
			entity.update(deltaTime);
		}
	}

	public override function onPhysicsProcess(deltaTime: Float) {
		for (entity in entities) {
			entity.physicsUpdate(deltaTime);
		}
	}

	public override function onInput(event: InputEvent) {
		for (entity in entities) {
			entity.input(event);
		}
	}

	public override function onUnhandledInput(event: InputEvent){
		for (entity in entities) {
			entity.unhandledInput(event);
		}
	}

	public override function onUnhandledKeyInput(event: InputEvent){
		for (entity in entities) {
			entity.unhandledKeyInput(event);
		}
	}

	public override function onShortcutInput(event: InputEvent){
		for (entity in entities) {
			entity.shortcutInput(event);
		}
	}

	public function destroy() {
		for (entity in entities) {
			entity.destroy();
		}
		entities = null;

		queueFree();
	}
}
