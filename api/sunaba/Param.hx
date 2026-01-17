package sunaba;

enum abstract Param(Int) from Int to Int {
	var energy = cast 0;
	var indirectEnergy = cast 1;
	var volumetricFogEnergy = cast 2;
	var specular = cast 3;
	var range = cast 4;
	var size = cast 5;
	var attenuation = cast 6;
	var spotAngle = cast 7;
	var spotAttenuation = cast 8;
	var shadowMaxDistance = cast 9;
	var shadowSplit1Offset = cast 10;
	var shadowSplit2Offset = cast 11;
	var shadowSplit3Offset = cast 12;
	var shadowFadeStart = cast 13;
	var shadowNormalBias = cast 14;
	var shadowBias = cast 15;
	var shadowPancakeSize = cast 16;
	var shadowOpacity = cast 17;
	var shadowBlur = cast 18;
	var transmittanceBias = cast 19;
	var intensity = cast 20;
	var max = cast 21;
	public static var values = [energy, indirectEnergy, volumetricFogEnergy, specular, range, size, attenuation, spotAngle, spotAttenuation, shadowMaxDistance, shadowSplit1Offset, shadowSplit2Offset, shadowSplit3Offset, shadowFadeStart, shadowNormalBias, shadowBias, shadowPancakeSize, shadowOpacity, shadowBlur, transmittanceBias, intensity, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "energy": cast 0;
			case "indirectEnergy": cast 1;
			case "volumetricFogEnergy": cast 2;
			case "specular": cast 3;
			case "range": cast 4;
			case "size": cast 5;
			case "attenuation": cast 6;
			case "spotAngle": cast 7;
			case "spotAttenuation": cast 8;
			case "shadowMaxDistance": cast 9;
			case "shadowSplit1Offset": cast 10;
			case "shadowSplit2Offset": cast 11;
			case "shadowSplit3Offset": cast 12;
			case "shadowFadeStart": cast 13;
			case "shadowNormalBias": cast 14;
			case "shadowBias": cast 15;
			case "shadowPancakeSize": cast 16;
			case "shadowOpacity": cast 17;
			case "shadowBlur": cast 18;
			case "transmittanceBias": cast 19;
			case "intensity": cast 20;
			case "max": cast 21;
			case _: null;
		}
	}
}
