package sunaba;

enum abstract TransformFlag(Int) from Int to Int {
	var position = cast 1;
	var rotation = cast 2;
	var scale = cast 4;
	var all = cast 7;
	public static var values = [position, rotation, scale, all];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "position": cast 1;
			case "rotation": cast 2;
			case "scale": cast 4;
			case "all": cast 7;
			case _: null;
		}
	}
}
