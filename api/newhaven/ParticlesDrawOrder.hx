package newhaven;

enum abstract ParticlesDrawOrder(Int) from Int to Int {
	var index = cast 0;
	var lifetime = cast 1;
	var reverseLifetime = cast 2;
	var viewDepth = cast 3;
	public static var values = [index, lifetime, reverseLifetime, viewDepth];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "index": cast 0;
			case "lifetime": cast 1;
			case "reverseLifetime": cast 2;
			case "viewDepth": cast 3;
			case _: null;
		}
	}
}
