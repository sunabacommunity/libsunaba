package newhaven;

enum abstract MipmapMode(Int) from Int to Int {
	var disabled = cast 0;
	var nearest = cast 1;
	var linear = cast 2;
	public static var values = [disabled, nearest, linear];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "nearest": cast 1;
			case "linear": cast 2;
			case _: null;
		}
	}
}
