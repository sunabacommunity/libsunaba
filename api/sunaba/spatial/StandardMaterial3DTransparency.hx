package sunaba.spatial;

enum abstract StandardMaterial3DTransparency(Int) from Int to Int {
	var disabled = cast 0;
	var alpha = cast 1;
	var alphaScissor = cast 2;
	var alphaHash = cast 3;
	var alphaDepthPrePass = cast 4;
	var max = cast 5;
	public static var values = [disabled, alpha, alphaScissor, alphaHash, alphaDepthPrePass, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "alpha": cast 1;
			case "alphaScissor": cast 2;
			case "alphaHash": cast 3;
			case "alphaDepthPrePass": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
