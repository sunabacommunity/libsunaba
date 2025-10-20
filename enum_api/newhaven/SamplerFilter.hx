package newhaven;

enum abstract SamplerFilter(Int) from Int to Int {
	var nearest = cast 0;
	var linear = cast 1;
	public static var values = [nearest, linear];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "nearest": cast 0;
			case "linear": cast 1;
			case _: null;
		}
	}
}
