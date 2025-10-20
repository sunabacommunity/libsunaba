package newhaven;

enum abstract GroupCallFlags(Int) from Int to Int {
	var _default = cast 0;
	var reverse = cast 1;
	var deferred = cast 2;
	var unique = cast 4;
	public static var values = [_default, reverse, deferred, unique];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "reverse": cast 1;
			case "deferred": cast 2;
			case "unique": cast 4;
			case _: null;
		}
	}
}
