package sunaba.animation;

enum abstract AnimationTreeCallbackModeDiscrete(Int) from Int to Int {
	var dominant = cast 0;
	var recessive = cast 1;
	var forceContinuous = cast 2;
	public static var values = [dominant, recessive, forceContinuous];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "dominant": cast 0;
			case "recessive": cast 1;
			case "forceContinuous": cast 2;
			case _: null;
		}
	}
}
