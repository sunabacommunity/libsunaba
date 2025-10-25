package sunaba;

enum abstract TextureType(Int) from Int to Int {
	var type2d = cast 0;
	var layered = cast 1;
	var type3d = cast 2;
	public static var values = [type2d, layered, type3d];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "type2d": cast 0;
			case "layered": cast 1;
			case "type3d": cast 2;
			case _: null;
		}
	}
}
