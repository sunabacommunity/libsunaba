package newhaven;

enum abstract SubViewportDebugDraw(Int) from Int to Int {
	var disabled = cast 0;
	var unshaded = cast 1;
	var lighting = cast 2;
	var overdraw = cast 3;
	var wireframe = cast 4;
	var normalBuffer = cast 5;
	var voxelGiAlbedo = cast 6;
	var voxelGiLighting = cast 7;
	var voxelGiEmission = cast 8;
	var shadowAtlas = cast 9;
	var directionalShadowAtlas = cast 10;
	var sceneLuminance = cast 11;
	var ssao = cast 12;
	var ssil = cast 13;
	var pssmSplits = cast 14;
	var decalAtlas = cast 15;
	var sdfgi = cast 16;
	var sdfgiProbes = cast 17;
	var giBuffer = cast 18;
	var disableLod = cast 19;
	var clusterOmniLights = cast 20;
	var clusterSpotLights = cast 21;
	var clusterDecals = cast 22;
	var clusterReflectionProbes = cast 23;
	var occluders = cast 24;
	var motionVectors = cast 25;
	var internalBuffer = cast 26;
	public static var values = [disabled, unshaded, lighting, overdraw, wireframe, normalBuffer, voxelGiAlbedo, voxelGiLighting, voxelGiEmission, shadowAtlas, directionalShadowAtlas, sceneLuminance, ssao, ssil, pssmSplits, decalAtlas, sdfgi, sdfgiProbes, giBuffer, disableLod, clusterOmniLights, clusterSpotLights, clusterDecals, clusterReflectionProbes, occluders, motionVectors, internalBuffer];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "unshaded": cast 1;
			case "lighting": cast 2;
			case "overdraw": cast 3;
			case "wireframe": cast 4;
			case "normalBuffer": cast 5;
			case "voxelGiAlbedo": cast 6;
			case "voxelGiLighting": cast 7;
			case "voxelGiEmission": cast 8;
			case "shadowAtlas": cast 9;
			case "directionalShadowAtlas": cast 10;
			case "sceneLuminance": cast 11;
			case "ssao": cast 12;
			case "ssil": cast 13;
			case "pssmSplits": cast 14;
			case "decalAtlas": cast 15;
			case "sdfgi": cast 16;
			case "sdfgiProbes": cast 17;
			case "giBuffer": cast 18;
			case "disableLod": cast 19;
			case "clusterOmniLights": cast 20;
			case "clusterSpotLights": cast 21;
			case "clusterDecals": cast 22;
			case "clusterReflectionProbes": cast 23;
			case "occluders": cast 24;
			case "motionVectors": cast 25;
			case "internalBuffer": cast 26;
			case _: null;
		}
	}
}
