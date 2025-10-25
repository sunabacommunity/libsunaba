package sunaba;

enum abstract SubViewportPositionalShadowAtlasQuad2(Int) from Int to Int {
	var disabled = cast 0;
	var subdiv1 = cast 1;
	var subdiv4 = cast 2;
	var subdiv16 = cast 3;
	var subdiv64 = cast 4;
	var subdiv256 = cast 5;
	var subdiv1024 = cast 6;
	var max = cast 7;
	public static var values = [disabled, subdiv1, subdiv4, subdiv16, subdiv64, subdiv256, subdiv1024, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "subdiv1": cast 1;
			case "subdiv4": cast 2;
			case "subdiv16": cast 3;
			case "subdiv64": cast 4;
			case "subdiv256": cast 5;
			case "subdiv1024": cast 6;
			case "max": cast 7;
			case _: null;
		}
	}
}
