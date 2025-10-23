package;

import newhaven.App;
import newhaven.Scene;
import newhaven.GameObject;
import test6.HelloComponent1;
import test6.HelloComponent2;
import test6.DeltaTimePrinter;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var scene = new Scene();

		var object1 = new GameObject();
		scene.addObject(object1);
		var helloComp1 = object1.addComponent(HelloComponent1);
		var helloComp2 = object1.addComponent(HelloComponent2);

		var child = new GameObject();
		object1.addChild(child);
		var childHell0 = child.addComponent(HelloComponent1);

		var object2 = new GameObject();
		scene.addObject(object2);
		var deltaTimePrinter = object2.addComponent(DeltaTimePrinter);

		rootNode.addChild(scene);
	}
}
