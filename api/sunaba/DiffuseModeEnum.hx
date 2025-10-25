package sunaba;

enum abstract DiffuseModeEnum(Int) from Int to Int {
	var burley = cast 0;
	var lambert = cast 1;
	var lambertWrap = cast 2;
	var toon = cast 3;
	public static var values = [burley, lambert, lambertWrap, toon];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "burley": cast 0;
			case "lambert": cast 1;
			case "lambertWrap": cast 2;
			case "toon": cast 3;
			case _: null;
		}
	}
}
