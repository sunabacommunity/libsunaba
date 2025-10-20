package newhaven;

enum abstract ReflectionProbeUpdateMode(Int) from Int to Int {
	var once = cast 0;
	var always = cast 1;
	public static var values = [once, always];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "once": cast 0;
			case "always": cast 1;
			case _: null;
		}
	}
}
