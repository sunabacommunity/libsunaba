import sunaba.App;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var text = io.loadText("app://HelloWorld.txt");
		trace(text);
	}
}
