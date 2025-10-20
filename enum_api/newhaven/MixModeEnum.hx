package newhaven;

enum abstract MixModeEnum(Int) from Int to Int {
	var blend = cast 0;
	var add = cast 1;
	public static var values = [blend, add];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "blend": cast 0;
			case "add": cast 1;
			case _: null;
		}
	}
}
