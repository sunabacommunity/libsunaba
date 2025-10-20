package newhaven.ui;

enum abstract ColorPickerButtonVerticalIconAlignment(Int) from Int to Int {
	var top = cast 0;
	var center = cast 1;
	var bottom = cast 2;
	var fill = cast 3;
	public static var values = [top, center, bottom, fill];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "top": cast 0;
			case "center": cast 1;
			case "bottom": cast 2;
			case "fill": cast 3;
			case _: null;
		}
	}
}
