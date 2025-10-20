package newhaven;

enum abstract ResolutionEnum(Int) from Int to Int {
	var resolution16 = cast 0;
	var resolution32 = cast 1;
	var resolution64 = cast 2;
	var resolution128 = cast 3;
	var resolution256 = cast 4;
	var resolution512 = cast 5;
	var max = cast 6;
	public static var values = [resolution16, resolution32, resolution64, resolution128, resolution256, resolution512, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "resolution16": cast 0;
			case "resolution32": cast 1;
			case "resolution64": cast 2;
			case "resolution128": cast 3;
			case "resolution256": cast 4;
			case "resolution512": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
