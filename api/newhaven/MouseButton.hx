package newhaven;

enum abstract MouseButton(Int) from Int to Int {
	var none = cast 0;
	var left = cast 1;
	var right = cast 2;
	var middle = cast 3;
	var wheelUp = cast 4;
	var wheelDown = cast 5;
	var wheelLeft = cast 6;
	var wheelRight = cast 7;
	var xbutton1 = cast 8;
	var xbutton2 = cast 9;
	public static var values = [none, left, right, middle, wheelUp, wheelDown, wheelLeft, wheelRight, xbutton1, xbutton2];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "left": cast 1;
			case "right": cast 2;
			case "middle": cast 3;
			case "wheelUp": cast 4;
			case "wheelDown": cast 5;
			case "wheelLeft": cast 6;
			case "wheelRight": cast 7;
			case "xbutton1": cast 8;
			case "xbutton2": cast 9;
			case _: null;
		}
	}
}
