package sunaba;

enum abstract BlendOperation(Int) from Int to Int {
	var add = cast 0;
	var subtract = cast 1;
	var reverseSubtract = cast 2;
	var minimum = cast 3;
	var maximum = cast 4;
	var max = cast 5;
	public static var values = [add, subtract, reverseSubtract, minimum, maximum, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "add": cast 0;
			case "subtract": cast 1;
			case "reverseSubtract": cast 2;
			case "minimum": cast 3;
			case "maximum": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
