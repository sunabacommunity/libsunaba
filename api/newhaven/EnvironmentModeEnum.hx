package newhaven;

enum abstract EnvironmentModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var scene = cast 1;
	var customSky = cast 2;
	var customColor = cast 3;
	public static var values = [disabled, scene, customSky, customColor];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "scene": cast 1;
			case "customSky": cast 2;
			case "customColor": cast 3;
			case _: null;
		}
	}
}
