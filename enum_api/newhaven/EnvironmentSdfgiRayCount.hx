package newhaven;

enum abstract EnvironmentSdfgiRayCount(Int) from Int to Int {
	var count4 = cast 0;
	var count8 = cast 1;
	var count16 = cast 2;
	var count32 = cast 3;
	var count64 = cast 4;
	var count96 = cast 5;
	var count128 = cast 6;
	var max = cast 7;
	public static var values = [count4, count8, count16, count32, count64, count96, count128, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "count4": cast 0;
			case "count8": cast 1;
			case "count16": cast 2;
			case "count32": cast 3;
			case "count64": cast 4;
			case "count96": cast 5;
			case "count128": cast 6;
			case "max": cast 7;
			case _: null;
		}
	}
}
