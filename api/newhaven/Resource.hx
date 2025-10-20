package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;

class Resource extends Reference {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Resource');
        }
        native = _native;
    }

    public var resourceLocalToScene(get, set): Bool;
    function get_resourceLocalToScene(): Bool {
        return native.get('resource_local_to_scene');
    }
    function set_resourceLocalToScene(value: Bool): Bool {
      native.set('resource_local_to_scene', value);
        return value;
    }
    public var resourceName(get, set): String;
    function get_resourceName(): String {
        return native.get('resource_name');
    }
    function set_resourceName(value: String): String {
      native.set('resource_name', value);
        return value;
    }
    public var resourcePath(get, set): String;
    function get_resourcePath(): String {
        return native.get('resource_path');
    }
    function set_resourcePath(value: String): String {
      native.set('resource_path', value);
        return value;
    }
    public var resourceSceneUniqueId(get, set): String;
    function get_resourceSceneUniqueId(): String {
        return native.get('resource_scene_unique_id');
    }
    function set_resourceSceneUniqueId(value: String): String {
      native.set('resource_scene_unique_id', value);
        return value;
    }

  public function duplicate(?deep: Bool): Resource {
      var args = new ArrayList();
      if (deep != null) {
          args.append(deep);
      }
      var ref: NativeReference = native.call('duplicate', args);
      return new Resource(ref);
  }
  public function duplicateDeep(?deepSubresourcesMode: Int): Resource {
      var args = new ArrayList();
      if (deepSubresourcesMode != null) {
          args.append(deepSubresourcesMode);
      }
      var ref: NativeReference = native.call('duplicate_deep', args);
      return new Resource(ref);
  }
  public function emitChanged(): Void {
      var args = new ArrayList();
      native.call('emit_changed', args);
  }
  public static function generateSceneUniqueId(): String {
      var args = new ArrayList();
      return NativeObject.callStatic('Resource', 'generate_scene_unique_id', args);
  }
  public function getIdForPath(path: String): String {
      var args = new ArrayList();
      args.append(path);
      return native.call('get_id_for_path', args);
  }
  public function getLocalScene(): Node {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_local_scene', args);
      return new Node(ref);
  }
  public function getRid(): Int {
      var args = new ArrayList();
      return native.call('get_rid', args);
  }
  public function isBuiltIn(): Bool {
      var args = new ArrayList();
      return native.call('is_built_in', args);
  }
  public function resetState(): Void {
      var args = new ArrayList();
      native.call('reset_state', args);
  }
  public function setIdForPath(path: String, id: String): Void {
      var args = new ArrayList();
      args.append(path);
      args.append(id);
      native.call('set_id_for_path', args);
  }
  public function setPathCache(path: String): Void {
      var args = new ArrayList();
      args.append(path);
      native.call('set_path_cache', args);
  }
  public function setupLocalToScene(): Void {
      var args = new ArrayList();
      native.call('setup_local_to_scene', args);
  }
  public function takeOverPath(path: String): Void {
      var args = new ArrayList();
      args.append(path);
      native.call('take_over_path', args);
  }
}
