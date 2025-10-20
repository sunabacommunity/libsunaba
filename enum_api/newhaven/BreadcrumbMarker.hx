package newhaven;

enum abstract BreadcrumbMarker(Int) from Int to Int {
	var none = cast 0;
	var reflectionProbes = cast 65536;
	var skyPass = cast 131072;
	var lightmapperPass = cast 196608;
	var shadowPassDirectional = cast 262144;
	var shadowPassCube = cast 327680;
	var opaquePass = cast 393216;
	var alphaPass = cast 458752;
	var transparentPass = cast 524288;
	var postProcessingPass = cast 589824;
	var blitPass = cast 655360;
	var uiPass = cast 720896;
	var debugPass = cast 786432;
	public static var values = [none, reflectionProbes, skyPass, lightmapperPass, shadowPassDirectional, shadowPassCube, opaquePass, alphaPass, transparentPass, postProcessingPass, blitPass, uiPass, debugPass];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "reflectionProbes": cast 65536;
			case "skyPass": cast 131072;
			case "lightmapperPass": cast 196608;
			case "shadowPassDirectional": cast 262144;
			case "shadowPassCube": cast 327680;
			case "opaquePass": cast 393216;
			case "alphaPass": cast 458752;
			case "transparentPass": cast 524288;
			case "postProcessingPass": cast 589824;
			case "blitPass": cast 655360;
			case "uiPass": cast 720896;
			case "debugPass": cast 786432;
			case _: null;
		}
	}
}
