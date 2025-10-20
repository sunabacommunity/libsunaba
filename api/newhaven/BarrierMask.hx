package newhaven;

enum abstract BarrierMask(Int) from Int to Int {
	var vertex = cast 1;
	var compute = cast 2;
	var transfer = cast 4;
	var fragment = cast 8;
	var raster = cast 9;
	var allBarriers = cast 32767;
	var noBarrier = cast 32768;
	public static var values = [vertex, compute, transfer, fragment, raster, allBarriers, noBarrier];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "vertex": cast 1;
			case "compute": cast 2;
			case "transfer": cast 4;
			case "fragment": cast 8;
			case "raster": cast 9;
			case "allBarriers": cast 32767;
			case "noBarrier": cast 32768;
			case _: null;
		}
	}
}
