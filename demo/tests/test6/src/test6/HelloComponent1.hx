package test6;

import newhaven.Behavior;

class HelloComponent1 extends Behavior {
	public function sayHello(name: String) {
		Sys.println("Hello, " + name + "!");
	}
}
