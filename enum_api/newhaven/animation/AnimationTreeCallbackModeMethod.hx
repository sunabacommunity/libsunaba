package newhaven.animation;

enum abstract AnimationTreeCallbackModeMethod(Int) from Int to Int {
	var deferred = cast 0;
	var immediate = cast 1;
	public static var values = [deferred, immediate];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "deferred": cast 0;
			case "immediate": cast 1;
			case _: null;
		}
	}
}
