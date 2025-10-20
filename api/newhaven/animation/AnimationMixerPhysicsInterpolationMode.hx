package newhaven.animation;

enum abstract AnimationMixerPhysicsInterpolationMode(Int) from Int to Int {
	var inherit = cast 0;
	var on = cast 1;
	var off = cast 2;
	public static var values = [inherit, on, off];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "inherit": cast 0;
			case "on": cast 1;
			case "off": cast 2;
			case _: null;
		}
	}
}
