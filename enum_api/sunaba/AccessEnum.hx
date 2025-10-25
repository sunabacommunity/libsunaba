package sunaba;

enum abstract AccessEnum(Int) from Int to Int {
	var resources = cast 0;
	var userdata = cast 1;
	var filesystem = cast 2;
	public static var values = [resources, userdata, filesystem];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "resources": cast 0;
			case "userdata": cast 1;
			case "filesystem": cast 2;
			case _: null;
		}
	}
}
