package newhaven;

enum abstract ViewportRenderInfoType(Int) from Int to Int {
	var visible = cast 0;
	var shadow = cast 1;
	var canvas = cast 2;
	var max = cast 3;
	public static var values = [visible, shadow, canvas, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "visible": cast 0;
			case "shadow": cast 1;
			case "canvas": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
