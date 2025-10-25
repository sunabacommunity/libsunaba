package sunaba;

enum abstract BakeError(Int) from Int to Int {
	var ok = cast 0;
	var noSceneRoot = cast 1;
	var foreignData = cast 2;
	var noLightmapper = cast 3;
	var noSavePath = cast 4;
	var noMeshes = cast 5;
	var meshesInvalid = cast 6;
	var cantCreateImage = cast 7;
	var userAborted = cast 8;
	var textureSizeTooSmall = cast 9;
	var lightmapTooSmall = cast 10;
	var atlasTooSmall = cast 11;
	public static var values = [ok, noSceneRoot, foreignData, noLightmapper, noSavePath, noMeshes, meshesInvalid, cantCreateImage, userAborted, textureSizeTooSmall, lightmapTooSmall, atlasTooSmall];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "ok": cast 0;
			case "noSceneRoot": cast 1;
			case "foreignData": cast 2;
			case "noLightmapper": cast 3;
			case "noSavePath": cast 4;
			case "noMeshes": cast 5;
			case "meshesInvalid": cast 6;
			case "cantCreateImage": cast 7;
			case "userAborted": cast 8;
			case "textureSizeTooSmall": cast 9;
			case "lightmapTooSmall": cast 10;
			case "atlasTooSmall": cast 11;
			case _: null;
		}
	}
}
