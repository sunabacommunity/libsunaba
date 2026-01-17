package sunaba;

enum abstract ArucoDictEnum(Int) from Int to Int {
	var dict4x450 = cast 1;
	var dict4x4100 = cast 2;
	var dict4x4250 = cast 3;
	var dict4x41000 = cast 4;
	var dict5x550 = cast 5;
	var dict5x5100 = cast 6;
	var dict5x5250 = cast 7;
	var dict5x51000 = cast 8;
	var dict6x650 = cast 9;
	var dict6x6100 = cast 10;
	var dict6x6250 = cast 11;
	var dict6x61000 = cast 12;
	var dict7x750 = cast 13;
	var dict7x7100 = cast 14;
	var dict7x7250 = cast 15;
	var dict7x71000 = cast 16;
	public static var values = [dict4x450, dict4x4100, dict4x4250, dict4x41000, dict5x550, dict5x5100, dict5x5250, dict5x51000, dict6x650, dict6x6100, dict6x6250, dict6x61000, dict7x750, dict7x7100, dict7x7250, dict7x71000];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "dict4x450": cast 1;
			case "dict4x4100": cast 2;
			case "dict4x4250": cast 3;
			case "dict4x41000": cast 4;
			case "dict5x550": cast 5;
			case "dict5x5100": cast 6;
			case "dict5x5250": cast 7;
			case "dict5x51000": cast 8;
			case "dict6x650": cast 9;
			case "dict6x6100": cast 10;
			case "dict6x6250": cast 11;
			case "dict6x61000": cast 12;
			case "dict7x750": cast 13;
			case "dict7x7100": cast 14;
			case "dict7x7250": cast 15;
			case "dict7x71000": cast 16;
			case _: null;
		}
	}
}
