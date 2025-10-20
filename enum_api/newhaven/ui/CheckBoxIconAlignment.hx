package newhaven.ui;

enum abstract CheckBoxIconAlignment(Int) from Int to Int {
	var left = cast 0;
	var center = cast 1;
	var right = cast 2;
	var fill = cast 3;
	public static var values = [left, center, right, fill];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "left": cast 0;
			case "center": cast 1;
			case "right": cast 2;
			case "fill": cast 3;
			case _: null;
		}
	}
}
