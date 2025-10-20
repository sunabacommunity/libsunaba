package newhaven;

enum abstract InstanceFlags(Int) from Int to Int {
	var useBakedLight = cast 0;
	var useDynamicGi = cast 1;
	var drawNextFrameIfVisible = cast 2;
	var ignoreOcclusionCulling = cast 3;
	var max = cast 4;
	public static var values = [useBakedLight, useDynamicGi, drawNextFrameIfVisible, ignoreOcclusionCulling, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "useBakedLight": cast 0;
			case "useDynamicGi": cast 1;
			case "drawNextFrameIfVisible": cast 2;
			case "ignoreOcclusionCulling": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
