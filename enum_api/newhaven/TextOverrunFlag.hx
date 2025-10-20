package newhaven;

enum abstract TextOverrunFlag(Int) from Int to Int {
	var noTrim = cast 0;
	var trim = cast 1;
	var trimWordOnly = cast 2;
	var addEllipsis = cast 4;
	var enforceEllipsis = cast 8;
	var justificationAware = cast 16;
	public static var values = [noTrim, trim, trimWordOnly, addEllipsis, enforceEllipsis, justificationAware];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "noTrim": cast 0;
			case "trim": cast 1;
			case "trimWordOnly": cast 2;
			case "addEllipsis": cast 4;
			case "enforceEllipsis": cast 8;
			case "justificationAware": cast 16;
			case _: null;
		}
	}
}
