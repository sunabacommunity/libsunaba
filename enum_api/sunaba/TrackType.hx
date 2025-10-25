package sunaba;

enum abstract TrackType(Int) from Int to Int {
	var value = cast 0;
	var position3d = cast 1;
	var rotation3d = cast 2;
	var scale3d = cast 3;
	var blendShape = cast 4;
	var method = cast 5;
	var bezier = cast 6;
	var audio = cast 7;
	var animation = cast 8;
	public static var values = [value, position3d, rotation3d, scale3d, blendShape, method, bezier, audio, animation];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "value": cast 0;
			case "position3d": cast 1;
			case "rotation3d": cast 2;
			case "scale3d": cast 3;
			case "blendShape": cast 4;
			case "method": cast 5;
			case "bezier": cast 6;
			case "audio": cast 7;
			case "animation": cast 8;
			case _: null;
		}
	}
}
