package newhaven.spatial.physics;

enum abstract VehicleBody3DAngularDampMode(Int) from Int to Int {
	var combine = cast 0;
	var replace = cast 1;
	public static var values = [combine, replace];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "combine": cast 0;
			case "replace": cast 1;
			case _: null;
		}
	}
}
