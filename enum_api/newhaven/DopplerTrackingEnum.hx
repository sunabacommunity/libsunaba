package sunaba;

enum abstract DopplerTrackingEnum(Int) from Int to Int {
	var disabled = cast 0;
	var idleStep = cast 1;
	var physicsStep = cast 2;
	public static var values = [disabled, idleStep, physicsStep];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "idleStep": cast 1;
			case "physicsStep": cast 2;
			case _: null;
		}
	}
}
