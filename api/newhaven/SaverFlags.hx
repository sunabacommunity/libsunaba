package newhaven;

enum abstract SaverFlags(Int) from Int to Int {
	var none = cast 0;
	var relativePaths = cast 1;
	var bundleResources = cast 2;
	var changePath = cast 4;
	var omitEditorProperties = cast 8;
	var saveBigEndian = cast 16;
	var compress = cast 32;
	var replaceSubresourcePaths = cast 64;
	public static var values = [none, relativePaths, bundleResources, changePath, omitEditorProperties, saveBigEndian, compress, replaceSubresourcePaths];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "relativePaths": cast 1;
			case "bundleResources": cast 2;
			case "changePath": cast 4;
			case "omitEditorProperties": cast 8;
			case "saveBigEndian": cast 16;
			case "compress": cast 32;
			case "replaceSubresourcePaths": cast 64;
			case _: null;
		}
	}
}
