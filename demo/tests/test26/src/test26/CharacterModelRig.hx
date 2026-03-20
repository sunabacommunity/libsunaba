package test26;

import sunaba.Behavior;
import sunaba.spatial.CharacterLoader;
import sunaba.spatial.SpatialTransform;

class CharacterModelRig extends Behavior {
	public override function onStart() {
		var characterLoader = getComponent(CharacterLoader);
		if (characterLoader != null) {
			var characterEntity = characterLoader.characterEntity;
			if (characterEntity != null) {
				var characterTransform = characterEntity.getComponent(SpatialTransform);
				if (characterTransform != null) {
					var rotationDegrees = characterTransform.rotationDegrees;
					rotationDegrees.y = -180.0;
					characterTransform.rotationDegrees = rotationDegrees;
					if (scene.isInEditor != true) {
						characterTransform.hide();
					}
				}
			}
		}
	}
}