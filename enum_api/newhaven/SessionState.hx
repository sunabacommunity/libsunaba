package newhaven;

enum abstract SessionState(Int) from Int to Int {
	var unknown = cast 0;
	var idle = cast 1;
	var ready = cast 2;
	var synchronized = cast 3;
	var visible = cast 4;
	var focused = cast 5;
	var stopping = cast 6;
	var lossPending = cast 7;
	var exiting = cast 8;
	public static var values = [unknown, idle, ready, synchronized, visible, focused, stopping, lossPending, exiting];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unknown": cast 0;
			case "idle": cast 1;
			case "ready": cast 2;
			case "synchronized": cast 3;
			case "visible": cast 4;
			case "focused": cast 5;
			case "stopping": cast 6;
			case "lossPending": cast 7;
			case "exiting": cast 8;
			case _: null;
		}
	}
}
