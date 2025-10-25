package sunaba;

enum abstract VrsTextureFormat(Int) from Int to Int {
	var unified = cast 0;
	var fragmentShadingRate = cast 1;
	var fragmentDensityMap = cast 2;
	public static var values = [unified, fragmentShadingRate, fragmentDensityMap];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unified": cast 0;
			case "fragmentShadingRate": cast 1;
			case "fragmentDensityMap": cast 2;
			case _: null;
		}
	}
}
