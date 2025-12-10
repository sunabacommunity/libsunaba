import sunaba.App;
import sunaba.JSON;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var data = io.loadData("app://TestScene.vscn");
		var json = JSON.stringify(data, "	");
		Sys.println(json);
		io.saveText("app://TestScene.vscn", json);
	}
}
