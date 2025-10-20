package newhaven;

enum abstract GltfObjectModelType(Int) from Int to Int {
	var unknown = cast 0;
	var bool = cast 1;
	var float = cast 2;
	var floatArray = cast 3;
	var float2 = cast 4;
	var float3 = cast 5;
	var float4 = cast 6;
	var float2x2 = cast 7;
	var float3x3 = cast 8;
	var float4x4 = cast 9;
	var int = cast 10;
	public static var values = [unknown, bool, float, floatArray, float2, float3, float4, float2x2, float3x3, float4x4, int];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unknown": cast 0;
			case "bool": cast 1;
			case "float": cast 2;
			case "floatArray": cast 3;
			case "float2": cast 4;
			case "float3": cast 5;
			case "float4": cast 6;
			case "float2x2": cast 7;
			case "float3x3": cast 8;
			case "float4x4": cast 9;
			case "int": cast 10;
			case _: null;
		}
	}
}
