package sunaba.ui;

enum abstract ControlTextureFilter(Int) from Int to Int {
	var parentNode = cast 0;
	var nearest = cast 1;
	var linear = cast 2;
	var nearestWithMipmaps = cast 3;
	var linearWithMipmaps = cast 4;
	var nearestWithMipmapsAnisotropic = cast 5;
	var linearWithMipmapsAnisotropic = cast 6;
	var max = cast 7;
	public static var values = [parentNode, nearest, linear, nearestWithMipmaps, linearWithMipmaps, nearestWithMipmapsAnisotropic, linearWithMipmapsAnisotropic, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "parentNode": cast 0;
			case "nearest": cast 1;
			case "linear": cast 2;
			case "nearestWithMipmaps": cast 3;
			case "linearWithMipmaps": cast 4;
			case "nearestWithMipmapsAnisotropic": cast 5;
			case "linearWithMipmapsAnisotropic": cast 6;
			case "max": cast 7;
			case _: null;
		}
	}
}
