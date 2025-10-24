package test6;

import newhaven.Behavior;

class HelloComponent2 extends Behavior {
	public override function onStart() {
		var helloComponent: HelloComponent1 = getComponent(HelloComponent1);
		trace(helloComponent != null);
		if (helloComponent != null) {
			helloComponent.sayHello("HelloComponent1");
		}
		var child = entity.find("Child");
		if (child != null) {
			var childHello: HelloComponent1 = child.getComponent(HelloComponent1);
			trace(childHello != null);
			if (childHello != null) {
				childHello.sayHello("Child");
			}
		}
	}
}
