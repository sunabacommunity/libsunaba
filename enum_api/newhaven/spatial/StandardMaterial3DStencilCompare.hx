package newhaven.spatial;

enum abstract StandardMaterial3DStencilCompare(Int) from Int to Int {
	var always = cast 0;
	var less = cast 1;
	var equal = cast 2;
	var lessOrEqual = cast 3;
	var greater = cast 4;
	var notEqual = cast 5;
	var greaterOrEqual = cast 6;
	public static var values = [always, less, equal, lessOrEqual, greater, notEqual, greaterOrEqual];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "always": cast 0;
			case "less": cast 1;
			case "equal": cast 2;
			case "lessOrEqual": cast 3;
			case "greater": cast 4;
			case "notEqual": cast 5;
			case "greaterOrEqual": cast 6;
			case _: null;
		}
	}
}
