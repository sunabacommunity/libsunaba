package sunaba;

enum abstract SubEmitterModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var constant = cast 1;
	var atEnd = cast 2;
	var atCollision = cast 3;
	var atStart = cast 4;
	var max = cast 5;
	public static var values = [disabled, constant, atEnd, atCollision, atStart, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "constant": cast 1;
			case "atEnd": cast 2;
			case "atCollision": cast 3;
			case "atStart": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
