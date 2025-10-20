package newhaven;

enum abstract TtsUtteranceEvent(Int) from Int to Int {
	var started = cast 0;
	var ended = cast 1;
	var canceled = cast 2;
	var boundary = cast 3;
	public static var values = [started, ended, canceled, boundary];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "started": cast 0;
			case "ended": cast 1;
			case "canceled": cast 2;
			case "boundary": cast 3;
			case _: null;
		}
	}
}
