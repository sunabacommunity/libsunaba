package newhaven;

enum abstract PanningSchemeEnum(Int) from Int to Int {
	var zooms = cast 0;
	var pans = cast 1;
	public static var values = [zooms, pans];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "zooms": cast 0;
			case "pans": cast 1;
			case _: null;
		}
	}
}
