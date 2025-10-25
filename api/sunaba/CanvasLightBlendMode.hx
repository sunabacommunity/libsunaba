package sunaba;

enum abstract CanvasLightBlendMode(Int) from Int to Int {
	var add = cast 0;
	var sub = cast 1;
	var mix = cast 2;
	public static var values = [add, sub, mix];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "add": cast 0;
			case "sub": cast 1;
			case "mix": cast 2;
			case _: null;
		}
	}
}
