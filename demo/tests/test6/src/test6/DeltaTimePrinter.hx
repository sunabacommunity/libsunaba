package test6;

import sunaba.Behavior;

class DeltaTimePrinter extends Behavior {
	public override function onInit() {
		super.onInit();
		trace("DeltaTimePrinter.onInit");
	}

	public override function onUpdate(deltaTime: Float) {
		//trace(deltaTime);
	}
}
