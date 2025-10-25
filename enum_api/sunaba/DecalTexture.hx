package sunaba;

enum abstract DecalTexture(Int) from Int to Int {
	var albedo = cast 0;
	var normal = cast 1;
	var orm = cast 2;
	var emission = cast 3;
	var max = cast 4;
	public static var values = [albedo, normal, orm, emission, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "albedo": cast 0;
			case "normal": cast 1;
			case "orm": cast 2;
			case "emission": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
