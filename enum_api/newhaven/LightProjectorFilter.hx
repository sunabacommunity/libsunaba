package newhaven;

enum abstract LightProjectorFilter(Int) from Int to Int {
	var nearest = cast 0;
	var linear = cast 1;
	var nearestMipmaps = cast 2;
	var linearMipmaps = cast 3;
	var nearestMipmapsAnisotropic = cast 4;
	var linearMipmapsAnisotropic = cast 5;
	public static var values = [nearest, linear, nearestMipmaps, linearMipmaps, nearestMipmapsAnisotropic, linearMipmapsAnisotropic];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "nearest": cast 0;
			case "linear": cast 1;
			case "nearestMipmaps": cast 2;
			case "linearMipmaps": cast 3;
			case "nearestMipmapsAnisotropic": cast 4;
			case "linearMipmapsAnisotropic": cast 5;
			case _: null;
		}
	}
}
