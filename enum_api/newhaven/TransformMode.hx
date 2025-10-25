package sunaba;

enum abstract TransformMode(Int) from Int to Int {
	var position = cast 0;
	var rotation = cast 1;
	var scale = cast 2;
	public static var values = [position, rotation, scale];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "position": cast 0;
			case "rotation": cast 1;
			case "scale": cast 2;
			case _: null;
		}
	}
}
