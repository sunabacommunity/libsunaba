package newhaven;

enum abstract BakeChannels(Int) from Int to Int {
	var albedoAlpha = cast 0;
	var normal = cast 1;
	var orm = cast 2;
	var emission = cast 3;
	public static var values = [albedoAlpha, normal, orm, emission];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "albedoAlpha": cast 0;
			case "normal": cast 1;
			case "orm": cast 2;
			case "emission": cast 3;
			case _: null;
		}
	}
}
