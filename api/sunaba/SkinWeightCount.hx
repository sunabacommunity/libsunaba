package sunaba;

enum abstract SkinWeightCount(Int) from Int to Int {
	var skin4Weights = cast 0;
	var skin8Weights = cast 1;
	public static var values = [skin4Weights, skin8Weights];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "skin4Weights": cast 0;
			case "skin8Weights": cast 1;
			case _: null;
		}
	}
}
