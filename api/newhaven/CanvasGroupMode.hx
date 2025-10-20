package newhaven;

enum abstract CanvasGroupMode(Int) from Int to Int {
	var disabled = cast 0;
	var clipOnly = cast 1;
	var clipAndDraw = cast 2;
	var transparent = cast 3;
	public static var values = [disabled, clipOnly, clipAndDraw, transparent];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "clipOnly": cast 1;
			case "clipAndDraw": cast 2;
			case "transparent": cast 3;
			case _: null;
		}
	}
}
