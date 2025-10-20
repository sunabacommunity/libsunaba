package newhaven;

enum abstract LoopModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var forward = cast 1;
	var pingpong = cast 2;
	var backward = cast 3;
	public static var values = [disabled, forward, pingpong, backward];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "forward": cast 1;
			case "pingpong": cast 2;
			case "backward": cast 3;
			case _: null;
		}
	}
}
