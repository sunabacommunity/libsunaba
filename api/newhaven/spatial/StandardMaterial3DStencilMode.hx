package newhaven.spatial;

enum abstract StandardMaterial3DStencilMode(Int) from Int to Int {
	var disabled = cast 0;
	var outline = cast 1;
	var xray = cast 2;
	var custom = cast 3;
	public static var values = [disabled, outline, xray, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "outline": cast 1;
			case "xray": cast 2;
			case "custom": cast 3;
			case _: null;
		}
	}
}
