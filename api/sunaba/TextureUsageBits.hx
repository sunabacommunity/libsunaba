package sunaba;

enum abstract TextureUsageBits(Int) from Int to Int {
	var samplingBit = cast 1;
	var colorAttachmentBit = cast 2;
	var depthStencilAttachmentBit = cast 4;
	var storageBit = cast 8;
	var storageAtomicBit = cast 16;
	var cpuReadBit = cast 32;
	var canUpdateBit = cast 64;
	var canCopyFromBit = cast 128;
	var canCopyToBit = cast 256;
	var inputAttachmentBit = cast 512;
	public static var values = [samplingBit, colorAttachmentBit, depthStencilAttachmentBit, storageBit, storageAtomicBit, cpuReadBit, canUpdateBit, canCopyFromBit, canCopyToBit, inputAttachmentBit];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "samplingBit": cast 1;
			case "colorAttachmentBit": cast 2;
			case "depthStencilAttachmentBit": cast 4;
			case "storageBit": cast 8;
			case "storageAtomicBit": cast 16;
			case "cpuReadBit": cast 32;
			case "canUpdateBit": cast 64;
			case "canCopyFromBit": cast 128;
			case "canCopyToBit": cast 256;
			case "inputAttachmentBit": cast 512;
			case _: null;
		}
	}
}
