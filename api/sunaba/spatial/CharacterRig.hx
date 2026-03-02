package sunaba.spatial;

import sunaba.spatial.mesh.MeshDisplay;
import sunaba.core.ArrayList;
import sunaba.core.Rect2i;
import sunaba.core.Vector2i;
import sunaba.core.Reference;
import sunaba.core.native.NativeObject;

class CharacterRig extends Behavior {
	private var _data: CharacterData;

	public var headwearAttachment: Entity;

	public var meshEntity: Entity;
	public var meshDisplay: MeshDisplay;

	public override function onInit() {
		_data = new CharacterData();
	}

	public override function onStart() {
		headwearAttachment = entity.find("/Rig/Skeleton3D/Head/HeadwearAttachment");
		meshEntity = entity.find("/Rig/Skeleton3D/Mesh");
		trace(meshEntity == null);
		if (meshEntity != null) {
			meshDisplay = meshEntity.getComponent(MeshDisplay);
			trace(meshDisplay == null);
		}
	}

	public function loadCharacterData(data: CharacterData) {
		_data = data;

		for (headwear in data.headwearList) {
			var prefabPath = headwear.prefab;
			var prefab = new Prefab();
			prefab.load(prefabPath);
			var prefabEntity = prefab.instance();
			if (headwearAttachment != null) {
				headwearAttachment.addChild(prefabEntity);
			}
		}

		var grad = new Gradient();
		grad.setColor(0, data.skinTone);
		grad.setColor(1, data.skinTone);

		var skinTone = data.skinTone;
		var skinToneTextureOG = new GradientTexture2D();
		skinToneTextureOG.gradient = grad;
		skinToneTextureOG.gradient.setColor(0, skinTone);
		var skinToneTexture = ImageTexture.createFromImage(skinToneTextureOG.getImage());

		var faceTextureData = data.faceTexture;
		var faceTextureSize = faceTextureData.texture.getSize();
		skinToneTexture.setSizeOverride(new Vector2i(Std.int(faceTextureSize.x), Std.int(faceTextureSize.y)));
		var faceTexture = combineTextures([skinToneTexture, faceTextureData.texture], new Vector2i(Std.int(faceTextureSize.x), Std.int(faceTextureSize.y)));

		var clothes = data.clothes;
		var clothingTextureArray: Array<Texture2D> = [skinToneTexture];
		var clothcount = clothingTextureArray.length;
		for (clothing in clothes) {
			clothingTextureArray.push(clothing.texture);
		}
		var clothingTextureSize = clothingTextureArray[0].getSize();
		var combinedClothingTexture = combineTextures(clothingTextureArray, new Vector2i(Std.int(faceTextureSize.x), Std.int(faceTextureSize.y)));

		if (meshDisplay != null) {
			var material0 = new StandardMaterial3D();
			var material1 = new StandardMaterial3D();
			var material2 = new StandardMaterial3D();// Reference.castTo(meshDisplay.getSurfaceOverideMaterial(2), BaseMaterial3D);
			trace(material0.isNull());

			material0.albedoTexture = combineTextures([skinToneTexture], new Vector2i(Std.int(faceTextureSize.x), Std.int(faceTextureSize.y)));
			material1.albedoTexture = faceTexture;
			material2.albedoTexture = combinedClothingTexture;

			meshDisplay.setSurfaceOverrideMaterial(0, material0);
			meshDisplay.setSurfaceOverrideMaterial(1, material1);
			meshDisplay.setSurfaceOverrideMaterial(2, material2);
			trace("");
		}
		trace("");
	}

	public function combineTextures(textures : Array<Texture2D>, size: Vector2i) : Texture2D
	{
		/*if (textures.length == 0)
			return ImageTexture.createFromImage(
				Image.create(1, 1, false, Format.rf)
			);

		// 1. Duplicate the first image so we inherit its size/format.
		var dst : Image = Reference.castTo(textures[0].getImage().duplicate(), Image);
		dst.convert(Format.dxt1);   // ensure 8-bit RGBA
		dst.clearMipmaps();              // strip mips → blendRect will work

		var w : Int = dst.getWidth();
		var h : Int = dst.getHeight();

		// 2. Composite every additional texture on top.
		for (i in 1...textures.length)
		{
			var src : Image = textures[i].getImage();
			src.convert(Format.rf);
			src.clearMipmaps();
			dst.blendRect(src, new Rect2i(0, 0, w, h), new Vector2i(0, 0));
		}

		return ImageTexture.createFromImage(dst);*/

		var vp = new SubViewport();

		vp.size = new Vector2i(Std.int(size.x), Std.int(size.y));
		vp.renderTargetUpdateMode = SubViewportVrsUpdateMode.always;
		entity.node.addChild(vp);

		for (t in textures) {
			var srcTxt = ImageTexture.createFromImage(t.getImage());
			srcTxt.setSizeOverride(size);
			var s = new NativeObject("Sprite2D", new ArrayList(), 0);
			s.set("texture", srcTxt.native);
			vp.addChild(new Node(s));
		}

		var camera = new NativeObject("Camera2D", new ArrayList(), 0);
		vp.addChild(new Node(camera));

		return vp.getTexture();
	}
}
