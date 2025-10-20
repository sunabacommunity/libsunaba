package newhaven;

enum abstract InstanceType(Int) from Int to Int {
	var none = cast 0;
	var mesh = cast 1;
	var multimesh = cast 2;
	var particles = cast 3;
	var particlesCollision = cast 4;
	var light = cast 5;
	var reflectionProbe = cast 6;
	var decal = cast 7;
	var voxelGi = cast 8;
	var lightmap = cast 9;
	var occluder = cast 10;
	var visiblityNotifier = cast 11;
	var fogVolume = cast 12;
	var max = cast 13;
	var geometryMask = cast 14;
	public static var values = [none, mesh, multimesh, particles, particlesCollision, light, reflectionProbe, decal, voxelGi, lightmap, occluder, visiblityNotifier, fogVolume, max, geometryMask];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "mesh": cast 1;
			case "multimesh": cast 2;
			case "particles": cast 3;
			case "particlesCollision": cast 4;
			case "light": cast 5;
			case "reflectionProbe": cast 6;
			case "decal": cast 7;
			case "voxelGi": cast 8;
			case "lightmap": cast 9;
			case "occluder": cast 10;
			case "visiblityNotifier": cast 11;
			case "fogVolume": cast 12;
			case "max": cast 13;
			case "geometryMask": cast 14;
			case _: null;
		}
	}
}
