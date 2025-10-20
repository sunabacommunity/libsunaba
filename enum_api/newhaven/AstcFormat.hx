package newhaven;

enum abstract AstcFormat(Int) from Int to Int {
	var format4x4 = cast 0;
	var format8x8 = cast 1;
	public static var values = [format4x4, format8x8];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "format4x4": cast 0;
			case "format8x8": cast 1;
			case _: null;
		}
	}
}
