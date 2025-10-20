package newhaven;

enum abstract OperationEnum(Int) from Int to Int {
	var union = cast 0;
	var intersection = cast 1;
	var subtraction = cast 2;
	public static var values = [union, intersection, subtraction];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "union": cast 0;
			case "intersection": cast 1;
			case "subtraction": cast 2;
			case _: null;
		}
	}
}
