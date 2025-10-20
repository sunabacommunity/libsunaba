package newhaven;

enum abstract PathPostProcessing(Int) from Int to Int {
	var corridorfunnel = cast 0;
	var edgecentered = cast 1;
	var none = cast 2;
	public static var values = [corridorfunnel, edgecentered, none];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "corridorfunnel": cast 0;
			case "edgecentered": cast 1;
			case "none": cast 2;
			case _: null;
		}
	}
}
