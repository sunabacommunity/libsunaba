package newhaven;

enum abstract OneShotRequest(Int) from Int to Int {
	var none = cast 0;
	var fire = cast 1;
	var abort = cast 2;
	var fadeOut = cast 3;
	public static var values = [none, fire, abort, fadeOut];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "fire": cast 1;
			case "abort": cast 2;
			case "fadeOut": cast 3;
			case _: null;
		}
	}
}
