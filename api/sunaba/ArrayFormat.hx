package sunaba;

enum abstract ArrayFormat(Int) from Int to Int {
	var flagFormatVersion1 = cast 0;
	var formatVertex = cast 1;
	var formatNormal = cast 2;
	var formatCustomBits = cast 3;
	var formatTangent = cast 4;
	var formatCustomMask = cast 7;
	var formatColor = cast 8;
	var formatCustom0Shift = cast 13;
	var formatCustom1Shift = cast 16;
	var formatCustom2Shift = cast 19;
	var formatCustom3Shift = cast 22;
	var compressFlagsBase = cast 25;
	var formatTexUv2 = cast 32;
	var flagFormatVersionShift = cast 35;
	var formatCustom0 = cast 64;
	var formatCustom1 = cast 128;
	var flagFormatVersionMask = cast 255;
	var formatCustom2 = cast 256;
	var formatCustom3 = cast 512;
	var formatBones = cast 1024;
	var formatWeights = cast 2048;
	var formatIndex = cast 4096;
	var flagUse2dVertices = cast 33554432;
	var flagUseDynamicUpdate = cast 67108864;
	var flagUse8BoneWeights = cast 134217728;
	var flagUsesEmptyVertexArray = cast 268435456;
	var flagCompressAttributes = cast 536870912;
	var flagFormatVersion2 = cast 34359738368;
	public static var values = [flagFormatVersion1, formatVertex, formatNormal, formatCustomBits, formatTangent, formatCustomMask, formatColor, formatCustom0Shift, formatCustom1Shift, formatCustom2Shift, formatCustom3Shift, compressFlagsBase, formatTexUv2, flagFormatVersionShift, formatCustom0, formatCustom1, flagFormatVersionMask, formatCustom2, formatCustom3, formatBones, formatWeights, formatIndex, flagUse2dVertices, flagUseDynamicUpdate, flagUse8BoneWeights, flagUsesEmptyVertexArray, flagCompressAttributes, flagFormatVersion2];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "flagFormatVersion1": cast 0;
			case "formatVertex": cast 1;
			case "formatNormal": cast 2;
			case "formatCustomBits": cast 3;
			case "formatTangent": cast 4;
			case "formatCustomMask": cast 7;
			case "formatColor": cast 8;
			case "formatCustom0Shift": cast 13;
			case "formatCustom1Shift": cast 16;
			case "formatCustom2Shift": cast 19;
			case "formatCustom3Shift": cast 22;
			case "compressFlagsBase": cast 25;
			case "formatTexUv2": cast 32;
			case "flagFormatVersionShift": cast 35;
			case "formatCustom0": cast 64;
			case "formatCustom1": cast 128;
			case "flagFormatVersionMask": cast 255;
			case "formatCustom2": cast 256;
			case "formatCustom3": cast 512;
			case "formatBones": cast 1024;
			case "formatWeights": cast 2048;
			case "formatIndex": cast 4096;
			case "flagUse2dVertices": cast 33554432;
			case "flagUseDynamicUpdate": cast 67108864;
			case "flagUse8BoneWeights": cast 134217728;
			case "flagUsesEmptyVertexArray": cast 268435456;
			case "flagCompressAttributes": cast 536870912;
			case "flagFormatVersion2": cast 34359738368;
			case _: null;
		}
	}
}
