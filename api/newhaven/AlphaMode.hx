package newhaven;

enum abstract AlphaMode(Int) from Int to Int {
	var none = cast 0;
	var bit = cast 1;
	var blend = cast 2;
	public static var values = [none, bit, blend];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "bit": cast 1;
			case "blend": cast 2;
			case _: null;
		}
	}
}
