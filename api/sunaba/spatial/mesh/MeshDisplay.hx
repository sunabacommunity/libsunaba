package sunaba.spatial.mesh;
import sunaba.core.Variant;
import sunaba.core.Dictionary;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeObject;
import sunaba.core.VariantNative;

class MeshDisplay extends IGeometryInstance {
	public var skeleton(get, set): String;
	function get_skeleton():String {
		return node.native.get("skeleton");
	}
	function set_skeleton(value:String):String {
		node.native.set("skeleton", value);
		return value;
	}

	public var skin(get, set): Skin;
	function get_skin():Skin {
		return new Skin(node.native.get("skin"));
	}
	function set_skin(value:Skin):Skin {
		node.native.set("skin", value.native);
		return value;
	}

	public function createConvexCollision(): Void {
		node.native.call("create_convex_collision", new ArrayList());
	}

	public function createDebugTangents(): Void {
		node.native.call("create_debug_tangents", new ArrayList());
	}

	public function findBlendShapeByName(name: String): Int {
		var args = new ArrayList();
		args.append(name);
		return node.native.call("find_blend_shape_by_name", args);
	}

	public function getBlendShapeCount(): Int {
		return node.native.call("get_blend_shape_count", new ArrayList());
	}

	public function getBlendShapeValue(index: Int): Float {
		var args = new ArrayList();
		args.append(index);
		return node.native.call("get_blend_shape_value", args);
	}

	public function getSurfaceOverrideCount(): Int {
		return node.native.call("get_surface_override_count", new ArrayList());
	}

	public function getSurfaceOverideMaterial(surface: Int): Material {
		return new Material(node.native.call("get_surface_overide_material", new ArrayList()));
	}

	public function setBlendShapeValue(index: Int, value: Float): Void {
		var args = new ArrayList();
		args.append(index);
		args.append(value);
		node.native.call("set_blend_shape_value", args);
	}

	public function setMesh(res: Resource): Void {
		if (res == null) {
			node.native.set("mesh", new VariantNative());
			return;
		}
		if (!res.native.isClass("Mesh")) {
			throw "Invalid mesh";
		}
		node.native.set("mesh", res.native);
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("skeleton", skeleton);
		//data.set("skin", DataUtils.varToDict(skin.native));

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		skeleton = data.get("skeleton");
		/*var skinData: Dictionary = data.get("skin");
		skin = new Skin(DataUtils.dictToVar(skinData));
		var skinProperties: Dictionary = skinData.get("value").toDictionary().get("properties");
		var bindDataMap: Map<Int, Map<String, Variant>> = new Map();
		for (propKeyv in skinProperties.keys().toArray()) {
            var propKey: String = propKeyv;
			trace(propKey);
            if (StringTools.startsWith(propKey, "bind/")) {
                var parts = propKey.split("/");
                var bindIdx = Std.parseInt(parts[1]);
                var propName = parts[2];

                if (!bindDataMap.exists(bindIdx)) {
                    bindDataMap.set(bindIdx, new Map());
                }

				trace("bindIdx: " + bindIdx + " propName: " + propName + " data: " + JSON.stringify(skinProperties.get(propKey).toDictionary().get("value")));
                bindDataMap.get(bindIdx).set(propName,
                    DataUtils.dictToVar(skinProperties.get(propKey).toDictionary()));
            }
        }*/

		/*for (bindIdx in bindDataMap.keys()) {
			var bindData = bindDataMap.get(bindIdx);
			var bone = bindData.get("bone");
			var pose = bindData.get("pose");

			skin.addBind(bone.toInt(), pose);
		}*//*
		for (bindIdx in bindDataMap.keys()) {
			var bindData = bindDataMap.get(bindIdx);
			var bone = bindData.get("bone");
			var pose = bindData.get("pose");
			var name: String = bindData.get("name");

			skin.setBindName(bindIdx, name);
			skin.setBindBone(bindIdx, bone);
			skin.setBindPose(bindIdx, pose);
		}*/
	}

	public override function onInit() {
		editorIconPath = "studio://icons/16/cushion-gray.png";
		node = new Node(new NativeObject("MeshInstance3D"));
		node.name = "MeshDisplay";

		var transform: SpatialTransform = getComponent(SpatialTransform);
		if (transform != null) {
			if (transform.node != null) {
				if (!transform.node.isNull()) {
					if (!transform.node.native.isNull()) {
						transform.node.addChild(node);
					}
				}
			}
		}
	}

	public override function onEnd() {
		node.queueFree();
		node = null;
	}
}
