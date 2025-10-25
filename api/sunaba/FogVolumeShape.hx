package sunaba;

enum abstract FogVolumeShape(Int) from Int to Int {
	var ellipsoid = cast 0;
	var cone = cast 1;
	var cylinder = cast 2;
	var box = cast 3;
	var world = cast 4;
	var max = cast 5;
	public static var values = [ellipsoid, cone, cylinder, box, world, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "ellipsoid": cast 0;
			case "cone": cast 1;
			case "cylinder": cast 2;
			case "box": cast 3;
			case "world": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
