package sunaba.core;

class StringArray {
	public static function create(): TypedArray<String> {
		var variant: Variant = new VariantNative();
		return variant;
	}

	public static function fromArray(array:Array<String>):TypedArray<String> {
		var vector: TypedArray<String> = create();
		for (i in 0...array.length) {
			var value: String = array[i];
			if (value == null) {
				throw "TypedArray.fromArray: null value at index " + i;
			}
			vector.add(value);
		}
		return vector;
	}
}
