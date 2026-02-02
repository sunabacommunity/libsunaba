package;

import sunaba.App;

class Main extends App{
	public static function main() {
		new Main();
	}

	public override function init() {
		var testNode = new TestNode();
		rootNode.addChild(testNode);
	}
}
