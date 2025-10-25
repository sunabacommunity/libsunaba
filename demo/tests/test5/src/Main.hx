import sunaba.App;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var testnode = new TestNode();
		rootNode.addChild(testnode);
	}
}
