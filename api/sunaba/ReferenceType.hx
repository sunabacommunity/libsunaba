package sunaba;

enum abstract ReferenceType(Int) from Int to Int {
	var bone = cast 0;
	var node = cast 1;
	public static var values = [bone, node];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bone": cast 0;
			case "node": cast 1;
			case _: null;
		}
	}
}
