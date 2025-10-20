package newhaven;

enum abstract GltfAccessorType(Int) from Int to Int {
	var scalar = cast 0;
	var vec2 = cast 1;
	var vec3 = cast 2;
	var vec4 = cast 3;
	var mat2 = cast 4;
	var mat3 = cast 5;
	var mat4 = cast 6;
	public static var values = [scalar, vec2, vec3, vec4, mat2, mat3, mat4];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "scalar": cast 0;
			case "vec2": cast 1;
			case "vec3": cast 2;
			case "vec4": cast 3;
			case "mat2": cast 4;
			case "mat3": cast 5;
			case "mat4": cast 6;
			case _: null;
		}
	}
}
