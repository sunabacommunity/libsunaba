package;

import newhaven.App;
import test6.HelloComponent1;
import test6.HelloComponent2;
import test6.DeltaTimePrinter;
import newhaven.SceneRoot;
import newhaven.Entity;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var scene = new SceneRoot();

		var entity1 = new Entity();
		scene.addObject(entity1);
		var helloComp1 = entity1.addComponent(HelloComponent1);
		var helloComp2 = entity1.addComponent(HelloComponent2);

		var child = new Entity();
		child.name = "Child";
		entity1.addChild(child);
		var childHell0 = child.addComponent(HelloComponent1);

		var entity2 = new Entity();
		scene.addObject(entity2);
		var deltaTimePrinter = entity2.addComponent(DeltaTimePrinter);

		rootNode.addChild(scene);
	}
}
