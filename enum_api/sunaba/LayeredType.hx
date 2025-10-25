package sunaba;

enum abstract LayeredType(Int) from Int to Int {
	var type2dArray = cast 0;
	var cubemap = cast 1;
	var cubemapArray = cast 2;
	public static var values = [type2dArray, cubemap, cubemapArray];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "type2dArray": cast 0;
			case "cubemap": cast 1;
			case "cubemapArray": cast 2;
			case _: null;
		}
	}
}
