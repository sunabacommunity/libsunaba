package newhaven;

enum abstract MouseMode(Int) from Int to Int {
	var visible = cast 0;
	var hidden = cast 1;
	var captured = cast 2;
	var confined = cast 3;
	var confinedHidden = cast 4;
	var max = cast 5;
	public static var values = [visible, hidden, captured, confined, confinedHidden, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "visible": cast 0;
			case "hidden": cast 1;
			case "captured": cast 2;
			case "confined": cast 3;
			case "confinedHidden": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
