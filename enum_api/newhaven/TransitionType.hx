package newhaven;

enum abstract TransitionType(Int) from Int to Int {
	var linear = cast 0;
	var sine = cast 1;
	var quint = cast 2;
	var quart = cast 3;
	var quad = cast 4;
	var expo = cast 5;
	var elastic = cast 6;
	var cubic = cast 7;
	var circ = cast 8;
	var bounce = cast 9;
	var back = cast 10;
	var spring = cast 11;
	public static var values = [linear, sine, quint, quart, quad, expo, elastic, cubic, circ, bounce, back, spring];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "linear": cast 0;
			case "sine": cast 1;
			case "quint": cast 2;
			case "quart": cast 3;
			case "quad": cast 4;
			case "expo": cast 5;
			case "elastic": cast 6;
			case "cubic": cast 7;
			case "circ": cast 8;
			case "bounce": cast 9;
			case "back": cast 10;
			case "spring": cast 11;
			case _: null;
		}
	}
}
