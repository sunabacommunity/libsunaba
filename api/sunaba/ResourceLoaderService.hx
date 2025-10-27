package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;

class ResourceLoaderService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('ResourceLoader');
        }
        return _native;
    }



  public static function addResourceFormatLoader(formatLoader: Variant, ?atFront: Bool): Void {
      var args = new ArrayList();
      args.append(formatLoader);
      if (atFront != null) {
          args.append(atFront);
      }
      getNative().call('add_resource_format_loader', args);
  }
  public static function exists(path: String, ?typeHint: String): Bool {
      var args = new ArrayList();
      args.append(path);
      if (typeHint != null) {
          args.append(typeHint);
      }
      return getNative().call('exists', args);
  }
  public static function getCachedRef(path: String): Resource {
      var args = new ArrayList();
      args.append(path);
      var ref: NativeReference = getNative().call('get_cached_ref', args);
      return new Resource(ref);
  }
  public static function getDependencies(path: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(path);
      return getNative().call('get_dependencies', args);
  }
  public static function getRecognizedExtensionsForType(type: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(type);
      return getNative().call('get_recognized_extensions_for_type', args);
  }
  public static function getResourceUid(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return getNative().call('get_resource_uid', args);
  }
  public static function hasCached(path: String): Bool {
      var args = new ArrayList();
      args.append(path);
      return getNative().call('has_cached', args);
  }
  public static function listDirectory(directoryPath: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(directoryPath);
      return getNative().call('list_directory', args);
  }
  public static function load(path: String, ?typeHint: String, ?cacheMode: Int): Resource {
      var args = new ArrayList();
      args.append(path);
      if (typeHint != null) {
          args.append(typeHint);
      }
      if (cacheMode != null) {
          args.append(cacheMode);
      }
      var ref: NativeReference = getNative().call('load', args);
      return new Resource(ref);
  }
  public static function loadThreadedGet(path: String): Resource {
      var args = new ArrayList();
      args.append(path);
      var ref: NativeReference = getNative().call('load_threaded_get', args);
      return new Resource(ref);
  }
  public static function loadThreadedGetStatus(path: String, ?progress: ArrayList): Int {
      var args = new ArrayList();
      args.append(path);
      if (progress != null) {
          args.append(progress);
      }
      return getNative().call('load_threaded_get_status', args);
  }
  public static function loadThreadedRequest(path: String, ?typeHint: String, ?useSubThreads: Bool, ?cacheMode: Int): Int {
      var args = new ArrayList();
      args.append(path);
      if (typeHint != null) {
          args.append(typeHint);
      }
      if (useSubThreads != null) {
          args.append(useSubThreads);
      }
      if (cacheMode != null) {
          args.append(cacheMode);
      }
      return getNative().call('load_threaded_request', args);
  }
  public static function removeResourceFormatLoader(formatLoader: Variant): Void {
      var args = new ArrayList();
      args.append(formatLoader);
      getNative().call('remove_resource_format_loader', args);
  }
  public static function setAbortOnMissingResources(abort: Bool): Void {
      var args = new ArrayList();
      args.append(abort);
      getNative().call('set_abort_on_missing_resources', args);
  }
}
