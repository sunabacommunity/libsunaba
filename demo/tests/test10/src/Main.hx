import sunaba.App;
import sunaba.ui.StyleBoxFlat;
import sunaba.core.Color;
import sunaba.DataUtils;
import sunaba.JSON;
import sunaba.Debug;
import haxe.Exception;
import sunaba.core.ArrayList;
import sunaba.core.Variant;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		try {
			var stylebox = new StyleBoxFlat();
			stylebox.bgColor = Color.html("#ff2dff00");
			stylebox.borderWidthBottom = 3;
			stylebox.contentMarginLeft = 7.2;
			var dictionary = DataUtils.varToDict(stylebox.native);

			Sys.println(JSON.stringify(dictionary, "    "));

			var newStyleBox = new StyleBoxFlat();
			trace(newStyleBox.bgColor.toHtml());
			trace(newStyleBox.borderWidthBottom);
			trace(newStyleBox.contentMarginLeft);
			newStyleBox = new StyleBoxFlat(DataUtils.dictToVar(dictionary, io));
			trace(newStyleBox.bgColor.toHtml());
			trace(newStyleBox.borderWidthBottom);
			trace(newStyleBox.contentMarginLeft);
		}
		catch (e: Exception) {
			trace(e);
			Debug.error(e.message);
		}
	}
}
