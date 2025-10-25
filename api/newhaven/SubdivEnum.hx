package sunaba;

enum abstract SubdivEnum(Int) from Int to Int {
	var subdiv64 = cast 0;
	var subdiv128 = cast 1;
	var subdiv256 = cast 2;
	var subdiv512 = cast 3;
	var max = cast 4;
	public static var values = [subdiv64, subdiv128, subdiv256, subdiv512, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "subdiv64": cast 0;
			case "subdiv128": cast 1;
			case "subdiv256": cast 2;
			case "subdiv512": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
