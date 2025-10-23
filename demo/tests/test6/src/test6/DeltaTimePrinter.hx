package test6;

import newhaven.Behavior;

class DeltaTimePrinter extends Behavior {
	public override function onInit() {
		trace("DeltaTimePrinter.onInit");
	}

	public override function onUpdate(deltaTime: Float) {
		trace(deltaTime);
	}
}
