package sunaba;

enum abstract CacheMode(Int) from Int to Int {
	var ignore = cast 0;
	var reuse = cast 1;
	var replace = cast 2;
	var ignoreDeep = cast 3;
	var replaceDeep = cast 4;
	public static var values = [ignore, reuse, replace, ignoreDeep, replaceDeep];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "ignore": cast 0;
			case "reuse": cast 1;
			case "replace": cast 2;
			case "ignoreDeep": cast 3;
			case "replaceDeep": cast 4;
			case _: null;
		}
	}
}
