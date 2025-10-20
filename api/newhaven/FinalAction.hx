package newhaven;

enum abstract FinalAction(Int) from Int to Int {
	var store = cast 0;
	var discard = cast 1;
	var max = cast 2;
	public static var values = [store, discard, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "store": cast 0;
			case "discard": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
