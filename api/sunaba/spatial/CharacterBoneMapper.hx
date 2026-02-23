package sunaba.spatial;
import sunaba.core.Reference;

class CharacterBoneMapper extends Behavior {
	public override function onStart() {
		var resource = ResourceLoaderService.load("res://Engine/new_bone_map.tres");
		var boneMap: BoneMap = Reference.castTo(resource, BoneMap);

		var skeleton = getComponent(Skeleton);
		if (skeleton != null) {
			for (i in 0...skeleton.getBoneCount()) {
				var boneName = skeleton.getBoneName(i);
				var newBoneName = boneMap.findProfileBoneName(boneName);
				if (newBoneName != "") {
					skeleton.setBoneName(i, newBoneName);
				}
			}
		}
	}
}
