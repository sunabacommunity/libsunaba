package newhaven;

enum abstract PipelineSource(Int) from Int to Int {
	var canvas = cast 0;
	var mesh = cast 1;
	var surface = cast 2;
	var draw = cast 3;
	var specialization = cast 4;
	var max = cast 5;
	public static var values = [canvas, mesh, surface, draw, specialization, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "canvas": cast 0;
			case "mesh": cast 1;
			case "surface": cast 2;
			case "draw": cast 3;
			case "specialization": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
