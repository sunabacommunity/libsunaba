package sunaba.spatial;

import sunaba.spatial.mesh.MeshDisplay;
import sunaba.core.ArrayList;
import sunaba.core.Rect2i;
import sunaba.core.Vector2i;
import sunaba.core.Reference;
import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import sunaba.core.Vector3;
import sunaba.core.Variant;

class CharacterRig extends Behavior {
	private var _data: CharacterData;

	public var headwearAttachment: Entity;
	public var dressAttachment: Entity;
	public var leftUpperLegAttachment: Entity;
	public var rightUpperLegAttachment: Entity;
	public var leftLowerLegAttachment: Entity;
	public var rightLowerLegAttachment: Entity;

	public var meshEntity: Entity;
	public var meshDisplay: MeshDisplay;

	public override function onInit() {
		_data = new CharacterData();
	}

	public override function onStart() {
		headwearAttachment = entity.find("/Rig/Skeleton3D/Head/HeadwearAttachment");
		dressAttachment = entity.find("/Rig/Skeleton3D/DressAttachment");
		leftUpperLegAttachment = entity.find("/Rig/Skeleton3D/LeftUpperLegAttachment");
		rightUpperLegAttachment = entity.find("/Rig/Skeleton3D/RightUpperLegAttachment");
		leftLowerLegAttachment = entity.find("/Rig/Skeleton3D/LeftLowerLegAttachment");
		rightLowerLegAttachment = entity.find("/Rig/Skeleton3D/RightLowerLegAttachment");


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
			trace(headwearAttachment != null);
			if (headwearAttachment != null) {
				headwearAttachment.addChild(prefabEntity);
			}
		}

