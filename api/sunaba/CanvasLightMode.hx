package sunaba;

enum abstract CanvasLightMode(Int) from Int to Int {
	var point = cast 0;
	var directional = cast 1;
	public static var values = [point, directional];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "point": cast 0;
			case "directional": cast 1;
			case _: null;
		}
	}
}
