package newhaven;

enum abstract PolygonCullMode(Int) from Int to Int {
	var disabled = cast 0;
	var front = cast 1;
	var back = cast 2;
	public static var values = [disabled, front, back];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "front": cast 1;
			case "back": cast 2;
			case _: null;
		}
	}
}
