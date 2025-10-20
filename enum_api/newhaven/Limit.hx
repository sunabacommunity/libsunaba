package newhaven;

enum abstract Limit(Int) from Int to Int {
	var maxBoundUniformSets = cast 0;
	var maxFramebufferColorAttachments = cast 1;
	var maxTexturesPerUniformSet = cast 2;
	var maxSamplersPerUniformSet = cast 3;
	var maxStorageBuffersPerUniformSet = cast 4;
	var maxStorageImagesPerUniformSet = cast 5;
	var maxUniformBuffersPerUniformSet = cast 6;
	var maxDrawIndexedIndex = cast 7;
	var maxFramebufferHeight = cast 8;
	var maxFramebufferWidth = cast 9;
	var maxTextureArrayLayers = cast 10;
	var maxTextureSize1d = cast 11;
	var maxTextureSize2d = cast 12;
	var maxTextureSize3d = cast 13;
	var maxTextureSizeCube = cast 14;
	var maxTexturesPerShaderStage = cast 15;
	var maxSamplersPerShaderStage = cast 16;
	var maxStorageBuffersPerShaderStage = cast 17;
	var maxStorageImagesPerShaderStage = cast 18;
	var maxUniformBuffersPerShaderStage = cast 19;
	var maxPushConstantSize = cast 20;
	var maxUniformBufferSize = cast 21;
	var maxVertexInputAttributeOffset = cast 22;
	var maxVertexInputAttributes = cast 23;
	var maxVertexInputBindings = cast 24;
	var maxVertexInputBindingStride = cast 25;
	var minUniformBufferOffsetAlignment = cast 26;
	var maxComputeSharedMemorySize = cast 27;
	var maxComputeWorkgroupCountX = cast 28;
	var maxComputeWorkgroupCountY = cast 29;
	var maxComputeWorkgroupCountZ = cast 30;
	var maxComputeWorkgroupInvocations = cast 31;
	var maxComputeWorkgroupSizeX = cast 32;
	var maxComputeWorkgroupSizeY = cast 33;
	var maxComputeWorkgroupSizeZ = cast 34;
	var maxViewportDimensionsX = cast 35;
	var maxViewportDimensionsY = cast 36;
	var metalfxTemporalScalerMinScale = cast 46;
	var metalfxTemporalScalerMaxScale = cast 47;
	public static var values = [maxBoundUniformSets, maxFramebufferColorAttachments, maxTexturesPerUniformSet, maxSamplersPerUniformSet, maxStorageBuffersPerUniformSet, maxStorageImagesPerUniformSet, maxUniformBuffersPerUniformSet, maxDrawIndexedIndex, maxFramebufferHeight, maxFramebufferWidth, maxTextureArrayLayers, maxTextureSize1d, maxTextureSize2d, maxTextureSize3d, maxTextureSizeCube, maxTexturesPerShaderStage, maxSamplersPerShaderStage, maxStorageBuffersPerShaderStage, maxStorageImagesPerShaderStage, maxUniformBuffersPerShaderStage, maxPushConstantSize, maxUniformBufferSize, maxVertexInputAttributeOffset, maxVertexInputAttributes, maxVertexInputBindings, maxVertexInputBindingStride, minUniformBufferOffsetAlignment, maxComputeSharedMemorySize, maxComputeWorkgroupCountX, maxComputeWorkgroupCountY, maxComputeWorkgroupCountZ, maxComputeWorkgroupInvocations, maxComputeWorkgroupSizeX, maxComputeWorkgroupSizeY, maxComputeWorkgroupSizeZ, maxViewportDimensionsX, maxViewportDimensionsY, metalfxTemporalScalerMinScale, metalfxTemporalScalerMaxScale];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "maxBoundUniformSets": cast 0;
			case "maxFramebufferColorAttachments": cast 1;
			case "maxTexturesPerUniformSet": cast 2;
			case "maxSamplersPerUniformSet": cast 3;
			case "maxStorageBuffersPerUniformSet": cast 4;
			case "maxStorageImagesPerUniformSet": cast 5;
			case "maxUniformBuffersPerUniformSet": cast 6;
			case "maxDrawIndexedIndex": cast 7;
			case "maxFramebufferHeight": cast 8;
			case "maxFramebufferWidth": cast 9;
			case "maxTextureArrayLayers": cast 10;
			case "maxTextureSize1d": cast 11;
			case "maxTextureSize2d": cast 12;
			case "maxTextureSize3d": cast 13;
			case "maxTextureSizeCube": cast 14;
			case "maxTexturesPerShaderStage": cast 15;
			case "maxSamplersPerShaderStage": cast 16;
			case "maxStorageBuffersPerShaderStage": cast 17;
			case "maxStorageImagesPerShaderStage": cast 18;
			case "maxUniformBuffersPerShaderStage": cast 19;
			case "maxPushConstantSize": cast 20;
			case "maxUniformBufferSize": cast 21;
			case "maxVertexInputAttributeOffset": cast 22;
			case "maxVertexInputAttributes": cast 23;
			case "maxVertexInputBindings": cast 24;
			case "maxVertexInputBindingStride": cast 25;
			case "minUniformBufferOffsetAlignment": cast 26;
			case "maxComputeSharedMemorySize": cast 27;
			case "maxComputeWorkgroupCountX": cast 28;
			case "maxComputeWorkgroupCountY": cast 29;
			case "maxComputeWorkgroupCountZ": cast 30;
			case "maxComputeWorkgroupInvocations": cast 31;
			case "maxComputeWorkgroupSizeX": cast 32;
			case "maxComputeWorkgroupSizeY": cast 33;
			case "maxComputeWorkgroupSizeZ": cast 34;
			case "maxViewportDimensionsX": cast 35;
			case "maxViewportDimensionsY": cast 36;
			case "metalfxTemporalScalerMinScale": cast 46;
			case "metalfxTemporalScalerMaxScale": cast 47;
			case _: null;
		}
	}
}
