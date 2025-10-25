package sunaba;

enum abstract OriginFromEnum(Int) from Int to Int {
	var self = cast 0;
	var specificBone = cast 1;
	var externalNode = cast 2;
	public static var values = [self, specificBone, externalNode];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "self": cast 0;
			case "specificBone": cast 1;
			case "externalNode": cast 2;
			case _: null;
		}
	}
}
