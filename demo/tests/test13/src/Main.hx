package;

import sunaba.App;

class Main extends App {
	public static function main() {
		new Main();
	}

	public override function init() {
		var console = new Console();
		rootNode.addChild(console);
	}
}
