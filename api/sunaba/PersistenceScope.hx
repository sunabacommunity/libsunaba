package sunaba;

enum abstract PersistenceScope(Int) from Int to Int {
	var systemManaged = cast 1;
	var localAnchors = cast 1000781000;
	public static var values = [systemManaged, localAnchors];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "systemManaged": cast 1;
			case "localAnchors": cast 1000781000;
			case _: null;
		}
	}
}
