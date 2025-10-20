package newhaven;

enum abstract PickerShapeType(Int) from Int to Int {
	var hsvRectangle = cast 0;
	var hsvWheel = cast 1;
	var vhsCircle = cast 2;
	var okhslCircle = cast 3;
	var none = cast 4;
	var okHsRectangle = cast 5;
	var okHlRectangle = cast 6;
	public static var values = [hsvRectangle, hsvWheel, vhsCircle, okhslCircle, none, okHsRectangle, okHlRectangle];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "hsvRectangle": cast 0;
			case "hsvWheel": cast 1;
			case "vhsCircle": cast 2;
			case "okhslCircle": cast 3;
			case "none": cast 4;
			case "okHsRectangle": cast 5;
			case "okHlRectangle": cast 6;
			case _: null;
		}
	}
}
