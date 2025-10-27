package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class NavigationMeshGeneratorService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('NavigationMeshGenerator');
        }
        return _native;
    }



  public static function bake(navigationMesh: Variant, rootNode: Node): Void {
      var args = new ArrayList();
      args.append(navigationMesh);
      args.append(rootNode.native);
      getNative().call('bake', args);
  }
  public static function bakeFromSourceGeometryData(navigationMesh: Variant, sourceGeometryData: Variant, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(navigationMesh);
      args.append(sourceGeometryData);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('bake_from_source_geometry_data', args);
  }
  public static function clear(navigationMesh: Variant): Void {
      var args = new ArrayList();
      args.append(navigationMesh);
      getNative().call('clear', args);
  }
  public static function parseSourceGeometryData(navigationMesh: Variant, sourceGeometryData: Variant, rootNode: Node, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(navigationMesh);
      args.append(sourceGeometryData);
      args.append(rootNode.native);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('parse_source_geometry_data', args);
  }
}
