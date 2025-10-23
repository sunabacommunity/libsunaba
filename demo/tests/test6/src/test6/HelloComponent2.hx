package test6;

import newhaven.Behavior;

class HelloComponent2 extends Behavior {
	public override function onReady() {
		var helloComponent: HelloComponent1 = getComponent(HelloComponent1);
		if (helloComponent != null) {
			helloComponent.sayHello(gameObject.name);
		}
		var child = gameObject.find("Child");
		if (child != null) {
			var childHello: HelloComponent1 = child.getComponent(HelloComponent1);
			if (child != null) {
				childHello.sayHello(child.name);
			}
		}
	}
}
