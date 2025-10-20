package newhaven;

enum abstract Hinting(Int) from Int to Int {
	var none = cast 0;
	var light = cast 1;
	var normal = cast 2;
	public static var values = [none, light, normal];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "light": cast 1;
			case "normal": cast 2;
			case _: null;
		}
	}
}
