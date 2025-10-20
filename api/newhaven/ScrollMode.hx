package newhaven;

enum abstract ScrollMode(Int) from Int to Int {
	var disabled = cast 0;
	var auto = cast 1;
	var showAlways = cast 2;
	var showNever = cast 3;
	var reserve = cast 4;
	public static var values = [disabled, auto, showAlways, showNever, reserve];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "auto": cast 1;
			case "showAlways": cast 2;
			case "showNever": cast 3;
			case "reserve": cast 4;
			case _: null;
		}
	}
}
