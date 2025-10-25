package sunaba;

enum abstract HashType(Int) from Int to Int {
	var md5 = cast 0;
	var sha1 = cast 1;
	var sha256 = cast 2;
	public static var values = [md5, sha1, sha256];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "md5": cast 0;
			case "sha1": cast 1;
			case "sha256": cast 2;
			case _: null;
		}
	}
}
