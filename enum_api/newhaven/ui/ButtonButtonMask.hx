package newhaven.ui;

enum abstract ButtonButtonMask(Int) from Int to Int {
	var left = cast 1;
	var right = cast 2;
	var middle = cast 4;
	var mbXbutton1 = cast 128;
	var mbXbutton2 = cast 256;
	public static var values = [left, right, middle, mbXbutton1, mbXbutton2];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "left": cast 1;
			case "right": cast 2;
			case "middle": cast 4;
			case "mbXbutton1": cast 128;
			case "mbXbutton2": cast 256;
			case _: null;
		}
	}
}
