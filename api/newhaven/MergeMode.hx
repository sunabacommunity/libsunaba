package newhaven;

enum abstract MergeMode(Int) from Int to Int {
	var disable = cast 0;
	var ends = cast 1;
	var all = cast 2;
	public static var values = [disable, ends, all];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disable": cast 0;
			case "ends": cast 1;
			case "all": cast 2;
			case _: null;
		}
	}
}
