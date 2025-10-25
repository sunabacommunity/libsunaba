package sunaba;

enum abstract BlendFactor(Int) from Int to Int {
	var zero = cast 0;
	var one = cast 1;
	var srcColor = cast 2;
	var oneMinusSrcColor = cast 3;
	var dstColor = cast 4;
	var oneMinusDstColor = cast 5;
	var srcAlpha = cast 6;
	var oneMinusSrcAlpha = cast 7;
	var dstAlpha = cast 8;
	var oneMinusDstAlpha = cast 9;
	var constantColor = cast 10;
	var oneMinusConstantColor = cast 11;
	var constantAlpha = cast 12;
	var oneMinusConstantAlpha = cast 13;
	var srcAlphaSaturate = cast 14;
	var src1Color = cast 15;
	var oneMinusSrc1Color = cast 16;
	var src1Alpha = cast 17;
	var oneMinusSrc1Alpha = cast 18;
	var max = cast 19;
	public static var values = [zero, one, srcColor, oneMinusSrcColor, dstColor, oneMinusDstColor, srcAlpha, oneMinusSrcAlpha, dstAlpha, oneMinusDstAlpha, constantColor, oneMinusConstantColor, constantAlpha, oneMinusConstantAlpha, srcAlphaSaturate, src1Color, oneMinusSrc1Color, src1Alpha, oneMinusSrc1Alpha, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "zero": cast 0;
			case "one": cast 1;
			case "srcColor": cast 2;
			case "oneMinusSrcColor": cast 3;
			case "dstColor": cast 4;
			case "oneMinusDstColor": cast 5;
			case "srcAlpha": cast 6;
			case "oneMinusSrcAlpha": cast 7;
			case "dstAlpha": cast 8;
			case "oneMinusDstAlpha": cast 9;
			case "constantColor": cast 10;
			case "oneMinusConstantColor": cast 11;
			case "constantAlpha": cast 12;
			case "oneMinusConstantAlpha": cast 13;
			case "srcAlphaSaturate": cast 14;
			case "src1Color": cast 15;
			case "oneMinusSrc1Color": cast 16;
			case "src1Alpha": cast 17;
			case "oneMinusSrc1Alpha": cast 18;
			case "max": cast 19;
			case _: null;
		}
	}
}
