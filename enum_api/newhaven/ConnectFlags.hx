package sunaba;

enum abstract ConnectFlags(Int) from Int to Int {
	var deferred = cast 1;
	var persist = cast 2;
	var oneShot = cast 4;
	var referenceCounted = cast 8;
	var appendSourceObject = cast 16;
	public static var values = [deferred, persist, oneShot, referenceCounted, appendSourceObject];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "deferred": cast 1;
			case "persist": cast 2;
			case "oneShot": cast 4;
			case "referenceCounted": cast 8;
			case "appendSourceObject": cast 16;
			case _: null;
		}
	}
}
