package sunaba;

enum abstract VisualShaderNodeTexture3DParameterTextureFilter(Int) from Int to Int {
	var _default = cast 0;
	var nearest = cast 1;
	var linear = cast 2;
	var nearestMipmap = cast 3;
	var linearMipmap = cast 4;
	var nearestMipmapAnisotropic = cast 5;
	var linearMipmapAnisotropic = cast 6;
	var max = cast 7;
	public static var values = [_default, nearest, linear, nearestMipmap, linearMipmap, nearestMipmapAnisotropic, linearMipmapAnisotropic, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "nearest": cast 1;
			case "linear": cast 2;
			case "nearestMipmap": cast 3;
			case "linearMipmap": cast 4;
			case "nearestMipmapAnisotropic": cast 5;
			case "linearMipmapAnisotropic": cast 6;
			case "max": cast 7;
			case _: null;
		}
	}
}
