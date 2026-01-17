package sunaba;

enum abstract UniformType(Int) from Int to Int {
	var sampler = cast 0;
	var samplerWithTexture = cast 1;
	var texture = cast 2;
	var image = cast 3;
	var textureBuffer = cast 4;
	var samplerWithTextureBuffer = cast 5;
	var imageBuffer = cast 6;
	var uniformBuffer = cast 7;
	var storageBuffer = cast 8;
	var inputAttachment = cast 9;
	var uniformBufferDynamic = cast 10;
	var storageBufferDynamic = cast 11;
	var max = cast 12;
	public static var values = [sampler, samplerWithTexture, texture, image, textureBuffer, samplerWithTextureBuffer, imageBuffer, uniformBuffer, storageBuffer, inputAttachment, uniformBufferDynamic, storageBufferDynamic, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "sampler": cast 0;
			case "samplerWithTexture": cast 1;
			case "texture": cast 2;
			case "image": cast 3;
			case "textureBuffer": cast 4;
			case "samplerWithTextureBuffer": cast 5;
			case "imageBuffer": cast 6;
			case "uniformBuffer": cast 7;
			case "storageBuffer": cast 8;
			case "inputAttachment": cast 9;
			case "uniformBufferDynamic": cast 10;
			case "storageBufferDynamic": cast 11;
			case "max": cast 12;
			case _: null;
		}
	}
}
