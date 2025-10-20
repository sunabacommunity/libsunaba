package newhaven;

enum abstract TransformFormatEnum(Int) from Int to Int {
	var transform2d = cast 0;
	var transform3d = cast 1;
	public static var values = [transform2d, transform3d];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "transform2d": cast 0;
			case "transform3d": cast 1;
			case _: null;
		}
	}
}
