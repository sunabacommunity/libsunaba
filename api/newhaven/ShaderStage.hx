package newhaven;

enum abstract ShaderStage(Int) from Int to Int {
	var vertex = cast 0;
	var fragment = cast 1;
	var tesselationControl = cast 2;
	var tesselationEvaluation = cast 3;
	var compute = cast 4;
	var max = cast 5;
	var tesselationEvaluationBit = cast 8;
	var computeBit = cast 16;
	public static var values = [vertex, fragment, tesselationControl, tesselationEvaluation, compute, max, tesselationEvaluationBit, computeBit];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "vertex": cast 0;
			case "fragment": cast 1;
			case "tesselationControl": cast 2;
			case "tesselationEvaluation": cast 3;
			case "compute": cast 4;
			case "max": cast 5;
			case "tesselationEvaluationBit": cast 8;
			case "computeBit": cast 16;
			case _: null;
		}
	}
}
