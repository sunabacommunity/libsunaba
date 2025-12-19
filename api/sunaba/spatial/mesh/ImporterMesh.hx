package sunaba.spatial.mesh;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.Dictionary;
import sunaba.Material;
import sunaba.core.Vector2i;
import sunaba.core.TypedArray;

class ImporterMesh extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImporterMesh');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['ImporterMesh', native];
        scriptLoader.call('loadScript', args);
    }



  public function addBlendShape(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('add_blend_shape', args);
  }
  public function addSurface(primitive: Int, arrays: ArrayList, ?blendShapes: ArrayList, ?lods: Dictionary, ?material: Material, ?name: String, ?flags: Int): Void {
      var args = new ArrayList();
      args.append(primitive);
      args.append(arrays);
      if (blendShapes != null) {
          args.append(blendShapes);
      }
      if (lods != null) {
          args.append(lods);
      }
      if (material != null) {
          args.append(material.native);
      }
      if (name != null) {
          args.append(name);
      }
      if (flags != null) {
          args.append(flags);
      }
      native.call('add_surface', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function generateLods(normalMergeAngle: Float, normalSplitAngle: Float, boneTransformArray: ArrayList): Void {
      var args = new ArrayList();
      args.append(normalMergeAngle);
      args.append(normalSplitAngle);
      args.append(boneTransformArray);
      native.call('generate_lods', args);
  }
  public function getBlendShapeCount(): Int {
      var args = new ArrayList();
      return native.call('get_blend_shape_count', args);
  }
  public function getBlendShapeMode(): Int {
      var args = new ArrayList();
      return native.call('get_blend_shape_mode', args);
  }
  public function getBlendShapeName(blendShapeIdx: Int): String {
      var args = new ArrayList();
      args.append(blendShapeIdx);
      return native.call('get_blend_shape_name', args);
  }
  public function getLightmapSizeHint(): Vector2i {
      var args = new ArrayList();
      return native.call('get_lightmap_size_hint', args);
  }
  public function getSurfaceArrays(surfaceIdx: Int): ArrayList {
      var args = new ArrayList();
      args.append(surfaceIdx);
      return native.call('get_surface_arrays', args);
  }
  public function getSurfaceBlendShapeArrays(surfaceIdx: Int, blendShapeIdx: Int): ArrayList {
      var args = new ArrayList();
      args.append(surfaceIdx);
      args.append(blendShapeIdx);
      return native.call('get_surface_blend_shape_arrays', args);
  }
  public function getSurfaceCount(): Int {
      var args = new ArrayList();
      return native.call('get_surface_count', args);
  }
  public function getSurfaceFormat(surfaceIdx: Int): Int {
      var args = new ArrayList();
      args.append(surfaceIdx);
      return native.call('get_surface_format', args);
  }
  public function getSurfaceLodCount(surfaceIdx: Int): Int {
      var args = new ArrayList();
      args.append(surfaceIdx);
      return native.call('get_surface_lod_count', args);
  }
  public function getSurfaceLodIndices(surfaceIdx: Int, lodIdx: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(surfaceIdx);
      args.append(lodIdx);
      return native.call('get_surface_lod_indices', args);
  }
  public function getSurfaceLodSize(surfaceIdx: Int, lodIdx: Int): Float {
      var args = new ArrayList();
      args.append(surfaceIdx);
      args.append(lodIdx);
      return native.call('get_surface_lod_size', args);
  }
  public function getSurfaceMaterial(surfaceIdx: Int): Material {
      var args = new ArrayList();
      args.append(surfaceIdx);
      var ref: NativeReference = native.call('get_surface_material', args);
      return new Material(ref);
  }
  public function getSurfaceName(surfaceIdx: Int): String {
      var args = new ArrayList();
      args.append(surfaceIdx);
      return native.call('get_surface_name', args);
  }
  public function getSurfacePrimitiveType(surfaceIdx: Int): Int {
      var args = new ArrayList();
      args.append(surfaceIdx);
      return native.call('get_surface_primitive_type', args);
  }
  public function setBlendShapeMode(mode: Int): Void {
      var args = new ArrayList();
      args.append(mode);
      native.call('set_blend_shape_mode', args);
  }
  public function setLightmapSizeHint(size: Vector2i): Void {
      var args = new ArrayList();
      args.append(size);
      native.call('set_lightmap_size_hint', args);
  }
  public function setSurfaceMaterial(surfaceIdx: Int, material: Material): Void {
      var args = new ArrayList();
      args.append(surfaceIdx);
      args.append(material.native);
      native.call('set_surface_material', args);
  }
  public function setSurfaceName(surfaceIdx: Int, name: String): Void {
      var args = new ArrayList();
      args.append(surfaceIdx);
      args.append(name);
      native.call('set_surface_name', args);
  }
}
