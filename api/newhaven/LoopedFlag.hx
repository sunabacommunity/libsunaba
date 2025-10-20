package newhaven;

enum abstract LoopedFlag(Int) from Int to Int {
	var none = cast 0;
	var end = cast 1;
	var start = cast 2;
	public static var values = [none, end, start];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "end": cast 1;
			case "start": cast 2;
			case _: null;
		}
	}
}
