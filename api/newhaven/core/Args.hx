package newhaven.core;
import newhaven.core.ArrayList.ArrayListAbstract;

abstract Args from ArrayList to ArrayList {
	@:from
	public static function fromArray(array: Array<Variant>): Args {
		return ArrayListAbstract.fromArray(array);
	}

	@:from
	public inline function fromVariantArgs(...args: Variant) {
		var argList = new ArrayList();
		for (arg in args) {
			argList.append(arg);
		}
		return argList;
	}
}
