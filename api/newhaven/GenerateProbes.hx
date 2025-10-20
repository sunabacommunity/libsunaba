package newhaven;

enum abstract GenerateProbes(Int) from Int to Int {
	var disabled = cast 0;
	var subdiv4 = cast 1;
	var subdiv8 = cast 2;
	var subdiv16 = cast 3;
	var subdiv32 = cast 4;
	public static var values = [disabled, subdiv4, subdiv8, subdiv16, subdiv32];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "subdiv4": cast 1;
			case "subdiv8": cast 2;
			case "subdiv16": cast 3;
			case "subdiv32": cast 4;
			case _: null;
		}
	}
}
