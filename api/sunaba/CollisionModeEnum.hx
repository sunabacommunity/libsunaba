package sunaba;

enum abstract CollisionModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var rigid = cast 1;
	var hideOnContact = cast 2;
	var max = cast 3;
	public static var values = [disabled, rigid, hideOnContact, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "rigid": cast 1;
			case "hideOnContact": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
