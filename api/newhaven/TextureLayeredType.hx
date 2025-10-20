package newhaven;

enum abstract TextureLayeredType(Int) from Int to Int {
	var layered2dArray = cast 0;
	var cubemap = cast 1;
	var cubemapArray = cast 2;
	public static var values = [layered2dArray, cubemap, cubemapArray];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "layered2dArray": cast 0;
			case "cubemap": cast 1;
			case "cubemapArray": cast 2;
			case _: null;
		}
	}
}
