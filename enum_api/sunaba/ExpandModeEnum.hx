package sunaba;

enum abstract ExpandModeEnum(Int) from Int to Int {
	var keepSize = cast 0;
	var ignoreSize = cast 1;
	var fitWidth = cast 2;
	var fitWidthProportional = cast 3;
	var fitHeight = cast 4;
	var fitHeightProportional = cast 5;
	public static var values = [keepSize, ignoreSize, fitWidth, fitWidthProportional, fitHeight, fitHeightProportional];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "keepSize": cast 0;
			case "ignoreSize": cast 1;
			case "fitWidth": cast 2;
			case "fitWidthProportional": cast 3;
			case "fitHeight": cast 4;
			case "fitHeightProportional": cast 5;
			case _: null;
		}
	}
}
