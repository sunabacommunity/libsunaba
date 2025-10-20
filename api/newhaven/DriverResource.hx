package newhaven;

enum abstract DriverResource(Int) from Int to Int {
	var logicalDevice = cast 0;
	var physicalDevice = cast 1;
	var topmostObject = cast 2;
	var commandQueue = cast 3;
	var queueFamily = cast 4;
	var texture = cast 5;
	var vulkanImageView = cast 6;
	var textureDataFormat = cast 7;
	var vulkanSampler = cast 8;
	var vulkanDescriptorSet = cast 9;
	var vulkanBuffer = cast 10;
	var vulkanComputePipeline = cast 11;
	var renderPipeline = cast 12;
	public static var values = [logicalDevice, physicalDevice, topmostObject, commandQueue, queueFamily, texture, vulkanImageView, textureDataFormat, vulkanSampler, vulkanDescriptorSet, vulkanBuffer, vulkanComputePipeline, renderPipeline];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "logicalDevice": cast 0;
			case "physicalDevice": cast 1;
			case "topmostObject": cast 2;
			case "commandQueue": cast 3;
			case "queueFamily": cast 4;
			case "texture": cast 5;
			case "vulkanImageView": cast 6;
			case "textureDataFormat": cast 7;
			case "vulkanSampler": cast 8;
			case "vulkanDescriptorSet": cast 9;
			case "vulkanBuffer": cast 10;
			case "vulkanComputePipeline": cast 11;
			case "renderPipeline": cast 12;
			case _: null;
		}
	}
}
