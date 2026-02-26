package sunaba.spatial;

import sunaba.spatial.mesh.MeshDisplay;
import sunaba.core.ArrayList;
import sunaba.core.Rect2i;
import sunaba.core.Vector2i;
import sunaba.core.Reference;

class CharacterRig extends Behavior {
	private var _data: CharacterData;

	public var headwearAttachment: Entity;

	public var meshEntity: Entity;
	public var meshDisplay: MeshDisplay;

	public override function onInit() {
		_data = new CharacterData();
	}

	public override function onStart() {
		headwearAttachment = entity.find("Rig/Skeleton3D/Head/HeadwearAttachment");
		meshEntity = entity.find("Rig/Skeleton3D/Mesh");
		if (meshEntity != null) {
			meshDisplay = meshEntity.getComponent(MeshDisplay);
		}
	}

	public function loadCharacterData(data: CharacterData) {
		_data = data;

		for (headwear in data.headwearList) {
			var prefab = headwear.prefab;
			var prefabEntity = prefab.instance();
			if (headwearAttachment != null) {
				headwearAttachment.addChild(prefabEntity);
			}
		}

		var skinTone = data.skinTone;
		var skinToneTexture = new GradientTexture2D();
		skinToneTexture.gradient.setColor(0, skinTone);

		var faceTextureData = data.faceTexture;
		var faceTexture = combineTextures([skinToneTexture, faceTextureData.texture]);

		var clothes = data.clothes;
		var clothingTextureArray: Array<Texture2D> = [skinToneTexture];
		var clothcount = clothingTextureArray.length;
		for (clothing in clothes) {
			clothingTextureArray.push(clothing.texture);
		}
		var combinedClothingTexture = combineTextures(clothingTextureArray);

		if (meshDisplay != null) {
			var material0 = Reference.castTo(meshDisplay.getSurfaceOverideMaterial(0), BaseMaterial3D);
			var material1 = Reference.castTo(meshDisplay.getSurfaceOverideMaterial(1), BaseMaterial3D);
			var material2 = Reference.castTo(meshDisplay.getSurfaceOverideMaterial(2), BaseMaterial3D);

			material0.albedoTexture = skinToneTexture;
			material1.albedoTexture = faceTexture;
			material2.albedoTexture = combinedClothingTexture;
		}

	}

	public function combineTextures(textures: Array<Texture2D>, vertical: Bool = true) {
		if (textures.length == 0) {
			return new Texture2D();
		}

		var img0 = textures[0].getImage();
		var w = img0.getWidth();
		var h = img0.getHeight();
		var count = textures.length;

		var atlas: Image = null;
		if (vertical) {
			atlas = Image.create(w, h * count, false, img0.getFormat());
			for (i in 0...count) {
				atlas.blitRect(textures[i].getImage(), new Rect2i(0, 0, w, h), new Vector2i(w * i, 0));
			}
		}
		else {
			atlas = Image.create(w * count, h, false, img0.getFormat());
			for (i in 0...count) {
				atlas.blitRect(textures[i].getImage(), new Rect2i(0, 0, w, h), new Vector2i(w * i, 0));
			}
		}

		if (atlas != null) {
			return ImageTexture.createFromImage(atlas);
		}
		else {
			return new Texture2D();
		}
	}
}
