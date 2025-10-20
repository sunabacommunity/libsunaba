package newhaven;

enum abstract CcdMode(Int) from Int to Int {
	var disabled = cast 0;
	var castRay = cast 1;
	var castShape = cast 2;
	public static var values = [disabled, castRay, castShape];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "castRay": cast 1;
			case "castShape": cast 2;
			case _: null;
		}
	}
}
