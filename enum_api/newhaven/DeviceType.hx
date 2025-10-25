package sunaba;

enum abstract DeviceType(Int) from Int to Int {
	var other = cast 0;
	var integratedGpu = cast 1;
	var discreteGpu = cast 2;
	var virtualGpu = cast 3;
	var cpu = cast 4;
	var max = cast 5;
	public static var values = [other, integratedGpu, discreteGpu, virtualGpu, cpu, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "other": cast 0;
			case "integratedGpu": cast 1;
			case "discreteGpu": cast 2;
			case "virtualGpu": cast 3;
			case "cpu": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
