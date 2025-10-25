package sunaba;

enum abstract AmbientSource(Int) from Int to Int {
	var bg = cast 0;
	var disabled = cast 1;
	var color = cast 2;
	var sky = cast 3;
	public static var values = [bg, disabled, color, sky];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bg": cast 0;
			case "disabled": cast 1;
			case "color": cast 2;
			case "sky": cast 3;
			case _: null;
		}
	}
}
