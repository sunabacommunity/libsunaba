package newhaven;

enum abstract ScreenSpaceAAEnum(Int) from Int to Int {
	var disabled = cast 0;
	var fxaa = cast 1;
	var smaa = cast 2;
	var max = cast 3;
	public static var values = [disabled, fxaa, smaa, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "fxaa": cast 1;
			case "smaa": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
