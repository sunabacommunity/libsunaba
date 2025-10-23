package newhaven;
import newhaven.input.InputEvent;
import newhaven.core.Dictionary;
import newhaven.core.native.NativeReference;

class Behavior extends BaseClass {
	public var native: Component;

	public var gameObject(get, default): GameObject;
	function get_gameObject():GameObject {
		return native.gameObject;
	}

	public var scene(get, default): Scene;
	function get_scene():Scene {
		return native.scene;
	}

	@:generic
	public function addComponent<T>(type: Class<T>): T {
		return gameObject.addComponent(type);
	}

	@:generic
	public function getComponent<T>(type: Class<T>):Null<T> {
		return gameObject.getComponent(type);
	}

	@:generic
	public function removeComponent<T>(type: Class<T>): Void {
		gameObject.removeComponent(type);
	}

	public function onInit() {}
	public function onEnterTree() {}
	public function onExitTree() {}
	public function onReady() {}
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
