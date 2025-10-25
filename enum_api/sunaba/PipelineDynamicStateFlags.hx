package sunaba;

enum abstract PipelineDynamicStateFlags(Int) from Int to Int {
	var lineWidth = cast 1;
	var depthBias = cast 2;
	var blendConstants = cast 4;
	var depthBounds = cast 8;
	var stencilCompareMask = cast 16;
	var stencilWriteMask = cast 32;
	var stencilReference = cast 64;
	public static var values = [lineWidth, depthBias, blendConstants, depthBounds, stencilCompareMask, stencilWriteMask, stencilReference];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "lineWidth": cast 1;
			case "depthBias": cast 2;
			case "blendConstants": cast 4;
			case "depthBounds": cast 8;
			case "stencilCompareMask": cast 16;
			case "stencilWriteMask": cast 32;
			case "stencilReference": cast 64;
			case _: null;
		}
	}
}
