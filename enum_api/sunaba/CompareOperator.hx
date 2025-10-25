package sunaba;

enum abstract CompareOperator(Int) from Int to Int {
	var never = cast 0;
	var less = cast 1;
	var equal = cast 2;
	var lessOrEqual = cast 3;
	var greater = cast 4;
	var notEqual = cast 5;
	var greaterOrEqual = cast 6;
	var always = cast 7;
	var max = cast 8;
	public static var values = [never, less, equal, lessOrEqual, greater, notEqual, greaterOrEqual, always, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "never": cast 0;
			case "less": cast 1;
			case "equal": cast 2;
			case "lessOrEqual": cast 3;
			case "greater": cast 4;
			case "notEqual": cast 5;
			case "greaterOrEqual": cast 6;
			case "always": cast 7;
			case "max": cast 8;
			case _: null;
		}
	}
}
