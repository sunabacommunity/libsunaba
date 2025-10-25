package sunaba;

enum abstract DeepDuplicateMode(Int) from Int to Int {
	var none = cast 0;
	var internal = cast 1;
	var all = cast 2;
	public static var values = [none, internal, all];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "internal": cast 1;
			case "all": cast 2;
			case _: null;
		}
	}
}
