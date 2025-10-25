package sunaba;

enum abstract ProjectionType(Int) from Int to Int {
	var perspective = cast 0;
	var orthogonal = cast 1;
	var frustum = cast 2;
	public static var values = [perspective, orthogonal, frustum];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "perspective": cast 0;
			case "orthogonal": cast 1;
			case "frustum": cast 2;
			case _: null;
		}
	}
}
