package newhaven;

enum abstract BlendShapeMode(Int) from Int to Int {
	var normalized = cast 0;
	var relative = cast 1;
	public static var values = [normalized, relative];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "normalized": cast 0;
			case "relative": cast 1;
			case _: null;
		}
	}
}
