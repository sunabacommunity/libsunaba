package newhaven;

enum abstract LightType(Int) from Int to Int {
	var directional = cast 0;
	var omni = cast 1;
	var spot = cast 2;
	public static var values = [directional, omni, spot];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "directional": cast 0;
			case "omni": cast 1;
			case "spot": cast 2;
			case _: null;
		}
	}
}
