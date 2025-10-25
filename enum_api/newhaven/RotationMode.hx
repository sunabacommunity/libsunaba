package sunaba;

enum abstract RotationMode(Int) from Int to Int {
	var resetFullRotation = cast 0;
	var resetButKeepTilt = cast 1;
	var dontResetRotation = cast 2;
	public static var values = [resetFullRotation, resetButKeepTilt, dontResetRotation];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "resetFullRotation": cast 0;
			case "resetButKeepTilt": cast 1;
			case "dontResetRotation": cast 2;
			case _: null;
		}
	}
}
