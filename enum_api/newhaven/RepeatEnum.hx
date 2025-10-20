package newhaven;

enum abstract RepeatEnum(Int) from Int to Int {
	var none = cast 0;
	var repeat = cast 1;
	var mirror = cast 2;
	public static var values = [none, repeat, mirror];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "repeat": cast 1;
			case "mirror": cast 2;
			case _: null;
		}
	}
}
