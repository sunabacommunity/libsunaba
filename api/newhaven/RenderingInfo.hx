package sunaba;

enum abstract RenderingInfo(Int) from Int to Int {
	var totalObjectsInFrame = cast 0;
	var totalPrimitivesInFrame = cast 1;
	var totalDrawCallsInFrame = cast 2;
	var textureMemUsed = cast 3;
	var bufferMemUsed = cast 4;
	var videoMemUsed = cast 5;
	var pipelineCompilationsCanvas = cast 6;
	var pipelineCompilationsMesh = cast 7;
	var pipelineCompilationsSurface = cast 8;
	var pipelineCompilationsDraw = cast 9;
	var pipelineCompilationsSpecialization = cast 10;
	public static var values = [totalObjectsInFrame, totalPrimitivesInFrame, totalDrawCallsInFrame, textureMemUsed, bufferMemUsed, videoMemUsed, pipelineCompilationsCanvas, pipelineCompilationsMesh, pipelineCompilationsSurface, pipelineCompilationsDraw, pipelineCompilationsSpecialization];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "totalObjectsInFrame": cast 0;
			case "totalPrimitivesInFrame": cast 1;
			case "totalDrawCallsInFrame": cast 2;
			case "textureMemUsed": cast 3;
			case "bufferMemUsed": cast 4;
			case "videoMemUsed": cast 5;
			case "pipelineCompilationsCanvas": cast 6;
			case "pipelineCompilationsMesh": cast 7;
			case "pipelineCompilationsSurface": cast 8;
			case "pipelineCompilationsDraw": cast 9;
			case "pipelineCompilationsSpecialization": cast 10;
			case _: null;
		}
	}
}
