package sunaba.spatial.physics;

enum abstract VehicleBody3DFreezeMode(Int) from Int to Int {
	var _static = cast 0;
	var kinematic = cast 1;
	public static var values = [_static, kinematic];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_static": cast 0;
			case "kinematic": cast 1;
			case _: null;
		}
	}
}
