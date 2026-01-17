package sunaba;

enum abstract Type(Int) from Int to Int {
	var none = cast 0;
	var ipv4 = cast 1;
	var ipv6 = cast 2;
	var any = cast 3;
	public static var values = [none, ipv4, ipv6, any];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "ipv4": cast 1;
			case "ipv6": cast 2;
			case "any": cast 3;
			case _: null;
		}
	}
}
