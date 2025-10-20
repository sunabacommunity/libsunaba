package newhaven;

enum abstract AudioStreamGeneratorMixRate(Int) from Int to Int {
	var output = cast 0;
	var input = cast 1;
	var custom = cast 2;
	var max = cast 3;
	public static var values = [output, input, custom, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "output": cast 0;
			case "input": cast 1;
			case "custom": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
