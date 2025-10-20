package newhaven;

enum abstract ReflectionProbeAmbientMode(Int) from Int to Int {
	var disabled = cast 0;
	var environment = cast 1;
	var color = cast 2;
	public static var values = [disabled, environment, color];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "environment": cast 1;
			case "color": cast 2;
			case _: null;
		}
	}
}
