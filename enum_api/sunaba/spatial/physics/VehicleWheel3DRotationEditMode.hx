package sunaba.spatial.physics;

enum abstract VehicleWheel3DRotationEditMode(Int) from Int to Int {
	var euler = cast 0;
	var quaternion = cast 1;
	var basis = cast 2;
	public static var values = [euler, quaternion, basis];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "euler": cast 0;
			case "quaternion": cast 1;
			case "basis": cast 2;
			case _: null;
		}
	}
}
