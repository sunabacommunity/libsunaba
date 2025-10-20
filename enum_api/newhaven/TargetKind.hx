package newhaven;

enum abstract TargetKind(Int) from Int to Int {
	var _static = cast 0;
	var godotObject = cast 1;
	var compilerGenerated = cast 2;
	public static var values = [_static, godotObject, compilerGenerated];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_static": cast 0;
			case "godotObject": cast 1;
			case "compilerGenerated": cast 2;
			case _: null;
		}
	}
}
