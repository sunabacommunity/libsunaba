package newhaven;

enum abstract VertexFrequency(Int) from Int to Int {
	var vertex = cast 0;
	var instance = cast 1;
	public static var values = [vertex, instance];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "vertex": cast 0;
			case "instance": cast 1;
			case _: null;
		}
	}
}
