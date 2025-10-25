import sunaba.Node;

class TestNode extends Node {
	public function new() {
		super(null);
		initializeProxy();
	}

	public override function onProcess(delta: Float) {
		trace(delta);
	}
}
