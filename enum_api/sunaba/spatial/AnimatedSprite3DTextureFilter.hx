package sunaba.spatial;

enum abstract AnimatedSprite3DTextureFilter(Int) from Int to Int {
	var nearest = cast 0;
	var linear = cast 1;
	var nearestWithMipmaps = cast 2;
	var linearWithMipmaps = cast 3;
	var nearestWithMipmapsAnisotropic = cast 4;
	var linearWithMipmapsAnisotropic = cast 5;
	var max = cast 6;
	public static var values = [nearest, linear, nearestWithMipmaps, linearWithMipmaps, nearestWithMipmapsAnisotropic, linearWithMipmapsAnisotropic, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "nearest": cast 0;
			case "linear": cast 1;
			case "nearestWithMipmaps": cast 2;
			case "linearWithMipmaps": cast 3;
			case "nearestWithMipmapsAnisotropic": cast 4;
			case "linearWithMipmapsAnisotropic": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
