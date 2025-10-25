package sunaba;

enum abstract DropModeFlagsEnum(Int) from Int to Int {
	var disabled = cast 0;
	var onItem = cast 1;
	var inbetween = cast 2;
	public static var values = [disabled, onItem, inbetween];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "onItem": cast 1;
			case "inbetween": cast 2;
			case _: null;
		}
	}
}
