package sunaba;

enum abstract TextureParam(Int) from Int to Int {
	var albedo = cast 0;
	var metallic = cast 1;
	var roughness = cast 2;
	var emission = cast 3;
	var normal = cast 4;
	var rim = cast 5;
	var clearcoat = cast 6;
	var flowmap = cast 7;
	var ambientOcclusion = cast 8;
	var heightmap = cast 9;
	var subsurfaceScattering = cast 10;
	var subsurfaceTransmittance = cast 11;
	var backlight = cast 12;
	var refraction = cast 13;
	var detailMask = cast 14;
	var detailAlbedo = cast 15;
	var detailNormal = cast 16;
	var orm = cast 17;
	var bentNormal = cast 18;
	var max = cast 19;
	public static var values = [albedo, metallic, roughness, emission, normal, rim, clearcoat, flowmap, ambientOcclusion, heightmap, subsurfaceScattering, subsurfaceTransmittance, backlight, refraction, detailMask, detailAlbedo, detailNormal, orm, bentNormal, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "albedo": cast 0;
			case "metallic": cast 1;
			case "roughness": cast 2;
			case "emission": cast 3;
			case "normal": cast 4;
			case "rim": cast 5;
			case "clearcoat": cast 6;
			case "flowmap": cast 7;
			case "ambientOcclusion": cast 8;
			case "heightmap": cast 9;
			case "subsurfaceScattering": cast 10;
			case "subsurfaceTransmittance": cast 11;
			case "backlight": cast 12;
			case "refraction": cast 13;
			case "detailMask": cast 14;
			case "detailAlbedo": cast 15;
			case "detailNormal": cast 16;
			case "orm": cast 17;
			case "bentNormal": cast 18;
			case "max": cast 19;
			case _: null;
		}
	}
}
