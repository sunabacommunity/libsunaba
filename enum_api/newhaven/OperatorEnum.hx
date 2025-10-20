package newhaven;

enum abstract OperatorEnum(Int) from Int to Int {
	var add = cast 0;
	var sub = cast 1;
	var mul = cast 2;
	var div = cast 3;
	var mod = cast 4;
	var pow = cast 5;
	var max = cast 6;
	var min = cast 7;
	var cross = cast 8;
	var atan2 = cast 9;
	var reflect = cast 10;
	var step = cast 11;
	var enumSize = cast 12;
	public static var values = [add, sub, mul, div, mod, pow, max, min, cross, atan2, reflect, step, enumSize];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "add": cast 0;
			case "sub": cast 1;
			case "mul": cast 2;
			case "div": cast 3;
			case "mod": cast 4;
			case "pow": cast 5;
			case "max": cast 6;
			case "min": cast 7;
			case "cross": cast 8;
			case "atan2": cast 9;
			case "reflect": cast 10;
			case "step": cast 11;
			case "enumSize": cast 12;
			case _: null;
		}
	}
}
