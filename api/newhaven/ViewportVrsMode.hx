package newhaven;

enum abstract ViewportVrsMode(Int) from Int to Int {
	var disabled = cast 0;
	var texture = cast 1;
	var xr = cast 2;
	var max = cast 3;
	public static var values = [disabled, texture, xr, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "texture": cast 1;
			case "xr": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
