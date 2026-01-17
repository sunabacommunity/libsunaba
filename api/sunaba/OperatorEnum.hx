package sunaba;

enum abstract OperatorEnum(Int) from Int to Int {
	var add = cast 0;
	var sub = cast 1;
	var mul = cast 2;
	var div = cast 3;
	var mod = cast 4;
	var pow = cast 5;
	var max = cast 6;
	var min = cast 7;
	var atan2 = cast 8;
	var step = cast 9;
	var enumSize = cast 10;
	public static var values = [add, sub, mul, div, mod, pow, max, min, atan2, step, enumSize];

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
			case "atan2": cast 8;
			case "step": cast 9;
			case "enumSize": cast 10;
			case _: null;
		}
	}
}
