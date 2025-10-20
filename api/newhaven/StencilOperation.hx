package newhaven;

enum abstract StencilOperation(Int) from Int to Int {
	var keep = cast 0;
	var zero = cast 1;
	var replace = cast 2;
	var incrementAndClamp = cast 3;
	var decrementAndClamp = cast 4;
	var invert = cast 5;
	var incrementAndWrap = cast 6;
	var decrementAndWrap = cast 7;
	var max = cast 8;
	public static var values = [keep, zero, replace, incrementAndClamp, decrementAndClamp, invert, incrementAndWrap, decrementAndWrap, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "keep": cast 0;
			case "zero": cast 1;
			case "replace": cast 2;
			case "incrementAndClamp": cast 3;
			case "decrementAndClamp": cast 4;
			case "invert": cast 5;
			case "incrementAndWrap": cast 6;
			case "decrementAndWrap": cast 7;
			case "max": cast 8;
			case _: null;
		}
	}
}
