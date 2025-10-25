package sunaba;

enum abstract RenderingDriver(Int) from Int to Int {
	var vulkan = cast 0;
	var opengl3 = cast 1;
	var d3d12 = cast 2;
	var metal = cast 3;
	public static var values = [vulkan, opengl3, d3d12, metal];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "vulkan": cast 0;
			case "opengl3": cast 1;
			case "d3d12": cast 2;
			case "metal": cast 3;
			case _: null;
		}
	}
}
