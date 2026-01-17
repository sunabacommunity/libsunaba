package sunaba;

enum abstract TextureTypeEnum(Int) from Int to Int {
	var data = cast 0;
	var color = cast 1;
	var normalMap = cast 2;
	var max = cast 3;
	public static var values = [data, color, normalMap, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "data": cast 0;
			case "color": cast 1;
			case "normalMap": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
