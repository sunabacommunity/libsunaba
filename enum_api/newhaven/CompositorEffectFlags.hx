package newhaven;

enum abstract CompositorEffectFlags(Int) from Int to Int {
	var accessResolvedColor = cast 1;
	var accessResolvedDepth = cast 2;
	var needsMotionVectors = cast 4;
	var needsRoughness = cast 8;
	var needsSeparateSpecular = cast 16;
	public static var values = [accessResolvedColor, accessResolvedDepth, needsMotionVectors, needsRoughness, needsSeparateSpecular];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "accessResolvedColor": cast 1;
			case "accessResolvedDepth": cast 2;
			case "needsMotionVectors": cast 4;
			case "needsRoughness": cast 8;
			case "needsSeparateSpecular": cast 16;
			case _: null;
		}
	}
}
