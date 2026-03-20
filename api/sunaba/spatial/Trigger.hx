package sunaba.spatial;

import sunaba.core.Signal;
import sunaba.core.native.NativeObject;

class Trigger extends Node {
	private var scene: SceneRoot;
	private var _bodyEnteredS: Signal;
	private var _bodyEntered: GameEvent<(Entity)->Void>;
	public var bodyEntered(get, default): GameEvent<(Entity)->Void>;
	function get_bodyEntered(): GameEvent<(Entity)->Void> {
		return _bodyEntered;
	}

	private var _bodyExitedS: Signal;
	private var _bodyExited: GameEvent<(Entity)->Void>;
	public var bodyExited(get, default): GameEvent<(Entity)->Void>;
	function get_bodyExited():GameEvent<(Entity)->Void> {
		return _bodyExited;
	}

	public function new(_scene: SceneRoot, _native: NativeObject) {
		super(_native);
		scene = _scene;
	}

	public override function nativeInit(?_native: NativeObject) {
		super.nativeInit(_native);
		_bodyEnteredS = Signal.createFromObject(native, 'body_entered');
		_bodyExitedS = Signal.createFromObject(native, 'body_exited');
		_bodyEntered = new GameEvent();
		_bodyExited = new GameEvent();
		_bodyEnteredS.add((nobj: NativeObject) -> {
			var node = new Node(nobj);
			if (node.isNull()) {
				return;
			}
			var entity = scene.findByNode(node);
			if (entity != null) {
				_bodyEntered.call(entity);
			}
		});
		_bodyExitedS.add((nobj: NativeObject) -> {
			var node = new Node(nobj);
			if (node.isNull()) {
				return;
			}
			var entity = scene.findByNode(node);
			if (entity != null) {
				_bodyExited.call(entity);
			}
		});
	}
}
