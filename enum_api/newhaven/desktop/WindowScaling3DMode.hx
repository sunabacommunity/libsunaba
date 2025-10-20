package newhaven.desktop;

enum abstract WindowScaling3DMode(Int) from Int to Int {
	var bilinear = cast 0;
	var fsr = cast 1;
	var fsr2 = cast 2;
	var metalfxSpatial = cast 3;
	var metalfxTemporal = cast 4;
	var max = cast 5;
	public static var values = [bilinear, fsr, fsr2, metalfxSpatial, metalfxTemporal, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bilinear": cast 0;
			case "fsr": cast 1;
			case "fsr2": cast 2;
			case "metalfxSpatial": cast 3;
			case "metalfxTemporal": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
