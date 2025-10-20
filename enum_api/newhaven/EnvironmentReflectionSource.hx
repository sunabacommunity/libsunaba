package newhaven;

enum abstract EnvironmentReflectionSource(Int) from Int to Int {
	var bg = cast 0;
	var disabled = cast 1;
	var sky = cast 2;
	public static var values = [bg, disabled, sky];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bg": cast 0;
			case "disabled": cast 1;
			case "sky": cast 2;
			case _: null;
		}
	}
}
