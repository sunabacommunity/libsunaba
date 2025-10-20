package newhaven.spatial.xr;

enum abstract XRCamera3DKeepAspect(Int) from Int to Int {
	var width = cast 0;
	var height = cast 1;
	public static var values = [width, height];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "width": cast 0;
			case "height": cast 1;
			case _: null;
		}
	}
}
