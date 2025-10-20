package newhaven;

enum abstract PlaybackType(Int) from Int to Int {
	var _default = cast 0;
	var stream = cast 1;
	var sample = cast 2;
	var max = cast 3;
	public static var values = [_default, stream, sample, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "stream": cast 1;
			case "sample": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
