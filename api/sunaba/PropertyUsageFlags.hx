package sunaba;

enum abstract PropertyUsageFlags(Int) from Int to Int {
	var none = cast 0;
	var noEditor = cast 2;
	var editor = cast 4;
	var _default = cast 6;
	var internal = cast 8;
	var checkable = cast 16;
	var checked = cast 32;
	var group = cast 64;
	var category = cast 128;
	var subgroup = cast 256;
	var classIsBitfield = cast 512;
	var noInstanceState = cast 1024;
	var restartIfChanged = cast 2048;
	var scriptVariable = cast 4096;
	var storeIfNull = cast 8192;
	var updateAllIfModified = cast 16384;
	var scriptDefaultValue = cast 32768;
	var classIsEnum = cast 65536;
	var nilIsVariant = cast 131072;
	var array = cast 262144;
	var alwaysDuplicate = cast 524288;
	var neverDuplicate = cast 1048576;
	var highEndGfx = cast 2097152;
	var nodePathFromSceneRoot = cast 4194304;
	var resourceNotPersistent = cast 8388608;
	var keyingIncrements = cast 16777216;
	var deferredSetResource = cast 33554432;
	var editorInstantiateObject = cast 67108864;
	var editorBasicSetting = cast 134217728;
	var readOnly = cast 268435456;
	var secret = cast 536870912;
	public static var values = [none, noEditor, editor, _default, internal, checkable, checked, group, category, subgroup, classIsBitfield, noInstanceState, restartIfChanged, scriptVariable, storeIfNull, updateAllIfModified, scriptDefaultValue, classIsEnum, nilIsVariant, array, alwaysDuplicate, neverDuplicate, highEndGfx, nodePathFromSceneRoot, resourceNotPersistent, keyingIncrements, deferredSetResource, editorInstantiateObject, editorBasicSetting, readOnly, secret];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "noEditor": cast 2;
			case "editor": cast 4;
			case "_default": cast 6;
			case "internal": cast 8;
			case "checkable": cast 16;
			case "checked": cast 32;
			case "group": cast 64;
			case "category": cast 128;
			case "subgroup": cast 256;
			case "classIsBitfield": cast 512;
			case "noInstanceState": cast 1024;
			case "restartIfChanged": cast 2048;
			case "scriptVariable": cast 4096;
			case "storeIfNull": cast 8192;
			case "updateAllIfModified": cast 16384;
			case "scriptDefaultValue": cast 32768;
			case "classIsEnum": cast 65536;
			case "nilIsVariant": cast 131072;
			case "array": cast 262144;
			case "alwaysDuplicate": cast 524288;
			case "neverDuplicate": cast 1048576;
			case "highEndGfx": cast 2097152;
			case "nodePathFromSceneRoot": cast 4194304;
			case "resourceNotPersistent": cast 8388608;
			case "keyingIncrements": cast 16777216;
			case "deferredSetResource": cast 33554432;
			case "editorInstantiateObject": cast 67108864;
			case "editorBasicSetting": cast 134217728;
			case "readOnly": cast 268435456;
			case "secret": cast 536870912;
			case _: null;
		}
	}
}
