package newhaven;

enum abstract VaryingMode(Int) from Int to Int {
	var vertexToFragLight = cast 0;
	var fragToLight = cast 1;
	var max = cast 2;
	public static var values = [vertexToFragLight, fragToLight, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "vertexToFragLight": cast 0;
			case "fragToLight": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
