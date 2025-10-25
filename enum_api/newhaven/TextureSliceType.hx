package sunaba;

enum abstract TextureSliceType(Int) from Int to Int {
	var slice2d = cast 0;
	var cubemap = cast 1;
	var slice3d = cast 2;
	public static var values = [slice2d, cubemap, slice3d];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "slice2d": cast 0;
			case "cubemap": cast 1;
			case "slice3d": cast 2;
			case _: null;
		}
	}
}
