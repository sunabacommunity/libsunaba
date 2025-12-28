package sunaba.spatial;

import sunaba.core.native.NativeObject;
import sunaba.core.Dictionary;
import sunaba.core.Quaternion;
import sunaba.core.Vector3;
import sunaba.core.Variant;
import sunaba.core.Transform3D;
import sunaba.core.TypedArray;
import sunaba.core.ArrayList;

class Skeleton extends Behavior {
    public var node: Node;

    public var animatePhysicalBones(get, set): Bool;
	function get_animatePhysicalBones():Bool {
		return node.native.get("animate_physical_bones");
	}
	function set_animatePhysicalBones(value:Bool):Bool {
		node.native.set("animate_physical_bones", value);
		return value;
	}

	public var modifierCallbackModeProcess(get, set): Int;
	function get_modifierCallbackModeProcess():Int {
		return node.native.get("modifier_callback_mode_process");
	}
	function set_modifierCallbackModeProcess(value:Int):Int {
		node.native.set("modifier_callback_mode_process", value);
		return value;
	}

	public var motionScale(get, set): Float;
	function get_motionScale():Float {
		return node.native.get("motion_scale");
	}
	function set_motionScale(value:Float):Float {
		node.native.set("motion_scale", value);
		return value;
	}

	public var showRestOnly(get, set): Bool;
	function get_showRestOnly():Bool {
		return node.native.get("show_rest_only");
	}
	function set_showRestOnly(value:Bool):Bool {
		node.native.set("show_rest_only", value);
		return value;
	}

    public function addBone(name: String): Int {
        var args = new ArrayList();
        args.append(name);
        return node.native.call("add_bone", args);
    }

    public function advance(delta: Float) {
        var args = new ArrayList();
        args.append(delta);
        node.native.call("advance", args);
    }

    public function clearBones() {
        var args = new ArrayList();
        node.native.call("clear_bones", args);
    }

    public function clearBonesGlobalPoseOverride() {
        var args = new ArrayList();
        node.native.call("clear_bones_global_pose_override", args);
    }

    public function findBone(name: String): Int {
        var args = new ArrayList();
        args.append(name);
        return node.native.call("find_bone", args);
    }

    public function forceUpdateAllBoneTransforms() {
        var args = new ArrayList();
        node.native.call("force_update_all_bone_transforms", args);
    }

    public function forceUpdateBoneChildTransform(boneIdx: Int) {
        var args = new ArrayList();
        args.append(boneIdx);
        node.native.call("force_update_bone_child_transform", args);
    }

    public function getBoneChildren(boneIdx: Int): TypedArray<Int> {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_children", args).toIntArray32();
    }

    public function getBoneCount(): Int {
        var args = new ArrayList();
        return node.native.call("get_bone_count", args);
    }

    public function getBoneGlobalPose(boneIdx: Int): Transform3D {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_global_pose", args);
    }

    public function getBoneGlobalPoseNoOverride(boneIdx: Int): Transform3D {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_global_pose_no_override", args);
    }

    public function getBoneGlobalPoseOverride(boneIdx: Int): Transform3D {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_global_pose_override", args);
    }

    public function getBoneGlobalRest(boneIdx: Int): Transform3D {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_global_rest", args);
    }

    public function getBoneMeta(boneIdx: Int, key: String): Variant {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(key);
        return node.native.call("get_bone_meta", args);
    }

    public function getBoneMetaList(boneIdx: Int): ArrayList {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_meta_list", args);
    }

    public function getBoneName(boneIdx: Int): String {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_name", args);
    }

    public function getBoneParent(boneIdx: Int): Int {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_parent", args);
    }

    public function getBonePose(boneIdx: Int): Transform3D {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_pose", args);
    }

    public function getBonePosePosition(boneIdx: Int): Vector3 {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_pose_position", args);
    }

    public function getBonePoseRotation(boneIdx: Int): Quaternion {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_pose_rotation", args);
    }

    public function getBonePoseScale(boneIdx: Int): Vector3 {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_pose_scale", args);
    }

    public function getBoneRest(boneIdx: Int): Transform3D {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("get_bone_rest", args);
    }

    public function getConcatenatedBoneNames(): String {
        var args = new ArrayList();
        return node.native.call("get_concatenated_bone_names", args);
    }

    public function getParentlessBones(): TypedArray<Int> {
        var args = new ArrayList();
        return node.native.call("get_parentless_bones", args).toIntArray32();
    }

    public function getVersion(): Int {
        var args = new ArrayList();
        return node.native.call("get_version", args);
    }

    public function hasBoneMeta(boneIdx: Int, key: String): Bool {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(key);
        return node.native.call("has_bone_meta", args);
    }

    public function isBoneEnabled(boneIdx: Int): Bool {
        var args = new ArrayList();
        args.append(boneIdx);
        return node.native.call("is_bone_enabled", args);
    }

    public function localizeRests(): Void {
        var args = new ArrayList();
        node.native.call("localize_rests", args);
    }

    public function physicalBonesAddCollisionException(exception: Variant) {
        var args = new ArrayList();
        args.append(exception);
        node.native.call("physical_bones_add_collision_exception", args);
    }

    public function physicalBonesRemoveCollisionException(exception: Variant) {
        var args = new ArrayList();
        args.append(exception);
        node.native.call("physical_bones_remove_collision_exception", args);
    }

    public function physicalBonesStartSimulation(?bones: ArrayList) {
        var args = new ArrayList();
        if (bones != null) {
            args.append(bones);
        }
        node.native.call("physical_bones_start_simulation", args);
    }

