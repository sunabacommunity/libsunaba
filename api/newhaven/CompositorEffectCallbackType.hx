package newhaven;

enum abstract CompositorEffectCallbackType(Int) from Int to Int {
	var preOpaque = cast 0;
	var postOpaque = cast 1;
	var postSky = cast 2;
	var preTransparent = cast 3;
	var postTransparent = cast 4;
	var any = cast -1;
	public static var values = [preOpaque, postOpaque, postSky, preTransparent, postTransparent, any];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "preOpaque": cast 0;
			case "postOpaque": cast 1;
			case "postSky": cast 2;
			case "preTransparent": cast 3;
			case "postTransparent": cast 4;
			case "any": cast -1;
			case _: null;
		}
	}
}
