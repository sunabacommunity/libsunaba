package sunaba;
import sunaba.input.InputEvent;
import sunaba.core.Dictionary;
import sunaba.core.native.NativeReference;

class Behavior extends BaseClass {

	public var entity: Entity;
	public var scene(get, default): SceneRoot;
	function get_scene():SceneRoot {
		return entity.scene;
	}

	public var name: String;

	@:generic
	public function addComponent<T>(type: Class<T>): T {
		return entity.addComponent(type);
	}

	@:generic
	public function getComponent<T>(type: Class<T>):Null<T> {
		return entity.getComponent(type);
	}

	@:generic
	public function removeComponent<T>(type: Class<T>): Void {
		entity.removeComponent(type);
	}

	public function onInit() {}
	public function onEnterTree() {}
	public function onExitTree() {}
	public function onStart() {}
	public function onEnd() {}
	public function onUpdate(deltaTime: Float) {}
	public function onPhysicsUpdate(deltaTime: Float) {}
	public function onInput(event: InputEvent) {}
	public function onUnhandledInput(event: InputEvent) {}
	public function onUnhandledKeyInput(event: InputEvent) {}
	public function onShortcutInput(event: InputEvent) {}
	public function getData(): Dictionary { return new Dictionary(); }
	public function setData(data: Dictionary) {}

	function _onInput(event: NativeReference) {
		onInput(new InputEvent(event));
	}
	function _onUnhandledInput(event: NativeReference) {
		onUnhandledInput(new InputEvent(event));
	}
	function _onUnhandledKeyInput(event: NativeReference) {
		onUnhandledKeyInput(new InputEvent(event));
	}
	function _onShortcutInput(event: NativeReference) {
		onShortcutInput(new InputEvent(event));
	}
}
