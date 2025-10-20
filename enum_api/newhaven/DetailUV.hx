package newhaven;

enum abstract DetailUV(Int) from Int to Int {
	var uv1 = cast 0;
	var uv2 = cast 1;
	public static var values = [uv1, uv2];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "uv1": cast 0;
			case "uv2": cast 1;
			case _: null;
		}
	}
}
