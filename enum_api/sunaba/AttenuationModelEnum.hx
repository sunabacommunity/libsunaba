package sunaba;

enum abstract AttenuationModelEnum(Int) from Int to Int {
	var inverseDistance = cast 0;
	var inverseSquareDistance = cast 1;
	var logarithmic = cast 2;
	var disabled = cast 3;
	public static var values = [inverseDistance, inverseSquareDistance, logarithmic, disabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "inverseDistance": cast 0;
			case "inverseSquareDistance": cast 1;
			case "logarithmic": cast 2;
			case "disabled": cast 3;
			case _: null;
		}
	}
}