		if (data.bodyType == BodyType.female) {
			var dressLoader = new NativeReference("res://Engine/FemaleDressLoader.gd", new ArrayList(), 1);
			trace(dressLoader.isValid());
			if (dressLoader.isValid()) {
				var dress = data.femaleDress;
				if (dress != null) {
					var dressNode: Node = null;
					if (dress.dressType == 0) {
						dressNode = new Node(dressLoader.call("loadDress1", new ArrayList()));
					}
					else if (dress.dressType == 1) {
						dressNode = new Node(dressLoader.call("loadDress2", new ArrayList()));
					}
					else if (dress.dressType == 2) {
						dressNode = new Node(dressLoader.call("loadDress3", new ArrayList()));
					}
					else if (dress.dressType == 4) {
						dressNode = new Node(dressLoader.call("loadDress4", new ArrayList()));
					}
					trace(dressNode != null);
					trace(!dressNode.isNull());
					if (dressNode != null && !dressNode.isNull()) {
						entity.node.addChild(dressNode);

						var dressAttachmentChild = new Entity();
						var datf = dressAttachmentChild.addComponent(SpatialTransform);
						dressAttachment.addChild(dressAttachmentChild);
						datf.position = new Vector3(0.0, -0.106992, 0.013256);
						datf.globalRotation = new Vector3(0.059921, datf.rotation.y, datf.rotation.z);
						var leftUpperLegAttachmentChild = new Entity();
						leftUpperLegAttachmentChild.addComponent(SpatialTransform);
						leftUpperLegAttachment.addChild(leftUpperLegAttachmentChild);
						var rightUpperLegAttachmentChild = new Entity();
						rightUpperLegAttachmentChild.addComponent(SpatialTransform);
						rightUpperLegAttachment.addChild(rightUpperLegAttachmentChild);
						var leftLowerLegAttachmentChild = new Entity();
						leftLowerLegAttachmentChild.addComponent(SpatialTransform);
						leftLowerLegAttachment.addChild(leftLowerLegAttachmentChild);
						var rightLowerLegAttachmentChild = new Entity();
						rightLowerLegAttachmentChild.addComponent(SpatialTransform);
						rightLowerLegAttachment.addChild(rightLowerLegAttachmentChild);

						var dressAttachmentRT = dressAttachmentChild.addComponent(RemoteTransform);
						var leftUpperLegAttachmentRT = leftUpperLegAttachmentChild.addComponent(RemoteTransform);
						var rightUpperLegAttachmentRT = rightUpperLegAttachmentChild.addComponent(RemoteTransform);
						var leftLowerLegAttachmentRT = leftLowerLegAttachmentChild.addComponent(RemoteTransform);
						var rightLowerLegAttachmentRT = leftLowerLegAttachmentChild.addComponent(RemoteTransform);

						dressAttachmentRT.remotePath = dressAttachmentRT.node.getPathTo(dressNode);
						leftUpperLegAttachmentRT.remotePath = leftUpperLegAttachmentRT.node.getPathTo(dressNode.getNode("Rig/Skeleton3D/SpringBoneSimulator3D/SpringBoneCollisionCapsule3D"));
						rightUpperLegAttachmentRT.remotePath = rightUpperLegAttachmentRT.node.getPathTo(dressNode.getNode("Rig/Skeleton3D/SpringBoneSimulator3D/SpringBoneCollisionCapsule3D2"));
						leftLowerLegAttachmentRT.remotePath = leftLowerLegAttachmentRT.node.getPathTo(dressNode.getNode("Rig/Skeleton3D/SpringBoneSimulator3D/SpringBoneCollisionCapsule3D3"));
						rightLowerLegAttachmentRT.remotePath = rightLowerLegAttachmentRT.node.getPathTo(dressNode.getNode("Rig/Skeleton3D/SpringBoneSimulator3D/SpringBoneCollisionCapsule3D4"));

						var femaleDressMeshNode = dressNode.getNode("Rig/Skeleton3D/Dress");
						var outerDressMaterial = new StandardMaterial3D();
						outerDressMaterial.albedoTexture = dress.innerTexture;
						var outerDressMaterialArgs = new ArrayList();
						outerDressMaterialArgs.append(0);
						outerDressMaterialArgs.append(outerDressMaterial);
						femaleDressMeshNode.native.call("set_surface_override_material", outerDressMaterialArgs);
						var innerDressMaterial = new StandardMaterial3D();
						innerDressMaterial.albedoTexture = dress.innerTexture;
						var innerDressMaterialArgs = new ArrayList();
						innerDressMaterialArgs.append(1);
						innerDressMaterialArgs.append(innerDressMaterial);
						femaleDressMeshNode.native.call("set_surface_override_material", innerDressMaterialArgs);
						var blendShapeArgs: Array<Variant> = [2, data.legThickness];
						femaleDressMeshNode.native.call("set_blend_shape_value", blendShapeArgs);
					}
				}
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
		skinToneTexture.setSizeOverride(new Vector2i(512, 512));
		var faceTexture = combineTextures([skinToneTexture, faceTextureData.texture], new Vector2i(Std.int(faceTextureSize.x), Std.int(faceTextureSize.y)));

		var clothes = data.clothes;
		var clothingTextureArray: Array<Texture2D> = [skinToneTexture];
		var clothcount = clothingTextureArray.length;
		for (clothing in clothes) {
			clothingTextureArray.push(clothing.texture);
		}
		var clothingTextureSize = clothingTextureArray[0].getSize();
		var combinedClothingTexture = combineTextures(clothingTextureArray, new Vector2i(512, 512));

		if (meshDisplay != null) {
			var material0 = new StandardMaterial3D();
			var material1 = new StandardMaterial3D();
			var material2 = new StandardMaterial3D();// Reference.castTo(meshDisplay.getSurfaceOverideMaterial(2), BaseMaterial3D);
			trace(material0.isNull());

			material0.albedoTexture = combineTextures([skinToneTexture], new Vector2i(32, 32));
			material1.albedoTexture = faceTexture;
			material2.albedoTexture = combinedClothingTexture;

			meshDisplay.setSurfaceOverrideMaterial(0, material0);
			meshDisplay.setSurfaceOverrideMaterial(1, material1);
			meshDisplay.setSurfaceOverrideMaterial(2, material2);

			if (data.bodyType == BodyType.female) {
				meshDisplay.setBlendShapeValue(2, Clamp(data.femaleChestSize, 0.0, 1.0));
			}
			else if (data.bodyType == BodyType.male) {
				meshDisplay.setBlendShapeValue(2, Clamp(data.maleArmThickness, 0.0, 1.0));
			}
			meshDisplay.setBlendShapeValue(3, Clamp(data.legThickness, 0.0, 1.0));
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

	inline function Clamp(value:Float, min:Float, max:Float):Float {
		return if (value < min) min else if (value > max) max else value;
	}
}
