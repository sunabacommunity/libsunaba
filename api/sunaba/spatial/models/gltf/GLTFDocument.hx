package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.ByteArray;
import sunaba.Node;
import sunaba.core.TypedArray;

class GLTFDocument extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFDocument');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFDocument', native];
        scriptLoader.call('loadScript', args);
    }

    public var fallbackImageFormat(get, set): String;
    function get_fallbackImageFormat(): String {
        return native.get('fallback_image_format');
    }
    function set_fallbackImageFormat(value: String): String {
      native.set('fallback_image_format', value);
        return value;
    }
    public var fallbackImageQuality(get, set): Float;
    function get_fallbackImageQuality(): Float {
        return native.get('fallback_image_quality');
    }
    function set_fallbackImageQuality(value: Float): Float {
      native.set('fallback_image_quality', value);
        return value;
    }
    public var imageFormat(get, set): String;
    function get_imageFormat(): String {
        return native.get('image_format');
    }
    function set_imageFormat(value: String): String {
      native.set('image_format', value);
        return value;
    }
    public var lossyQuality(get, set): Float;
    function get_lossyQuality(): Float {
        return native.get('lossy_quality');
    }
    function set_lossyQuality(value: Float): Float {
      native.set('lossy_quality', value);
        return value;
    }
    public var rootNodeMode(get, set): Int;
    function get_rootNodeMode(): Int {
        return native.get('root_node_mode');
    }
    function set_rootNodeMode(value: Int): Int {
      native.set('root_node_mode', value);
        return value;
    }
    public var visibilityMode(get, set): Int;
    function get_visibilityMode(): Int {
        return native.get('visibility_mode');
    }
    function set_visibilityMode(value: Int): Int {
      native.set('visibility_mode', value);
        return value;
    }


  public function appendFromBuffer(bytes: ByteArray, basePath: String, state: GLTFState, ?flags: Int): Int {
      var args = new ArrayList();
      args.append(bytes);
      args.append(basePath);
      args.append(state.native);
      if (flags != null) {
          args.append(flags);
      }
      return native.call('append_from_buffer', args);
  }
  public function appendFromFile(path: String, state: GLTFState, ?flags: Int, ?basePath: String): Int {
      var args = new ArrayList();
      args.append(path);
      args.append(state.native);
      if (flags != null) {
          args.append(flags);
      }
      if (basePath != null) {
          args.append(basePath);
      }
      return native.call('append_from_file', args);
  }
  public function appendFromScene(node: Node, state: GLTFState, ?flags: Int): Int {
      var args = new ArrayList();
      args.append(node.native);
      args.append(state.native);
      if (flags != null) {
          args.append(flags);
      }
      return native.call('append_from_scene', args);
  }
  public function generateBuffer(state: GLTFState): ByteArray {
      var args = new ArrayList();
      args.append(state.native);
      return native.call('generate_buffer', args);
  }
  public function generateScene(state: GLTFState, ?bakeFps: Float, ?trimming: Bool, ?removeImmutableTracks: Bool): Node {
      var args = new ArrayList();
      args.append(state.native);
      if (bakeFps != null) {
          args.append(bakeFps);
      }
      if (trimming != null) {
          args.append(trimming);
      }
      if (removeImmutableTracks != null) {
          args.append(removeImmutableTracks);
      }
      var ref: NativeObject = native.call('generate_scene', args);
      return new Node(ref);
  }
  public static function getSupportedGltfExtensions(): TypedArray<String> {
      var args = new ArrayList();
      return NativeObject.callStatic('GLTFDocument', 'get_supported_gltf_extensions', args);
  }
  public static function registerGltfDocumentExtension(extension: GLTFDocumentExtension, ?firstPriority: Bool): Void {
      var args = new ArrayList();
      args.append(extension.native);
      if (firstPriority != null) {
          args.append(firstPriority);
      }
      NativeObject.callStatic('GLTFDocument', 'register_gltf_document_extension', args);
  }
  public static function unregisterGltfDocumentExtension(extension: GLTFDocumentExtension): Void {
      var args = new ArrayList();
      args.append(extension.native);
      NativeObject.callStatic('GLTFDocument', 'unregister_gltf_document_extension', args);
  }
  public function writeToFilesystem(state: GLTFState, path: String): Int {
      var args = new ArrayList();
      args.append(state.native);
      args.append(path);
      return native.call('write_to_filesystem', args);
  }
}