    public function physicalBonesStopSimulation() {
        var args = new ArrayList();
        node.native.call("physical_bones_stop_simulation", args);
    }

    public function registerSkin(skin: Skin) {
        var args = new ArrayList();
        args.append(skin.native);
        return new SkinReference(node.native.call("register_skin", args));
    }

    public function resetBonePose(boneIdx: Int) {
        var args = new ArrayList();
        args.append(boneIdx);
        node.native.call("reset_bone_pose", args);
    }

    public function resetBonePoses() {
        var args = new ArrayList();
        node.native.call("reset_bone_poses", args);
    }

    public function setBoneEnabled(boneIdx: Int, ?enabled: Bool) {
        var args = new ArrayList();
        args.append(boneIdx);
        if (enabled != null) {
            args.append(enabled);
        }
        node.native.call("set_bone_enabled", args);
    }

    public function setBoneGlobalPose(boneIdx: Int, pose: Transform3D) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(pose);
        node.native.call("set_bone_global_pose", args);
    }

    public function setBoneGlobalPoseOverride(boneIdx: Int, pose: Transform3D) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(pose);
        node.native.call("set_bone_global_pose_override", args);
    }

    public function setBoneMeta(boneIdx: Int, key: String, value: Variant) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(key);
        args.append(value);
        node.native.call("set_bone_meta", args);
    }

    public function setBoneName(boneIdx: Int, name: String) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(name);
        node.native.call("set_bone_name", args);
    }

    public function setBoneParent(boneIdx: Int, parentIdx: Int) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(parentIdx);
        node.native.call("set_bone_parent", args);
    }

    public function setBonePose(boneIdx: Int, pose: Transform3D) {
        var args  = new ArrayList();
        args.append(boneIdx);
        args.append(pose);
        node.native.call("set_bone_pose", args);
    }

    public function setBonePosePosition(boneIdx: Int, position: Vector3) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(position);
        node.native.call("set_bone_pose_position", args);
    }

    public function setBonePoseRotation(boneIdx: Int, rotation: Quaternion) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(rotation);
        node.native.call("set_bone_pose_rotation", args);
    }

    public function setBonePoseScale(boneIdx: Int, scale: Vector3) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(scale);
        node.native.call("set_bone_pose_scale", args);
    }

    public function setBoneRest(boneIdx: Int, rest: Transform3D) {
        var args = new ArrayList();
        args.append(boneIdx);
        args.append(rest);
        node.native.call("set_bone_rest", args);
    }

    public function unparentBoneAndRest(boneIdx: Int) {
        var args = new ArrayList();
        args.append(boneIdx);
        node.native.call("unparent_bone_and_rest", args);
    }

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("animatePhysicalBones", animatePhysicalBones);
        data.set("modifierCallbackModeProcess", modifierCallbackModeProcess);
        data.set("motionScale", motionScale);
        data.set("showRestOnly", showRestOnly);

        var propertyList = node.native.getPropertyList();
        var boneProperties = new Dictionary();
        for (i in 0...propertyList.size()) {
			var prop: Dictionary = propertyList.get(i);
            var name: String = prop.get("name");
            if (StringTools.startsWith(name, "bones/")) {
                boneProperties.set(name, DataUtils.varToDict(node.native.get(name)));
            }
        }
        data.set("boneProperties", boneProperties);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        animatePhysicalBones = data.get("animatePhysicalBones");
        modifierCallbackModeProcess = data.get("modifierCallbackModeProcess");
        motionScale = data.get("motionScale");
        showRestOnly = data.get("showRestOnly");

        var boneProperties: Dictionary = data.get("boneProperties");
        var boneDataMap: Map<Int, Map<String, Variant>> = new Map();
        for (propKeyv in boneProperties.keys().toArray()) {
            var propKey: String = propKeyv;
            trace(propKey);
            var parts = propKey.split("/");
            var boneIdx = Std.parseInt(parts[1]);
            var propName = parts[2];

            if (!boneDataMap.exists(boneIdx)) {
                boneDataMap.set(boneIdx, new Map());
            }

            trace("boneIdx: " + boneIdx + " propName: " + propName + " data: " + JSON.stringify(boneProperties.get(propKey).toDictionary().get("value")));
            boneDataMap.get(boneIdx).set(propName, 
                DataUtils.dictToVar(boneProperties.get(propKey).toDictionary()));
        }

        for (boneIdx in boneDataMap.keys()) {
            var bone = boneDataMap.get(boneIdx);
            
            var name = bone.get("name");
            addBone(name);
            
            var parent = bone.get("parent");
            setBoneParent(boneIdx, parent);

            var rest = bone.get("rest");
            setBoneRest(boneIdx, rest);

            var position = bone.get("position");
            setBonePosePosition(boneIdx, position);

            var rotation = bone.get("rotation");
            setBonePoseRotation(boneIdx, rotation);

            var scale = bone.get("scale");
            setBonePoseScale(boneIdx, scale);

            var enabled = bone.get("enabled");
            setBoneEnabled(enabled);
        }
    }

    public override function onInit() {
        node = new Node(new NativeObject("Skeleton3D"));
        
        var transform = getComponent(SpatialTransform);
        if (transform != null) {
            transform.node = node;
        }
    }

    public override function onStart() {
        if (node.getParent().isNull()) {
            var transform = getComponent(SpatialTransform);
            if (transform != null) {
                transform.node = node;
            }
        }
    }
}
