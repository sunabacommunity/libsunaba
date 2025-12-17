package sunaba.core;

import haxe.io.Bytes;

@:native("ByteArray")
// ByteArray is a class that represents a binary data buffer.
extern class ByteArray {
    public function new();

    @:native("new")
    public static function fromTable(table : TypedArray<Float>) : ByteArray;

    public function size() : Int;

    public function get(index : Int) : ByteObject;

    public function set(index : Int, value : ByteObject) : Void;

    public function resize(size : Int) : Void;

    public function append(value : ByteObject) : Void;

    public function insert(index : Int, value : ByteObject) : Void;

    public function toTable() : TypedArray<Float>;
}

@:deprecated("Use 'ByteArrayUtils.binaryDataToBytes' instead")
inline function BinaryDataToBytes(binaryData: ByteArray) : Bytes {
    return ByteArrayUtils.binaryDataToBytes(binaryData);
}

@:deprecated("Use 'ByteArrayUtils.bytesToBinaryData' instead")
inline function BytesToBinaryData(bytes: Bytes) : ByteArray {
    return ByteArrayUtils.bytesToBinaryData(bytes);
}

class ByteArrayUtils {
	public static inline function binaryDataToBytes(binaryData: ByteArray) : Bytes {
		var size = binaryData.size();
		var bytes = Bytes.alloc(size);
		for (i in 0...size) {
			bytes.set(i, binaryData.get(i).getInt());
		}
		return bytes;
	}

	public static inline function bytesToBinaryData(bytes: Bytes) : ByteArray {
		var binaryData = new ByteArray();
		for (i in 0...bytes.length) {
			binaryData.append(ByteObject.fromInt(bytes.get(i)));
		}
		return binaryData;
	}
}
