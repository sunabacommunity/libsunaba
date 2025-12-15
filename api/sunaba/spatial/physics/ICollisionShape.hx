package sunaba.spatial.physics;

import sunaba.core.Dictionary;
import sunaba.core.native.NativeReference;

abstract class ICollisionShape extends Behavior {
	public var native: NativeReference;

	public var customSolverBias(get, set): Float;
	function get_customSolverBias():Float {
		return native.get("custom_solver_bias");
	}
	function set_customSolverBias(value:Float):Float {
		native.set("custom_solver_bias", value);
		return value;
	}

	public var margin(get, set): Float;
	function get_margin():Float {
		return native.get("margin");
	}
	function set_margin(value:Float):Float {
		native.set("margin", value);
		return value;
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("customSolverBias", customSolverBias);
		data.set("margin", margin);

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		customSolverBias = data.get("customSolverBias");
		margin = data.get("margin");
	}
}
