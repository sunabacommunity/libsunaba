package newhaven;

enum abstract ReplicationMode(Int) from Int to Int {
	var never = cast 0;
	var always = cast 1;
	var onChange = cast 2;
	public static var values = [never, always, onChange];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "never": cast 0;
			case "always": cast 1;
			case "onChange": cast 2;
			case _: null;
		}
	}
}
