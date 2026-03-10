package sunaba.spatial.mesh;
import sunaba.core.ArrayList;

class CharacterMesh extends InternalMesh {
	public var material0(get, set): Material;
	function get_material0():Material {
		var args = new ArrayList();
		args.append(0);
		if (__res == null) {
			throw "we're cooked";
		}
		return new Material(__res.native.call("surface_get_material", args));
	}
	function set_material0(value:Material):Material {
		var args = new ArrayList();
		args.append(0);
		args.append(value.native);
		if (__res == null) {
			throw "we're cooked";
		}
		__res.native.call("surface_set_material", args);
		return this.get_material0();
	}

	public var material1(get, set): Material;
	function get_material1():Material {
		var args = new ArrayList();
		args.append(1);
		return new Material(__res.native.call("surface_get_material", args));
	}
	function set_material1(value:Material):Material {
		var args = new ArrayList();
		args.append(1);
		args.append(value.native);
		__res.native.call("surface_set_material", args);
		return this.get_material0();
	}

	public var material2(get, set): Material;
	function get_material2():Material {
		var args = new ArrayList();
		args.append(2);
		return new Material(__res.native.call("surface_get_material", args));
	}
	function set_material2(value:Material):Material {
		var args = new ArrayList();
		args.append(2);
		args.append(value.native);
		__res.native.call("surface_set_material", args);
		return this.get_material0();
	}
}
