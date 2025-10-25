import sunaba.App;
import test8.ClickerCounter;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		try {
			var clickerCounter = new ClickerCounter(io);
			rootNode.addChild(clickerCounter);
		} catch (e:Dynamic) {
			trace("Error initializing ClickerCounter: " + e);
		}
	}
}
