package sunaba;

enum abstract ShadowmaskMode(Int) from Int to Int {
	var none = cast 0;
	var replace = cast 1;
	var overlay = cast 2;
	public static var values = [none, replace, overlay];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "replace": cast 1;
			case "overlay": cast 2;
			case _: null;
		}
	}
}
