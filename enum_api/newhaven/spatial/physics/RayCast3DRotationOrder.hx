package newhaven.spatial.physics;

enum abstract RayCast3DRotationOrder(Int) from Int to Int {
	var xyz = cast 0;
	var xzy = cast 1;
	var yxz = cast 2;
	var yzx = cast 3;
	var zxy = cast 4;
	var zyx = cast 5;
	public static var values = [xyz, xzy, yxz, yzx, zxy, zyx];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "xyz": cast 0;
			case "xzy": cast 1;
			case "yxz": cast 2;
			case "yzx": cast 3;
			case "zxy": cast 4;
			case "zyx": cast 5;
			case _: null;
		}
	}
}
