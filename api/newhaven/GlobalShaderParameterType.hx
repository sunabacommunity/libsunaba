package newhaven;

enum abstract GlobalShaderParameterType(Int) from Int to Int {
	var bool = cast 0;
	var bvec2 = cast 1;
	var bvec3 = cast 2;
	var bvec4 = cast 3;
	var int = cast 4;
	var ivec2 = cast 5;
	var ivec3 = cast 6;
	var ivec4 = cast 7;
	var rect2i = cast 8;
	var uint = cast 9;
	var uvec2 = cast 10;
	var uvec3 = cast 11;
	var uvec4 = cast 12;
	var float = cast 13;
	var vec2 = cast 14;
	var vec3 = cast 15;
	var vec4 = cast 16;
	var color = cast 17;
	var rect2 = cast 18;
	var mat2 = cast 19;
	var mat3 = cast 20;
	var mat4 = cast 21;
	var transform2d = cast 22;
	var transform = cast 23;
	var sampler2d = cast 24;
	var sampler2Darray = cast 25;
	var sampler3d = cast 26;
	var samplercube = cast 27;
	var samplerext = cast 28;
	var max = cast 29;
	public static var values = [bool, bvec2, bvec3, bvec4, int, ivec2, ivec3, ivec4, rect2i, uint, uvec2, uvec3, uvec4, float, vec2, vec3, vec4, color, rect2, mat2, mat3, mat4, transform2d, transform, sampler2d, sampler2Darray, sampler3d, samplercube, samplerext, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bool": cast 0;
			case "bvec2": cast 1;
			case "bvec3": cast 2;
			case "bvec4": cast 3;
			case "int": cast 4;
			case "ivec2": cast 5;
			case "ivec3": cast 6;
			case "ivec4": cast 7;
			case "rect2i": cast 8;
			case "uint": cast 9;
			case "uvec2": cast 10;
			case "uvec3": cast 11;
			case "uvec4": cast 12;
			case "float": cast 13;
			case "vec2": cast 14;
			case "vec3": cast 15;
			case "vec4": cast 16;
			case "color": cast 17;
			case "rect2": cast 18;
			case "mat2": cast 19;
			case "mat3": cast 20;
			case "mat4": cast 21;
			case "transform2d": cast 22;
			case "transform": cast 23;
			case "sampler2d": cast 24;
			case "sampler2Darray": cast 25;
			case "sampler3d": cast 26;
			case "samplercube": cast 27;
			case "samplerext": cast 28;
			case "max": cast 29;
			case _: null;
		}
	}
}
