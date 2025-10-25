package sunaba;

enum abstract ZipAppend(Int) from Int to Int {
	var create = cast 0;
	var createafter = cast 1;
	var addinzip = cast 2;
	public static var values = [create, createafter, addinzip];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "create": cast 0;
			case "createafter": cast 1;
			case "addinzip": cast 2;
			case _: null;
		}
	}
}
