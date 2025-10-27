package myComponents;

import sunaba.Behavior;
import sunaba.spatial.SpatialTransform;

class RotateComponent extends Behavior {
	public var transform: SpatialTransform;

	public override function onStart() {
		transform = getComponent(SpatialTransform);
	}

	public override function onUpdate(deltaTime: Float) {
		var rotation = -0.5 * deltaTime;
		transform.rotateY(rotation);
	}
}
