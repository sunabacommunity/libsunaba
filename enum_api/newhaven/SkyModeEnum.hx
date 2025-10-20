package newhaven;

enum abstract SkyModeEnum(Int) from Int to Int {
	var lightAndSky = cast 0;
	var lightOnly = cast 1;
	var skyOnly = cast 2;
	public static var values = [lightAndSky, lightOnly, skyOnly];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "lightAndSky": cast 0;
			case "lightOnly": cast 1;
			case "skyOnly": cast 2;
			case _: null;
		}
	}
}
