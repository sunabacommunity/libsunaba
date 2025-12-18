package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.ByteArray;
import sunaba.core.Dictionary;
import sunaba.core.TypedArray;
import sunaba.core.Signal;
import sunaba.Node;

class GLTFState extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFState');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFState', native];
        scriptLoader.call('loadScript', args);
    }

    public var bakeFps(get, set): Float;
    function get_bakeFps(): Float {
        return native.get('bake_fps');
    }
    function set_bakeFps(value: Float): Float {
      native.set('bake_fps', value);
        return value;
    }
    public var basePath(get, set): String;
    function get_basePath(): String {
        return native.get('base_path');
    }
    function set_basePath(value: String): String {
      native.set('base_path', value);
        return value;
    }
    public var buffers(get, set): ArrayList;
    function get_buffers(): ArrayList {
        return native.get('buffers');
    }
    function set_buffers(value: ArrayList): ArrayList {
      native.set('buffers', value);
        return value;
    }
    public var copyright(get, set): String;
    function get_copyright(): String {
        return native.get('copyright');
    }
    function set_copyright(value: String): String {
      native.set('copyright', value);
        return value;
    }
    public var createAnimations(get, set): Bool;
    function get_createAnimations(): Bool {
        return native.get('create_animations');
    }
    function set_createAnimations(value: Bool): Bool {
      native.set('create_animations', value);
        return value;
    }
    public var filename(get, set): String;
    function get_filename(): String {
        return native.get('filename');
    }
    function set_filename(value: String): String {
      native.set('filename', value);
        return value;
    }
    public var glbData(get, set): ByteArray;
    function get_glbData(): ByteArray {
        return native.get('glb_data');
    }
    function set_glbData(value: ByteArray): ByteArray {
      native.set('glb_data', value);
        return value;
    }
    public var importAsSkeletonBones(get, set): Bool;
    function get_importAsSkeletonBones(): Bool {
        return native.get('import_as_skeleton_bones');
    }
    function set_importAsSkeletonBones(value: Bool): Bool {
      native.set('import_as_skeleton_bones', value);
        return value;
    }
    public var json(get, set): Dictionary;
    function get_json(): Dictionary {
        return native.get('json');
    }
    function set_json(value: Dictionary): Dictionary {
      native.set('json', value);
        return value;
    }
    public var majorVersion(get, set): Int;
    function get_majorVersion(): Int {
        return native.get('major_version');
    }
    function set_majorVersion(value: Int): Int {
      native.set('major_version', value);
        return value;
    }
    public var minorVersion(get, set): Int;
    function get_minorVersion(): Int {
        return native.get('minor_version');
    }
    function set_minorVersion(value: Int): Int {
      native.set('minor_version', value);
        return value;
    }
    public var rootNodes(get, set): TypedArray<Int>;
    function get_rootNodes(): TypedArray<Int> {
        return native.get('root_nodes');
    }
    function set_rootNodes(value: TypedArray<Int>): TypedArray<Int> {
      native.set('root_nodes', value);
        return value;
    }
    public var sceneName(get, set): String;
    function get_sceneName(): String {
        return native.get('scene_name');
    }
    function set_sceneName(value: String): String {
      native.set('scene_name', value);
        return value;
    }
    public var useNamedSkinBinds(get, set): Bool;
    function get_useNamedSkinBinds(): Bool {
        return native.get('use_named_skin_binds');
    }
    function set_useNamedSkinBinds(value: Bool): Bool {
      native.set('use_named_skin_binds', value);
        return value;
    }


  public function addUsedExtension(extensionName: String, required: Bool): Void {
      var args = new ArrayList();
      args.append(extensionName);
      args.append(required);
      native.call('add_used_extension', args);
  }
  public function appendDataToBuffers(data: ByteArray, deduplication: Bool): Int {
      var args = new ArrayList();
      args.append(data);
      args.append(deduplication);
      return native.call('append_data_to_buffers', args);
  }
  public function appendGltfNode(gltfNode: GLTFNode, godotSceneNode: Node, parentNodeIndex: Int): Int {
      var args = new ArrayList();
      args.append(gltfNode.native);
      args.append(godotSceneNode.native);
      args.append(parentNodeIndex);
      return native.call('append_gltf_node', args);
  }
  public function getAccessors(): ArrayList {
      var args = new ArrayList();
      return native.call('get_accessors', args);
  }
  public function getAdditionalData(extensionName: String): Variant {
      var args = new ArrayList();
      args.append(extensionName);
      return native.call('get_additional_data', args);
  }
  public function getAnimationPlayersCount(idx: Int): Int {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_animation_players_count', args);
  }
  public function getAnimations(): ArrayList {
      var args = new ArrayList();
      return native.call('get_animations', args);
  }
  public function getBufferViews(): ArrayList {
      var args = new ArrayList();
      return native.call('get_buffer_views', args);
  }
  public function getCameras(): ArrayList {
      var args = new ArrayList();
      return native.call('get_cameras', args);
  }
  public function getHandleBinaryImage(): Int {
      var args = new ArrayList();
      return native.call('get_handle_binary_image', args);
  }
  public function getImages(): ArrayList {
      var args = new ArrayList();
      return native.call('get_images', args);
  }
  public function getLights(): ArrayList {
      var args = new ArrayList();
      return native.call('get_lights', args);
  }
  public function getMaterials(): ArrayList {
      var args = new ArrayList();
      return native.call('get_materials', args);
  }
  public function getMeshes(): ArrayList {
      var args = new ArrayList();
      return native.call('get_meshes', args);
  }
  public function getNodeIndex(sceneNode: Node): Int {
      var args = new ArrayList();
      args.append(sceneNode.native);
      return native.call('get_node_index', args);
  }
  public function getNodes(): ArrayList {
      var args = new ArrayList();
      return native.call('get_nodes', args);
  }
  public function getSceneNode(idx: Int): Node {
      var args = new ArrayList();
      args.append(idx);
      var ref: NativeObject = native.call('get_scene_node', args);
      return new Node(ref);
  }
  public function getSkeletons(): ArrayList {
      var args = new ArrayList();
      return native.call('get_skeletons', args);
  }
  public function getSkins(): ArrayList {
      var args = new ArrayList();
      return native.call('get_skins', args);
  }
  public function getTextureSamplers(): ArrayList {
      var args = new ArrayList();
      return native.call('get_texture_samplers', args);
  }
  public function getTextures(): ArrayList {
      var args = new ArrayList();
      return native.call('get_textures', args);
  }
  public function getUniqueAnimationNames(): ArrayList {
      var args = new ArrayList();
      return native.call('get_unique_animation_names', args);
  }
  public function getUniqueNames(): ArrayList {
      var args = new ArrayList();
      return native.call('get_unique_names', args);
  }
  public function setAccessors(accessors: ArrayList): Void {
      var args = new ArrayList();
      args.append(accessors);
      native.call('set_accessors', args);
  }
  public function setAdditionalData(extensionName: String, additionalData: Variant): Void {
      var args = new ArrayList();
      args.append(extensionName);
      args.append(additionalData);
      native.call('set_additional_data', args);
  }
  public function setAnimations(animations: ArrayList): Void {
      var args = new ArrayList();
      args.append(animations);
      native.call('set_animations', args);
  }
  public function setBufferViews(bufferViews: ArrayList): Void {
      var args = new ArrayList();
      args.append(bufferViews);
      native.call('set_buffer_views', args);
  }
  public function setCameras(cameras: ArrayList): Void {
      var args = new ArrayList();
      args.append(cameras);
      native.call('set_cameras', args);
  }
  public function setHandleBinaryImage(method: Int): Void {
      var args = new ArrayList();
      args.append(method);
      native.call('set_handle_binary_image', args);
  }
  public function setImages(images: ArrayList): Void {
      var args = new ArrayList();
      args.append(images);
      native.call('set_images', args);
  }
  public function setLights(lights: ArrayList): Void {
      var args = new ArrayList();
      args.append(lights);
      native.call('set_lights', args);
  }
  public function setMaterials(materials: ArrayList): Void {
      var args = new ArrayList();
      args.append(materials);
      native.call('set_materials', args);
  }
  public function setMeshes(meshes: ArrayList): Void {
      var args = new ArrayList();
      args.append(meshes);
      native.call('set_meshes', args);
  }
  public function setNodes(nodes: ArrayList): Void {
      var args = new ArrayList();
      args.append(nodes);
      native.call('set_nodes', args);
  }
  public function setSkeletons(skeletons: ArrayList): Void {
      var args = new ArrayList();
      args.append(skeletons);
      native.call('set_skeletons', args);
  }
  public function setSkins(skins: ArrayList): Void {
      var args = new ArrayList();
      args.append(skins);
      native.call('set_skins', args);
  }
  public function setTextureSamplers(textureSamplers: ArrayList): Void {
      var args = new ArrayList();
      args.append(textureSamplers);
      native.call('set_texture_samplers', args);
  }
  public function setTextures(textures: ArrayList): Void {
      var args = new ArrayList();
      args.append(textures);
      native.call('set_textures', args);
  }
  public function setUniqueAnimationNames(uniqueAnimationNames: ArrayList): Void {
      var args = new ArrayList();
      args.append(uniqueAnimationNames);
      native.call('set_unique_animation_names', args);
  }
  public function setUniqueNames(uniqueNames: ArrayList): Void {
      var args = new ArrayList();
      args.append(uniqueNames);
      native.call('set_unique_names', args);
  }
}
