package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.Vector2i;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Color;
import sunaba.core.Rect2;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.Color;
import sunaba.core.Vector3;
import sunaba.core.Basis;
import sunaba.core.Vector3;
import sunaba.core.Dictionary;
import sunaba.core.ByteArray;
import sunaba.core.Vector3i;

class RenderingService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('RenderingService');
        }
        return _native;
    }

    public static var renderLoopEnabled(get, set): Bool;
    static function get_renderLoopEnabled(): Bool {
        return getNative().get('render_loop_enabled');
    }
    static function set_renderLoopEnabled(value: Bool): Bool {
      getNative().set('render_loop_enabled', value);
        return value;
    }

	private static var _framePostDraw: Signal;
	public static var framePostDraw(get, default): Signal;
	static function get_framePostDraw(): Signal {
	    if (_framePostDraw == null) {
	        _framePostDraw = Signal.createFromObject(getNative(), 'frame_post_draw');
	    }
	    return _framePostDraw;
	}
	private static var _framePreDraw: Signal;
	public static var framePreDraw(get, default): Signal;
	static function get_framePreDraw(): Signal {
	    if (_framePreDraw == null) {
	        _framePreDraw = Signal.createFromObject(getNative(), 'frame_pre_draw');
	    }
	    return _framePreDraw;
	}

  public function callOnRenderThread(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      getNative().call('call_on_render_thread', args);
  }
  public function cameraAttributesCreate(): Int {
      var args = new ArrayList();
      return getNative().call('camera_attributes_create', args);
  }
  public function cameraAttributesSetAutoExposure(cameraAttributes: Int, enable: Bool, minSensitivity: Float, maxSensitivity: Float, speed: Float, scale: Float): Void {
      var args = new ArrayList();
      args.append(cameraAttributes);
      args.append(enable);
      args.append(minSensitivity);
      args.append(maxSensitivity);
      args.append(speed);
      args.append(scale);
      getNative().call('camera_attributes_set_auto_exposure', args);
  }
  public function cameraAttributesSetDofBlur(cameraAttributes: Int, farEnable: Bool, farDistance: Float, farTransition: Float, nearEnable: Bool, nearDistance: Float, nearTransition: Float, amount: Float): Void {
      var args = new ArrayList();
      args.append(cameraAttributes);
      args.append(farEnable);
      args.append(farDistance);
      args.append(farTransition);
      args.append(nearEnable);
      args.append(nearDistance);
      args.append(nearTransition);
      args.append(amount);
      getNative().call('camera_attributes_set_dof_blur', args);
  }
  public function cameraAttributesSetDofBlurBokehShape(shape: Int): Void {
      var args = new ArrayList();
      args.append(shape);
      getNative().call('camera_attributes_set_dof_blur_bokeh_shape', args);
  }
  public function cameraAttributesSetDofBlurQuality(quality: Int, useJitter: Bool): Void {
      var args = new ArrayList();
      args.append(quality);
      args.append(useJitter);
      getNative().call('camera_attributes_set_dof_blur_quality', args);
  }
  public function cameraAttributesSetExposure(cameraAttributes: Int, multiplier: Float, normalization: Float): Void {
      var args = new ArrayList();
      args.append(cameraAttributes);
      args.append(multiplier);
      args.append(normalization);
      getNative().call('camera_attributes_set_exposure', args);
  }
  public function cameraCreate(): Int {
      var args = new ArrayList();
      return getNative().call('camera_create', args);
  }
  public function cameraSetCameraAttributes(camera: Int, effects: Int): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(effects);
      getNative().call('camera_set_camera_attributes', args);
  }
  public function cameraSetCompositor(camera: Int, compositor: Int): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(compositor);
      getNative().call('camera_set_compositor', args);
  }
  public function cameraSetCullMask(camera: Int, layers: Int): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(layers);
      getNative().call('camera_set_cull_mask', args);
  }
  public function cameraSetEnvironment(camera: Int, env: Int): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(env);
      getNative().call('camera_set_environment', args);
  }
  public function cameraSetFrustum(camera: Int, size: Float, offset: Vector2, zNear: Float, zFar: Float): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(size);
      args.append(offset);
      args.append(zNear);
      args.append(zFar);
      getNative().call('camera_set_frustum', args);
  }
  public function cameraSetOrthogonal(camera: Int, size: Float, zNear: Float, zFar: Float): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(size);
      args.append(zNear);
      args.append(zFar);
      getNative().call('camera_set_orthogonal', args);
  }
  public function cameraSetPerspective(camera: Int, fovyDegrees: Float, zNear: Float, zFar: Float): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(fovyDegrees);
      args.append(zNear);
      args.append(zFar);
      getNative().call('camera_set_perspective', args);
  }
  public function cameraSetTransform(camera: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(transform);
      getNative().call('camera_set_transform', args);
  }
  public function cameraSetUseVerticalAspect(camera: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(enable);
      getNative().call('camera_set_use_vertical_aspect', args);
  }
  public function canvasCreate(): Int {
      var args = new ArrayList();
      return getNative().call('canvas_create', args);
  }
  public function canvasItemAddAnimationSlice(item: Int, animationLength: Float, sliceBegin: Float, sliceEnd: Float, ?offset: Float): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(animationLength);
      args.append(sliceBegin);
      args.append(sliceEnd);
      if (offset != null) {
          args.append(offset);
      }
      getNative().call('canvas_item_add_animation_slice', args);
  }
  public function canvasItemAddCircle(item: Int, pos: Vector2, radius: Float, color: Color, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(pos);
      args.append(radius);
      args.append(color);
      if (antialiased != null) {
          args.append(antialiased);
      }
      getNative().call('canvas_item_add_circle', args);
  }
  public function canvasItemAddClipIgnore(item: Int, ignore: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(ignore);
      getNative().call('canvas_item_add_clip_ignore', args);
  }
  public function canvasItemAddLcdTextureRectRegion(item: Int, rect: Rect2, texture: Int, srcRect: Rect2, modulate: Color): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(rect);
      args.append(texture);
      args.append(srcRect);
      args.append(modulate);
      getNative().call('canvas_item_add_lcd_texture_rect_region', args);
  }
  public function canvasItemAddLine(item: Int, from: Vector2, to: Vector2, color: Color, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(from);
      args.append(to);
      args.append(color);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      getNative().call('canvas_item_add_line', args);
  }
  public function canvasItemAddMesh(item: Int, mesh: Int, ?transform: Variant, ?modulate: Color, ?texture: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(mesh);
      if (transform != null) {
          args.append(transform);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (texture != null) {
          args.append(texture);
      }
      getNative().call('canvas_item_add_mesh', args);
  }
  public function canvasItemAddMsdfTextureRectRegion(item: Int, rect: Rect2, texture: Int, srcRect: Rect2, ?modulate: Color, ?outlineSize: Int, ?pxRange: Float, ?scale: Float): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(rect);
      args.append(texture);
      args.append(srcRect);
      if (modulate != null) {
          args.append(modulate);
      }
      if (outlineSize != null) {
          args.append(outlineSize);
      }
      if (pxRange != null) {
          args.append(pxRange);
      }
      if (scale != null) {
          args.append(scale);
      }
      getNative().call('canvas_item_add_msdf_texture_rect_region', args);
  }
  public function canvasItemAddMultiline(item: Int, points: TypedArray<Vector2>, colors: TypedArray<Color>, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(points);
      args.append(colors);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      getNative().call('canvas_item_add_multiline', args);
  }
  public function canvasItemAddMultimesh(item: Int, mesh: Int, ?texture: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(mesh);
      if (texture != null) {
          args.append(texture);
      }
      getNative().call('canvas_item_add_multimesh', args);
  }
  public function canvasItemAddNinePatch(item: Int, rect: Rect2, source: Rect2, texture: Int, topleft: Vector2, bottomright: Vector2, ?xAxisMode: Int, ?yAxisMode: Int, ?drawCenter: Bool, ?modulate: Color): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(rect);
      args.append(source);
      args.append(texture);
      args.append(topleft);
      args.append(bottomright);
      if (xAxisMode != null) {
          args.append(xAxisMode);
      }
      if (yAxisMode != null) {
          args.append(yAxisMode);
      }
      if (drawCenter != null) {
          args.append(drawCenter);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      getNative().call('canvas_item_add_nine_patch', args);
  }
  public function canvasItemAddParticles(item: Int, particles: Int, texture: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(particles);
      args.append(texture);
      getNative().call('canvas_item_add_particles', args);
  }
  public function canvasItemAddPolygon(item: Int, points: TypedArray<Vector2>, colors: TypedArray<Color>, ?uvs: TypedArray<Vector2>, ?texture: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(points);
      args.append(colors);
      if (uvs != null) {
          args.append(uvs);
      }
      if (texture != null) {
          args.append(texture);
      }
      getNative().call('canvas_item_add_polygon', args);
  }
  public function canvasItemAddPolyline(item: Int, points: TypedArray<Vector2>, colors: TypedArray<Color>, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(points);
      args.append(colors);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      getNative().call('canvas_item_add_polyline', args);
  }
  public function canvasItemAddPrimitive(item: Int, points: TypedArray<Vector2>, colors: TypedArray<Color>, uvs: TypedArray<Vector2>, texture: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(points);
      args.append(colors);
      args.append(uvs);
      args.append(texture);
      getNative().call('canvas_item_add_primitive', args);
  }
  public function canvasItemAddRect(item: Int, rect: Rect2, color: Color, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(rect);
      args.append(color);
      if (antialiased != null) {
          args.append(antialiased);
      }
      getNative().call('canvas_item_add_rect', args);
  }
  public function canvasItemAddSetTransform(item: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(transform);
      getNative().call('canvas_item_add_set_transform', args);
  }
  public function canvasItemAddTextureRect(item: Int, rect: Rect2, texture: Int, ?tile: Bool, ?modulate: Color, ?transpose: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(rect);
      args.append(texture);
      if (tile != null) {
          args.append(tile);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (transpose != null) {
          args.append(transpose);
      }
      getNative().call('canvas_item_add_texture_rect', args);
  }
  public function canvasItemAddTextureRectRegion(item: Int, rect: Rect2, texture: Int, srcRect: Rect2, ?modulate: Color, ?transpose: Bool, ?clipUv: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(rect);
      args.append(texture);
      args.append(srcRect);
      if (modulate != null) {
          args.append(modulate);
      }
      if (transpose != null) {
          args.append(transpose);
      }
      if (clipUv != null) {
          args.append(clipUv);
      }
      getNative().call('canvas_item_add_texture_rect_region', args);
  }
  public function canvasItemAddTriangleArray(item: Int, indices: TypedArray<Int>, points: TypedArray<Vector2>, colors: TypedArray<Color>, ?uvs: TypedArray<Vector2>, ?bones: TypedArray<Int>, ?weights: TypedArray<Float>, ?texture: Int, ?count: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(indices);
      args.append(points);
      args.append(colors);
      if (uvs != null) {
          args.append(uvs);
      }
      if (bones != null) {
          args.append(bones);
      }
      if (weights != null) {
          args.append(weights);
      }
      if (texture != null) {
          args.append(texture);
      }
      if (count != null) {
          args.append(count);
      }
      getNative().call('canvas_item_add_triangle_array', args);
  }
  public function canvasItemAttachSkeleton(item: Int, skeleton: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(skeleton);
      getNative().call('canvas_item_attach_skeleton', args);
  }
  public function canvasItemClear(item: Int): Void {
      var args = new ArrayList();
      args.append(item);
      getNative().call('canvas_item_clear', args);
  }
  public function canvasItemCreate(): Int {
      var args = new ArrayList();
      return getNative().call('canvas_item_create', args);
  }
  public function canvasItemGetInstanceShaderParameter(instance: Int, parameter: String): Variant {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      return getNative().call('canvas_item_get_instance_shader_parameter', args);
  }
  public function canvasItemGetInstanceShaderParameterDefaultValue(instance: Int, parameter: String): Variant {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      return getNative().call('canvas_item_get_instance_shader_parameter_default_value', args);
  }
  public function canvasItemResetPhysicsInterpolation(item: Int): Void {
      var args = new ArrayList();
      args.append(item);
      getNative().call('canvas_item_reset_physics_interpolation', args);
  }
  public function canvasItemSetCanvasGroupMode(item: Int, mode: Int, ?clearMargin: Float, ?fitEmpty: Bool, ?fitMargin: Float, ?blurMipmaps: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(mode);
      if (clearMargin != null) {
          args.append(clearMargin);
      }
      if (fitEmpty != null) {
          args.append(fitEmpty);
      }
      if (fitMargin != null) {
          args.append(fitMargin);
      }
      if (blurMipmaps != null) {
          args.append(blurMipmaps);
      }
      getNative().call('canvas_item_set_canvas_group_mode', args);
  }
  public function canvasItemSetClip(item: Int, clip: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(clip);
      getNative().call('canvas_item_set_clip', args);
  }
  public function canvasItemSetCopyToBackbuffer(item: Int, enabled: Bool, rect: Rect2): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      args.append(rect);
      getNative().call('canvas_item_set_copy_to_backbuffer', args);
  }
  public function canvasItemSetCustomRect(item: Int, useCustomRect: Bool, ?rect: Rect2): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(useCustomRect);
      if (rect != null) {
          args.append(rect);
      }
      getNative().call('canvas_item_set_custom_rect', args);
  }
  public function canvasItemSetDefaultTextureFilter(item: Int, filter: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(filter);
      getNative().call('canvas_item_set_default_texture_filter', args);
  }
  public function canvasItemSetDefaultTextureRepeat(item: Int, repeat: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(repeat);
      getNative().call('canvas_item_set_default_texture_repeat', args);
  }
  public function canvasItemSetDistanceFieldMode(item: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_distance_field_mode', args);
  }
  public function canvasItemSetDrawBehindParent(item: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_draw_behind_parent', args);
  }
  public function canvasItemSetDrawIndex(item: Int, index: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(index);
      getNative().call('canvas_item_set_draw_index', args);
  }
  public function canvasItemSetInstanceShaderParameter(instance: Int, parameter: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      args.append(value);
      getNative().call('canvas_item_set_instance_shader_parameter', args);
  }
  public function canvasItemSetInterpolated(item: Int, interpolated: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(interpolated);
      getNative().call('canvas_item_set_interpolated', args);
  }
  public function canvasItemSetLightMask(item: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(mask);
      getNative().call('canvas_item_set_light_mask', args);
  }
  public function canvasItemSetMaterial(item: Int, material: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(material);
      getNative().call('canvas_item_set_material', args);
  }
  public function canvasItemSetModulate(item: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(color);
      getNative().call('canvas_item_set_modulate', args);
  }
  public function canvasItemSetParent(item: Int, parent: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(parent);
      getNative().call('canvas_item_set_parent', args);
  }
  public function canvasItemSetSelfModulate(item: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(color);
      getNative().call('canvas_item_set_self_modulate', args);
  }
  public function canvasItemSetSortChildrenByY(item: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_sort_children_by_y', args);
  }
  public function canvasItemSetTransform(item: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(transform);
      getNative().call('canvas_item_set_transform', args);
  }
  public function canvasItemSetUseParentMaterial(item: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_use_parent_material', args);
  }
  public function canvasItemSetVisibilityLayer(item: Int, visibilityLayer: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(visibilityLayer);
      getNative().call('canvas_item_set_visibility_layer', args);
  }
  public function canvasItemSetVisibilityNotifier(item: Int, enable: Bool, area: Rect2, enterCallable: Variant, exitCallable: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enable);
      args.append(area);
      args.append(enterCallable);
      args.append(exitCallable);
      getNative().call('canvas_item_set_visibility_notifier', args);
  }
  public function canvasItemSetVisible(item: Int, visible: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(visible);
      getNative().call('canvas_item_set_visible', args);
  }
  public function canvasItemSetZAsRelativeToParent(item: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_z_as_relative_to_parent', args);
  }
  public function canvasItemSetZIndex(item: Int, zIndex: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(zIndex);
      getNative().call('canvas_item_set_z_index', args);
  }
  public function canvasItemTransformPhysicsInterpolation(item: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(transform);
      getNative().call('canvas_item_transform_physics_interpolation', args);
  }
  public function canvasLightAttachToCanvas(light: Int, canvas: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(canvas);
      getNative().call('canvas_light_attach_to_canvas', args);
  }
  public function canvasLightCreate(): Int {
      var args = new ArrayList();
      return getNative().call('canvas_light_create', args);
  }
  public function canvasLightOccluderAttachToCanvas(occluder: Int, canvas: Int): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(canvas);
      getNative().call('canvas_light_occluder_attach_to_canvas', args);
  }
  public function canvasLightOccluderCreate(): Int {
      var args = new ArrayList();
      return getNative().call('canvas_light_occluder_create', args);
  }
  public function canvasLightOccluderResetPhysicsInterpolation(occluder: Int): Void {
      var args = new ArrayList();
      args.append(occluder);
      getNative().call('canvas_light_occluder_reset_physics_interpolation', args);
  }
  public function canvasLightOccluderSetAsSdfCollision(occluder: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(enable);
      getNative().call('canvas_light_occluder_set_as_sdf_collision', args);
  }
  public function canvasLightOccluderSetEnabled(occluder: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(enabled);
      getNative().call('canvas_light_occluder_set_enabled', args);
  }
  public function canvasLightOccluderSetInterpolated(occluder: Int, interpolated: Bool): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(interpolated);
      getNative().call('canvas_light_occluder_set_interpolated', args);
  }
  public function canvasLightOccluderSetLightMask(occluder: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(mask);
      getNative().call('canvas_light_occluder_set_light_mask', args);
  }
  public function canvasLightOccluderSetPolygon(occluder: Int, polygon: Int): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(polygon);
      getNative().call('canvas_light_occluder_set_polygon', args);
  }
  public function canvasLightOccluderSetTransform(occluder: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(transform);
      getNative().call('canvas_light_occluder_set_transform', args);
  }
  public function canvasLightOccluderTransformPhysicsInterpolation(occluder: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(transform);
      getNative().call('canvas_light_occluder_transform_physics_interpolation', args);
  }
  public function canvasLightResetPhysicsInterpolation(light: Int): Void {
      var args = new ArrayList();
      args.append(light);
      getNative().call('canvas_light_reset_physics_interpolation', args);
  }
  public function canvasLightSetBlendMode(light: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('canvas_light_set_blend_mode', args);
  }
  public function canvasLightSetColor(light: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(color);
      getNative().call('canvas_light_set_color', args);
  }
  public function canvasLightSetEnabled(light: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enabled);
      getNative().call('canvas_light_set_enabled', args);
  }
  public function canvasLightSetEnergy(light: Int, energy: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(energy);
      getNative().call('canvas_light_set_energy', args);
  }
  public function canvasLightSetHeight(light: Int, height: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(height);
      getNative().call('canvas_light_set_height', args);
  }
  public function canvasLightSetInterpolated(light: Int, interpolated: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(interpolated);
      getNative().call('canvas_light_set_interpolated', args);
  }
  public function canvasLightSetItemCullMask(light: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mask);
      getNative().call('canvas_light_set_item_cull_mask', args);
  }
  public function canvasLightSetItemShadowCullMask(light: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mask);
      getNative().call('canvas_light_set_item_shadow_cull_mask', args);
  }
  public function canvasLightSetLayerRange(light: Int, minLayer: Int, maxLayer: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(minLayer);
      args.append(maxLayer);
      getNative().call('canvas_light_set_layer_range', args);
  }
  public function canvasLightSetMode(light: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('canvas_light_set_mode', args);
  }
  public function canvasLightSetShadowColor(light: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(color);
      getNative().call('canvas_light_set_shadow_color', args);
  }
  public function canvasLightSetShadowEnabled(light: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enabled);
      getNative().call('canvas_light_set_shadow_enabled', args);
  }
  public function canvasLightSetShadowFilter(light: Int, filter: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(filter);
      getNative().call('canvas_light_set_shadow_filter', args);
  }
  public function canvasLightSetShadowSmooth(light: Int, smooth: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(smooth);
      getNative().call('canvas_light_set_shadow_smooth', args);
  }
  public function canvasLightSetTexture(light: Int, texture: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(texture);
      getNative().call('canvas_light_set_texture', args);
  }
  public function canvasLightSetTextureOffset(light: Int, offset: Vector2): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(offset);
      getNative().call('canvas_light_set_texture_offset', args);
  }
  public function canvasLightSetTextureScale(light: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(scale);
      getNative().call('canvas_light_set_texture_scale', args);
  }
  public function canvasLightSetTransform(light: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(transform);
      getNative().call('canvas_light_set_transform', args);
  }
  public function canvasLightSetZRange(light: Int, minZ: Int, maxZ: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(minZ);
      args.append(maxZ);
      getNative().call('canvas_light_set_z_range', args);
  }
  public function canvasLightTransformPhysicsInterpolation(light: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(transform);
      getNative().call('canvas_light_transform_physics_interpolation', args);
  }
  public function canvasOccluderPolygonCreate(): Int {
      var args = new ArrayList();
      return getNative().call('canvas_occluder_polygon_create', args);
  }
  public function canvasOccluderPolygonSetCullMode(occluderPolygon: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(occluderPolygon);
      args.append(mode);
      getNative().call('canvas_occluder_polygon_set_cull_mode', args);
  }
  public function canvasOccluderPolygonSetShape(occluderPolygon: Int, shape: TypedArray<Vector2>, closed: Bool): Void {
      var args = new ArrayList();
      args.append(occluderPolygon);
      args.append(shape);
      args.append(closed);
      getNative().call('canvas_occluder_polygon_set_shape', args);
  }
  public function canvasSetDisableScale(disable: Bool): Void {
      var args = new ArrayList();
      args.append(disable);
      getNative().call('canvas_set_disable_scale', args);
  }
  public function canvasSetItemMirroring(canvas: Int, item: Int, mirroring: Vector2): Void {
      var args = new ArrayList();
      args.append(canvas);
      args.append(item);
      args.append(mirroring);
      getNative().call('canvas_set_item_mirroring', args);
  }
  public function canvasSetItemRepeat(item: Int, repeatSize: Vector2, repeatTimes: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(repeatSize);
      args.append(repeatTimes);
      getNative().call('canvas_set_item_repeat', args);
  }
  public function canvasSetModulate(canvas: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(canvas);
      args.append(color);
      getNative().call('canvas_set_modulate', args);
  }
  public function canvasSetShadowTextureSize(size: Int): Void {
      var args = new ArrayList();
      args.append(size);
      getNative().call('canvas_set_shadow_texture_size', args);
  }
  public function canvasTextureCreate(): Int {
      var args = new ArrayList();
      return getNative().call('canvas_texture_create', args);
  }
  public function canvasTextureSetChannel(canvasTexture: Int, channel: Int, texture: Int): Void {
      var args = new ArrayList();
      args.append(canvasTexture);
      args.append(channel);
      args.append(texture);
      getNative().call('canvas_texture_set_channel', args);
  }
  public function canvasTextureSetShadingParameters(canvasTexture: Int, baseColor: Color, shininess: Float): Void {
      var args = new ArrayList();
      args.append(canvasTexture);
      args.append(baseColor);
      args.append(shininess);
      getNative().call('canvas_texture_set_shading_parameters', args);
  }
  public function canvasTextureSetTextureFilter(canvasTexture: Int, filter: Int): Void {
      var args = new ArrayList();
      args.append(canvasTexture);
      args.append(filter);
      getNative().call('canvas_texture_set_texture_filter', args);
  }
  public function canvasTextureSetTextureRepeat(canvasTexture: Int, repeat: Int): Void {
      var args = new ArrayList();
      args.append(canvasTexture);
      args.append(repeat);
      getNative().call('canvas_texture_set_texture_repeat', args);
  }
  public function compositorCreate(): Int {
      var args = new ArrayList();
      return getNative().call('compositor_create', args);
  }
  public function compositorEffectCreate(): Int {
      var args = new ArrayList();
      return getNative().call('compositor_effect_create', args);
  }
  public function compositorEffectSetCallback(effect: Int, callbackType: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(effect);
      args.append(callbackType);
      args.append(callback);
      getNative().call('compositor_effect_set_callback', args);
  }
  public function compositorEffectSetEnabled(effect: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(effect);
      args.append(enabled);
      getNative().call('compositor_effect_set_enabled', args);
  }
  public function compositorEffectSetFlag(effect: Int, flag: Int, set: Bool): Void {
      var args = new ArrayList();
      args.append(effect);
      args.append(flag);
      args.append(set);
      getNative().call('compositor_effect_set_flag', args);
  }
  public function compositorSetCompositorEffects(compositor: Int, effects: Variant): Void {
      var args = new ArrayList();
      args.append(compositor);
      args.append(effects);
      getNative().call('compositor_set_compositor_effects', args);
  }
  public function debugCanvasItemGetRect(item: Int): Rect2 {
      var args = new ArrayList();
      args.append(item);
      return getNative().call('debug_canvas_item_get_rect', args);
  }
  public function decalCreate(): Int {
      var args = new ArrayList();
      return getNative().call('decal_create', args);
  }
  public function decalSetAlbedoMix(decal: Int, albedoMix: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(albedoMix);
      getNative().call('decal_set_albedo_mix', args);
  }
  public function decalSetCullMask(decal: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(mask);
      getNative().call('decal_set_cull_mask', args);
  }
  public function decalSetDistanceFade(decal: Int, enabled: Bool, begin: Float, length: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(enabled);
      args.append(begin);
      args.append(length);
      getNative().call('decal_set_distance_fade', args);
  }
  public function decalSetEmissionEnergy(decal: Int, energy: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(energy);
      getNative().call('decal_set_emission_energy', args);
  }
  public function decalSetFade(decal: Int, above: Float, below: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(above);
      args.append(below);
      getNative().call('decal_set_fade', args);
  }
  public function decalSetModulate(decal: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(color);
      getNative().call('decal_set_modulate', args);
  }
  public function decalSetNormalFade(decal: Int, fade: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(fade);
      getNative().call('decal_set_normal_fade', args);
  }
  public function decalSetSize(decal: Int, size: Vector3): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(size);
      getNative().call('decal_set_size', args);
  }
  public function decalSetTexture(decal: Int, type: Int, texture: Int): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(type);
      args.append(texture);
      getNative().call('decal_set_texture', args);
  }
  public function decalsSetFilter(filter: Int): Void {
      var args = new ArrayList();
      args.append(filter);
      getNative().call('decals_set_filter', args);
  }
  public function directionalLightCreate(): Int {
      var args = new ArrayList();
      return getNative().call('directional_light_create', args);
  }
  public function directionalShadowAtlasSetSize(size: Int, is16Bits: Bool): Void {
      var args = new ArrayList();
      args.append(size);
      args.append(is16Bits);
      getNative().call('directional_shadow_atlas_set_size', args);
  }
  public function directionalSoftShadowFilterSetQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('directional_soft_shadow_filter_set_quality', args);
  }
  public function environmentBakePanorama(environment: Int, bakeIrradiance: Bool, size: Vector2i): Image {
      var args = new ArrayList();
      args.append(environment);
      args.append(bakeIrradiance);
      args.append(size);
      var ref: NativeReference = getNative().call('environment_bake_panorama', args);
      return new Image(ref);
  }
  public function environmentCreate(): Int {
      var args = new ArrayList();
      return getNative().call('environment_create', args);
  }
  public function environmentGlowSetUseBicubicUpscale(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      getNative().call('environment_glow_set_use_bicubic_upscale', args);
  }
  public function environmentSetAdjustment(env: Int, enable: Bool, brightness: Float, contrast: Float, saturation: Float, use1dColorCorrection: Bool, colorCorrection: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(enable);
      args.append(brightness);
      args.append(contrast);
      args.append(saturation);
      args.append(use1dColorCorrection);
      args.append(colorCorrection);
      getNative().call('environment_set_adjustment', args);
  }
  public function environmentSetAmbientLight(env: Int, color: Color, ?ambient: Int, ?energy: Float, ?skyContribution: Float, ?reflectionSource: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(color);
      if (ambient != null) {
          args.append(ambient);
      }
      if (energy != null) {
          args.append(energy);
      }
      if (skyContribution != null) {
          args.append(skyContribution);
      }
      if (reflectionSource != null) {
          args.append(reflectionSource);
      }
      getNative().call('environment_set_ambient_light', args);
  }
  public function environmentSetBackground(env: Int, bg: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(bg);
      getNative().call('environment_set_background', args);
  }
  public function environmentSetBgColor(env: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(color);
      getNative().call('environment_set_bg_color', args);
  }
  public function environmentSetBgEnergy(env: Int, multiplier: Float, exposureValue: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(multiplier);
      args.append(exposureValue);
      getNative().call('environment_set_bg_energy', args);
  }
  public function environmentSetCameraId(env: Int, id: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(id);
      getNative().call('environment_set_camera_id', args);
  }
  public function environmentSetCanvasMaxLayer(env: Int, maxLayer: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(maxLayer);
      getNative().call('environment_set_canvas_max_layer', args);
  }
  public function environmentSetFog(env: Int, enable: Bool, lightColor: Color, lightEnergy: Float, sunScatter: Float, density: Float, height: Float, heightDensity: Float, aerialPerspective: Float, skyAffect: Float, ?fogMode: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(enable);
      args.append(lightColor);
      args.append(lightEnergy);
      args.append(sunScatter);
      args.append(density);
      args.append(height);
      args.append(heightDensity);
      args.append(aerialPerspective);
      args.append(skyAffect);
      if (fogMode != null) {
          args.append(fogMode);
      }
      getNative().call('environment_set_fog', args);
  }
  public function environmentSetFogDepth(env: Int, curve: Float, begin: Float, end: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(curve);
      args.append(begin);
      args.append(end);
      getNative().call('environment_set_fog_depth', args);
  }
  public function environmentSetGlow(env: Int, enable: Bool, levels: TypedArray<Float>, intensity: Float, strength: Float, mix: Float, bloomThreshold: Float, blendMode: Int, hdrBleedThreshold: Float, hdrBleedScale: Float, hdrLuminanceCap: Float, glowMapStrength: Float, glowMap: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(enable);
      args.append(levels);
      args.append(intensity);
      args.append(strength);
      args.append(mix);
      args.append(bloomThreshold);
      args.append(blendMode);
      args.append(hdrBleedThreshold);
      args.append(hdrBleedScale);
      args.append(hdrLuminanceCap);
      args.append(glowMapStrength);
      args.append(glowMap);
      getNative().call('environment_set_glow', args);
  }
  public function environmentSetSdfgi(env: Int, enable: Bool, cascades: Int, minCellSize: Float, yScale: Int, useOcclusion: Bool, bounceFeedback: Float, readSky: Bool, energy: Float, normalBias: Float, probeBias: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(enable);
      args.append(cascades);
      args.append(minCellSize);
      args.append(yScale);
      args.append(useOcclusion);
      args.append(bounceFeedback);
      args.append(readSky);
      args.append(energy);
      args.append(normalBias);
      args.append(probeBias);
      getNative().call('environment_set_sdfgi', args);
  }
  public function environmentSetSdfgiFramesToConverge(frames: Int): Void {
      var args = new ArrayList();
      args.append(frames);
      getNative().call('environment_set_sdfgi_frames_to_converge', args);
  }
  public function environmentSetSdfgiFramesToUpdateLight(frames: Int): Void {
      var args = new ArrayList();
      args.append(frames);
      getNative().call('environment_set_sdfgi_frames_to_update_light', args);
  }
  public function environmentSetSdfgiRayCount(rayCount: Int): Void {
      var args = new ArrayList();
      args.append(rayCount);
      getNative().call('environment_set_sdfgi_ray_count', args);
  }
  public function environmentSetSky(env: Int, sky: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(sky);
      getNative().call('environment_set_sky', args);
  }
  public function environmentSetSkyCustomFov(env: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(scale);
      getNative().call('environment_set_sky_custom_fov', args);
  }
  public function environmentSetSkyOrientation(env: Int, orientation: Basis): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(orientation);
      getNative().call('environment_set_sky_orientation', args);
  }
  public function environmentSetSsao(env: Int, enable: Bool, radius: Float, intensity: Float, power: Float, detail: Float, horizon: Float, sharpness: Float, lightAffect: Float, aoChannelAffect: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(enable);
      args.append(radius);
      args.append(intensity);
      args.append(power);
      args.append(detail);
      args.append(horizon);
      args.append(sharpness);
      args.append(lightAffect);
      args.append(aoChannelAffect);
      getNative().call('environment_set_ssao', args);
  }
  public function environmentSetSsaoQuality(quality: Int, halfSize: Bool, adaptiveTarget: Float, blurPasses: Int, fadeoutFrom: Float, fadeoutTo: Float): Void {
      var args = new ArrayList();
      args.append(quality);
      args.append(halfSize);
      args.append(adaptiveTarget);
      args.append(blurPasses);
      args.append(fadeoutFrom);
      args.append(fadeoutTo);
      getNative().call('environment_set_ssao_quality', args);
  }
  public function environmentSetSsilQuality(quality: Int, halfSize: Bool, adaptiveTarget: Float, blurPasses: Int, fadeoutFrom: Float, fadeoutTo: Float): Void {
      var args = new ArrayList();
      args.append(quality);
      args.append(halfSize);
      args.append(adaptiveTarget);
      args.append(blurPasses);
      args.append(fadeoutFrom);
      args.append(fadeoutTo);
      getNative().call('environment_set_ssil_quality', args);
  }
  public function environmentSetSsr(env: Int, enable: Bool, maxSteps: Int, fadeIn: Float, fadeOut: Float, depthTolerance: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(enable);
      args.append(maxSteps);
      args.append(fadeIn);
      args.append(fadeOut);
      args.append(depthTolerance);
      getNative().call('environment_set_ssr', args);
  }
  public function environmentSetSsrRoughnessQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('environment_set_ssr_roughness_quality', args);
  }
  public function environmentSetTonemap(env: Int, toneMapper: Int, exposure: Float, white: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(toneMapper);
      args.append(exposure);
      args.append(white);
      getNative().call('environment_set_tonemap', args);
  }
  public function environmentSetVolumetricFog(env: Int, enable: Bool, density: Float, albedo: Color, emission: Color, emissionEnergy: Float, anisotropy: Float, length: Float, pDetailSpread: Float, giInject: Float, temporalReprojection: Bool, temporalReprojectionAmount: Float, ambientInject: Float, skyAffect: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(enable);
      args.append(density);
      args.append(albedo);
      args.append(emission);
      args.append(emissionEnergy);
      args.append(anisotropy);
      args.append(length);
      args.append(pDetailSpread);
      args.append(giInject);
      args.append(temporalReprojection);
      args.append(temporalReprojectionAmount);
      args.append(ambientInject);
      args.append(skyAffect);
      getNative().call('environment_set_volumetric_fog', args);
  }
  public function environmentSetVolumetricFogFilterActive(active: Bool): Void {
      var args = new ArrayList();
      args.append(active);
      getNative().call('environment_set_volumetric_fog_filter_active', args);
  }
  public function environmentSetVolumetricFogVolumeSize(size: Int, depth: Int): Void {
      var args = new ArrayList();
      args.append(size);
      args.append(depth);
      getNative().call('environment_set_volumetric_fog_volume_size', args);
  }
  public function fogVolumeCreate(): Int {
      var args = new ArrayList();
      return getNative().call('fog_volume_create', args);
  }
  public function fogVolumeSetMaterial(fogVolume: Int, material: Int): Void {
      var args = new ArrayList();
      args.append(fogVolume);
      args.append(material);
      getNative().call('fog_volume_set_material', args);
  }
  public function fogVolumeSetShape(fogVolume: Int, shape: Int): Void {
      var args = new ArrayList();
      args.append(fogVolume);
      args.append(shape);
      getNative().call('fog_volume_set_shape', args);
  }
  public function fogVolumeSetSize(fogVolume: Int, size: Vector3): Void {
      var args = new ArrayList();
      args.append(fogVolume);
      args.append(size);
      getNative().call('fog_volume_set_size', args);
  }
  public function forceDraw(?swapBuffers: Bool, ?frameStep: Float): Void {
      var args = new ArrayList();
      if (swapBuffers != null) {
          args.append(swapBuffers);
      }
      if (frameStep != null) {
          args.append(frameStep);
      }
      getNative().call('force_draw', args);
  }
  public function forceSync(): Void {
      var args = new ArrayList();
      getNative().call('force_sync', args);
  }
  public function freeRid(rid: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_rid', args);
  }
  public function getCurrentRenderingDriverName(): String {
      var args = new ArrayList();
      return getNative().call('get_current_rendering_driver_name', args);
  }
  public function getCurrentRenderingMethod(): String {
      var args = new ArrayList();
      return getNative().call('get_current_rendering_method', args);
  }
  public function getDefaultClearColor(): Color {
      var args = new ArrayList();
      return getNative().call('get_default_clear_color', args);
  }
  public function getFrameSetupTimeCpu(): Float {
      var args = new ArrayList();
      return getNative().call('get_frame_setup_time_cpu', args);
  }
  public function getRenderingInfo(info: Int): Int {
      var args = new ArrayList();
      args.append(info);
      return getNative().call('get_rendering_info', args);
  }
  public function getTestCube(): Int {
      var args = new ArrayList();
      return getNative().call('get_test_cube', args);
  }
  public function getTestTexture(): Int {
      var args = new ArrayList();
      return getNative().call('get_test_texture', args);
  }
  public function getVideoAdapterApiVersion(): String {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_api_version', args);
  }
  public function getVideoAdapterName(): String {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_name', args);
  }
  public function getVideoAdapterType(): Int {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_type', args);
  }
  public function getVideoAdapterVendor(): String {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_vendor', args);
  }
  public function getWhiteTexture(): Int {
      var args = new ArrayList();
      return getNative().call('get_white_texture', args);
  }
  public function giSetUseHalfResolution(halfResolution: Bool): Void {
      var args = new ArrayList();
      args.append(halfResolution);
      getNative().call('gi_set_use_half_resolution', args);
  }
  public function globalShaderParameterAdd(name: String, type: Int, defaultValue: Variant): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(type);
      args.append(defaultValue);
      getNative().call('global_shader_parameter_add', args);
  }
  public function globalShaderParameterGet(name: String): Variant {
      var args = new ArrayList();
      args.append(name);
      return getNative().call('global_shader_parameter_get', args);
  }
  public function globalShaderParameterGetType(name: String): Int {
      var args = new ArrayList();
      args.append(name);
      return getNative().call('global_shader_parameter_get_type', args);
  }
  public function globalShaderParameterRemove(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      getNative().call('global_shader_parameter_remove', args);
  }
  public function globalShaderParameterSet(name: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(value);
      getNative().call('global_shader_parameter_set', args);
  }
  public function globalShaderParameterSetOverride(name: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(value);
      getNative().call('global_shader_parameter_set_override', args);
  }
  public function hasChanged(): Bool {
      var args = new ArrayList();
      return getNative().call('has_changed', args);
  }
  public function hasFeature(feature: Int): Bool {
      var args = new ArrayList();
      args.append(feature);
      return getNative().call('has_feature', args);
  }
  public function hasOsFeature(feature: String): Bool {
      var args = new ArrayList();
      args.append(feature);
      return getNative().call('has_os_feature', args);
  }
  public function instanceAttachObjectInstanceId(instance: Int, id: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(id);
      getNative().call('instance_attach_object_instance_id', args);
  }
  public function instanceAttachSkeleton(instance: Int, skeleton: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(skeleton);
      getNative().call('instance_attach_skeleton', args);
  }
  public function instanceCreate(): Int {
      var args = new ArrayList();
      return getNative().call('instance_create', args);
  }
  public function instanceCreate2(base: Int, scenario: Int): Int {
      var args = new ArrayList();
      args.append(base);
      args.append(scenario);
      return getNative().call('instance_create2', args);
  }
  public function instanceGeometryGetShaderParameter(instance: Int, parameter: String): Variant {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      return getNative().call('instance_geometry_get_shader_parameter', args);
  }
  public function instanceGeometryGetShaderParameterDefaultValue(instance: Int, parameter: String): Variant {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      return getNative().call('instance_geometry_get_shader_parameter_default_value', args);
  }
  public function instanceGeometrySetCastShadowsSetting(instance: Int, shadowCastingSetting: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(shadowCastingSetting);
      getNative().call('instance_geometry_set_cast_shadows_setting', args);
  }
  public function instanceGeometrySetFlag(instance: Int, flag: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(flag);
      args.append(enabled);
      getNative().call('instance_geometry_set_flag', args);
  }
  public function instanceGeometrySetLightmap(instance: Int, lightmap: Int, lightmapUvScale: Rect2, lightmapSlice: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(lightmap);
      args.append(lightmapUvScale);
      args.append(lightmapSlice);
      getNative().call('instance_geometry_set_lightmap', args);
  }
  public function instanceGeometrySetLodBias(instance: Int, lodBias: Float): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(lodBias);
      getNative().call('instance_geometry_set_lod_bias', args);
  }
  public function instanceGeometrySetMaterialOverlay(instance: Int, material: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(material);
      getNative().call('instance_geometry_set_material_overlay', args);
  }
  public function instanceGeometrySetMaterialOverride(instance: Int, material: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(material);
      getNative().call('instance_geometry_set_material_override', args);
  }
  public function instanceGeometrySetShaderParameter(instance: Int, parameter: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      args.append(value);
      getNative().call('instance_geometry_set_shader_parameter', args);
  }
  public function instanceGeometrySetTransparency(instance: Int, transparency: Float): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(transparency);
      getNative().call('instance_geometry_set_transparency', args);
  }
  public function instanceGeometrySetVisibilityRange(instance: Int, min: Float, max: Float, minMargin: Float, maxMargin: Float, fadeMode: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(min);
      args.append(max);
      args.append(minMargin);
      args.append(maxMargin);
      args.append(fadeMode);
      getNative().call('instance_geometry_set_visibility_range', args);
  }
  public function instanceSetBase(instance: Int, base: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(base);
      getNative().call('instance_set_base', args);
  }
  public function instanceSetBlendShapeWeight(instance: Int, shape: Int, weight: Float): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(shape);
      args.append(weight);
      getNative().call('instance_set_blend_shape_weight', args);
  }
  public function instanceSetCustomAabb(instance: Int, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(aabb);
      getNative().call('instance_set_custom_aabb', args);
  }
  public function instanceSetExtraVisibilityMargin(instance: Int, margin: Float): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(margin);
      getNative().call('instance_set_extra_visibility_margin', args);
  }
  public function instanceSetIgnoreCulling(instance: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(enabled);
      getNative().call('instance_set_ignore_culling', args);
  }
  public function instanceSetLayerMask(instance: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(mask);
      getNative().call('instance_set_layer_mask', args);
  }
  public function instanceSetPivotData(instance: Int, sortingOffset: Float, useAabbCenter: Bool): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(sortingOffset);
      args.append(useAabbCenter);
      getNative().call('instance_set_pivot_data', args);
  }
  public function instanceSetScenario(instance: Int, scenario: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(scenario);
      getNative().call('instance_set_scenario', args);
  }
  public function instanceSetSurfaceOverrideMaterial(instance: Int, surface: Int, material: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(surface);
      args.append(material);
      getNative().call('instance_set_surface_override_material', args);
  }
  public function instanceSetTransform(instance: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(transform);
      getNative().call('instance_set_transform', args);
  }
  public function instanceSetVisibilityParent(instance: Int, parent: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(parent);
      getNative().call('instance_set_visibility_parent', args);
  }
  public function instanceSetVisible(instance: Int, visible: Bool): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(visible);
      getNative().call('instance_set_visible', args);
  }
  public function instanceTeleport(instance: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      getNative().call('instance_teleport', args);
  }
  public function instancesCullAabb(aabb: Variant, ?scenario: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(aabb);
      if (scenario != null) {
          args.append(scenario);
      }
      return getNative().call('instances_cull_aabb', args);
  }
  public function instancesCullConvex(convex: Variant, ?scenario: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(convex);
      if (scenario != null) {
          args.append(scenario);
      }
      return getNative().call('instances_cull_convex', args);
  }
  public function instancesCullRay(from: Vector3, to: Vector3, ?scenario: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      if (scenario != null) {
          args.append(scenario);
      }
      return getNative().call('instances_cull_ray', args);
  }
  public function isOnRenderThread(): Bool {
      var args = new ArrayList();
      return getNative().call('is_on_render_thread', args);
  }
  public function lightDirectionalSetBlendSplits(light: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enable);
      getNative().call('light_directional_set_blend_splits', args);
  }
  public function lightDirectionalSetShadowMode(light: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('light_directional_set_shadow_mode', args);
  }
  public function lightDirectionalSetSkyMode(light: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('light_directional_set_sky_mode', args);
  }
  public function lightOmniSetShadowMode(light: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('light_omni_set_shadow_mode', args);
  }
  public function lightProjectorsSetFilter(filter: Int): Void {
      var args = new ArrayList();
      args.append(filter);
      getNative().call('light_projectors_set_filter', args);
  }
  public function lightSetBakeMode(light: Int, bakeMode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(bakeMode);
      getNative().call('light_set_bake_mode', args);
  }
  public function lightSetColor(light: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(color);
      getNative().call('light_set_color', args);
  }
  public function lightSetCullMask(light: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mask);
      getNative().call('light_set_cull_mask', args);
  }
  public function lightSetDistanceFade(decal: Int, enabled: Bool, begin: Float, shadow: Float, length: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(enabled);
      args.append(begin);
      args.append(shadow);
      args.append(length);
      getNative().call('light_set_distance_fade', args);
  }
  public function lightSetMaxSdfgiCascade(light: Int, cascade: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(cascade);
      getNative().call('light_set_max_sdfgi_cascade', args);
  }
  public function lightSetNegative(light: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enable);
      getNative().call('light_set_negative', args);
  }
  public function lightSetParam(light: Int, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(param);
      args.append(value);
      getNative().call('light_set_param', args);
  }
  public function lightSetProjector(light: Int, texture: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(texture);
      getNative().call('light_set_projector', args);
  }
  public function lightSetReverseCullFaceMode(light: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enabled);
      getNative().call('light_set_reverse_cull_face_mode', args);
  }
  public function lightSetShadow(light: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enabled);
      getNative().call('light_set_shadow', args);
  }
  public function lightSetShadowCasterMask(light: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mask);
      getNative().call('light_set_shadow_caster_mask', args);
  }
  public function lightmapCreate(): Int {
      var args = new ArrayList();
      return getNative().call('lightmap_create', args);
  }
  public function lightmapGetProbeCaptureBspTree(lightmap: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(lightmap);
      return getNative().call('lightmap_get_probe_capture_bsp_tree', args);
  }
  public function lightmapGetProbeCapturePoints(lightmap: Int): TypedArray<Vector3> {
      var args = new ArrayList();
      args.append(lightmap);
      return getNative().call('lightmap_get_probe_capture_points', args);
  }
  public function lightmapGetProbeCaptureSh(lightmap: Int): TypedArray<Color> {
      var args = new ArrayList();
      args.append(lightmap);
      return getNative().call('lightmap_get_probe_capture_sh', args);
  }
  public function lightmapGetProbeCaptureTetrahedra(lightmap: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(lightmap);
      return getNative().call('lightmap_get_probe_capture_tetrahedra', args);
  }
  public function lightmapSetBakedExposureNormalization(lightmap: Int, bakedExposure: Float): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(bakedExposure);
      getNative().call('lightmap_set_baked_exposure_normalization', args);
  }
  public function lightmapSetProbeBounds(lightmap: Int, bounds: Variant): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(bounds);
      getNative().call('lightmap_set_probe_bounds', args);
  }
  public function lightmapSetProbeCaptureData(lightmap: Int, points: TypedArray<Vector3>, pointSh: TypedArray<Color>, tetrahedra: TypedArray<Int>, bspTree: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(points);
      args.append(pointSh);
      args.append(tetrahedra);
      args.append(bspTree);
      getNative().call('lightmap_set_probe_capture_data', args);
  }
  public function lightmapSetProbeCaptureUpdateSpeed(speed: Float): Void {
      var args = new ArrayList();
      args.append(speed);
      getNative().call('lightmap_set_probe_capture_update_speed', args);
  }
  public function lightmapSetProbeInterior(lightmap: Int, interior: Bool): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(interior);
      getNative().call('lightmap_set_probe_interior', args);
  }
  public function lightmapSetTextures(lightmap: Int, light: Int, usesSh: Bool): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(light);
      args.append(usesSh);
      getNative().call('lightmap_set_textures', args);
  }
  public function lightmapsSetBicubicFilter(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      getNative().call('lightmaps_set_bicubic_filter', args);
  }
  public function makeSphereMesh(latitudes: Int, longitudes: Int, radius: Float): Int {
      var args = new ArrayList();
      args.append(latitudes);
      args.append(longitudes);
      args.append(radius);
      return getNative().call('make_sphere_mesh', args);
  }
  public function materialCreate(): Int {
      var args = new ArrayList();
      return getNative().call('material_create', args);
  }
  public function materialGetParam(material: Int, parameter: String): Variant {
      var args = new ArrayList();
      args.append(material);
      args.append(parameter);
      return getNative().call('material_get_param', args);
  }
  public function materialSetNextPass(material: Int, nextMaterial: Int): Void {
      var args = new ArrayList();
      args.append(material);
      args.append(nextMaterial);
      getNative().call('material_set_next_pass', args);
  }
  public function materialSetParam(material: Int, parameter: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(material);
      args.append(parameter);
      args.append(value);
      getNative().call('material_set_param', args);
  }
  public function materialSetRenderPriority(material: Int, priority: Int): Void {
      var args = new ArrayList();
      args.append(material);
      args.append(priority);
      getNative().call('material_set_render_priority', args);
  }
  public function materialSetShader(shaderMaterial: Int, shader: Int): Void {
      var args = new ArrayList();
      args.append(shaderMaterial);
      args.append(shader);
      getNative().call('material_set_shader', args);
  }
  public function meshAddSurface(mesh: Int, surface: Dictionary): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      getNative().call('mesh_add_surface', args);
  }
  public function meshAddSurfaceFromArrays(mesh: Int, primitive: Int, arrays: ArrayList, ?blendShapes: ArrayList, ?lods: Dictionary, ?compressFormat: Int): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(primitive);
      args.append(arrays);
      if (blendShapes != null) {
          args.append(blendShapes);
      }
      if (lods != null) {
          args.append(lods);
      }
      if (compressFormat != null) {
          args.append(compressFormat);
      }
      getNative().call('mesh_add_surface_from_arrays', args);
  }
  public function meshClear(mesh: Int): Void {
      var args = new ArrayList();
      args.append(mesh);
      getNative().call('mesh_clear', args);
  }
  public function meshCreate(): Int {
      var args = new ArrayList();
      return getNative().call('mesh_create', args);
  }
  public function meshCreateFromSurfaces(surfaces: Variant, ?blendShapeCount: Int): Int {
      var args = new ArrayList();
      args.append(surfaces);
      if (blendShapeCount != null) {
          args.append(blendShapeCount);
      }
      return getNative().call('mesh_create_from_surfaces', args);
  }
  public function meshGetBlendShapeCount(mesh: Int): Int {
      var args = new ArrayList();
      args.append(mesh);
      return getNative().call('mesh_get_blend_shape_count', args);
  }
  public function meshGetBlendShapeMode(mesh: Int): Int {
      var args = new ArrayList();
      args.append(mesh);
      return getNative().call('mesh_get_blend_shape_mode', args);
  }
  public function meshGetSurface(mesh: Int, surface: Int): Dictionary {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      return getNative().call('mesh_get_surface', args);
  }
  public function meshGetSurfaceCount(mesh: Int): Int {
      var args = new ArrayList();
      args.append(mesh);
      return getNative().call('mesh_get_surface_count', args);
  }
  public function meshSetBlendShapeMode(mesh: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(mode);
      getNative().call('mesh_set_blend_shape_mode', args);
  }
  public function meshSetCustomAabb(mesh: Int, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(aabb);
      getNative().call('mesh_set_custom_aabb', args);
  }
  public function meshSetShadowMesh(mesh: Int, shadowMesh: Int): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(shadowMesh);
      getNative().call('mesh_set_shadow_mesh', args);
  }
  public function meshSurfaceGetArrays(mesh: Int, surface: Int): ArrayList {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      return getNative().call('mesh_surface_get_arrays', args);
  }
  public function meshSurfaceGetFormatAttributeStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_attribute_stride', args);
  }
  public function meshSurfaceGetFormatIndexStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_index_stride', args);
  }
  public function meshSurfaceGetFormatNormalTangentStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_normal_tangent_stride', args);
  }
  public function meshSurfaceGetFormatOffset(format: Int, vertexCount: Int, arrayIndex: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      args.append(arrayIndex);
      return getNative().call('mesh_surface_get_format_offset', args);
  }
  public function meshSurfaceGetFormatSkinStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_skin_stride', args);
  }
  public function meshSurfaceGetFormatVertexStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_vertex_stride', args);
  }
  public function meshSurfaceGetMaterial(mesh: Int, surface: Int): Int {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      return getNative().call('mesh_surface_get_material', args);
  }
  public function meshSurfaceRemove(mesh: Int, surface: Int): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      getNative().call('mesh_surface_remove', args);
  }
  public function meshSurfaceSetMaterial(mesh: Int, surface: Int, material: Int): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(material);
      getNative().call('mesh_surface_set_material', args);
  }
  public function meshSurfaceUpdateAttributeRegion(mesh: Int, surface: Int, offset: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(offset);
      args.append(data);
      getNative().call('mesh_surface_update_attribute_region', args);
  }
  public function meshSurfaceUpdateIndexRegion(mesh: Int, surface: Int, offset: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(offset);
      args.append(data);
      getNative().call('mesh_surface_update_index_region', args);
  }
  public function meshSurfaceUpdateSkinRegion(mesh: Int, surface: Int, offset: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(offset);
      args.append(data);
      getNative().call('mesh_surface_update_skin_region', args);
  }
  public function meshSurfaceUpdateVertexRegion(mesh: Int, surface: Int, offset: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(offset);
      args.append(data);
      getNative().call('mesh_surface_update_vertex_region', args);
  }
  public function multimeshAllocateData(multimesh: Int, instances: Int, transformFormat: Int, ?colorFormat: Bool, ?customDataFormat: Bool, ?useIndirect: Bool): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(instances);
      args.append(transformFormat);
      if (colorFormat != null) {
          args.append(colorFormat);
      }
      if (customDataFormat != null) {
          args.append(customDataFormat);
      }
      if (useIndirect != null) {
          args.append(useIndirect);
      }
      getNative().call('multimesh_allocate_data', args);
  }
  public function multimeshCreate(): Int {
      var args = new ArrayList();
      return getNative().call('multimesh_create', args);
  }
  public function multimeshGetBuffer(multimesh: Int): TypedArray<Float> {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_buffer', args);
  }
  public function multimeshGetBufferRdRid(multimesh: Int): Int {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_buffer_rd_rid', args);
  }
  public function multimeshGetCommandBufferRdRid(multimesh: Int): Int {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_command_buffer_rd_rid', args);
  }
  public function multimeshGetInstanceCount(multimesh: Int): Int {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_instance_count', args);
  }
  public function multimeshGetMesh(multimesh: Int): Int {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_mesh', args);
  }
  public function multimeshGetVisibleInstances(multimesh: Int): Int {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_visible_instances', args);
  }
  public function multimeshInstanceGetColor(multimesh: Int, index: Int): Color {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      return getNative().call('multimesh_instance_get_color', args);
  }
  public function multimeshInstanceGetCustomData(multimesh: Int, index: Int): Color {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      return getNative().call('multimesh_instance_get_custom_data', args);
  }
  public function multimeshInstanceResetPhysicsInterpolation(multimesh: Int, index: Int): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      getNative().call('multimesh_instance_reset_physics_interpolation', args);
  }
  public function multimeshInstanceSetColor(multimesh: Int, index: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      args.append(color);
      getNative().call('multimesh_instance_set_color', args);
  }
  public function multimeshInstanceSetCustomData(multimesh: Int, index: Int, customData: Color): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      args.append(customData);
      getNative().call('multimesh_instance_set_custom_data', args);
  }
  public function multimeshInstanceSetTransform(multimesh: Int, index: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      args.append(transform);
      getNative().call('multimesh_instance_set_transform', args);
  }
  public function multimeshInstanceSetTransform2d(multimesh: Int, index: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      args.append(transform);
      getNative().call('multimesh_instance_set_transform_2d', args);
  }
  public function multimeshSetBuffer(multimesh: Int, buffer: TypedArray<Float>): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(buffer);
      getNative().call('multimesh_set_buffer', args);
  }
  public function multimeshSetBufferInterpolated(multimesh: Int, buffer: TypedArray<Float>, bufferPrevious: TypedArray<Float>): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(buffer);
      args.append(bufferPrevious);
      getNative().call('multimesh_set_buffer_interpolated', args);
  }
  public function multimeshSetCustomAabb(multimesh: Int, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(aabb);
      getNative().call('multimesh_set_custom_aabb', args);
  }
  public function multimeshSetMesh(multimesh: Int, mesh: Int): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(mesh);
      getNative().call('multimesh_set_mesh', args);
  }
  public function multimeshSetPhysicsInterpolated(multimesh: Int, interpolated: Bool): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(interpolated);
      getNative().call('multimesh_set_physics_interpolated', args);
  }
  public function multimeshSetPhysicsInterpolationQuality(multimesh: Int, quality: Int): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(quality);
      getNative().call('multimesh_set_physics_interpolation_quality', args);
  }
  public function multimeshSetVisibleInstances(multimesh: Int, visible: Int): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(visible);
      getNative().call('multimesh_set_visible_instances', args);
  }
  public function occluderCreate(): Int {
      var args = new ArrayList();
      return getNative().call('occluder_create', args);
  }
  public function occluderSetMesh(occluder: Int, vertices: TypedArray<Vector3>, indices: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(vertices);
      args.append(indices);
      getNative().call('occluder_set_mesh', args);
  }
  public function omniLightCreate(): Int {
      var args = new ArrayList();
      return getNative().call('omni_light_create', args);
  }
  public function particlesCollisionCreate(): Int {
      var args = new ArrayList();
      return getNative().call('particles_collision_create', args);
  }
  public function particlesCollisionHeightFieldUpdate(particlesCollision: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      getNative().call('particles_collision_height_field_update', args);
  }
  public function particlesCollisionSetAttractorAttenuation(particlesCollision: Int, curve: Float): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(curve);
      getNative().call('particles_collision_set_attractor_attenuation', args);
  }
  public function particlesCollisionSetAttractorDirectionality(particlesCollision: Int, amount: Float): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(amount);
      getNative().call('particles_collision_set_attractor_directionality', args);
  }
  public function particlesCollisionSetAttractorStrength(particlesCollision: Int, strength: Float): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(strength);
      getNative().call('particles_collision_set_attractor_strength', args);
  }
  public function particlesCollisionSetBoxExtents(particlesCollision: Int, extents: Vector3): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(extents);
      getNative().call('particles_collision_set_box_extents', args);
  }
  public function particlesCollisionSetCollisionType(particlesCollision: Int, type: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(type);
      getNative().call('particles_collision_set_collision_type', args);
  }
  public function particlesCollisionSetCullMask(particlesCollision: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(mask);
      getNative().call('particles_collision_set_cull_mask', args);
  }
  public function particlesCollisionSetFieldTexture(particlesCollision: Int, texture: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(texture);
      getNative().call('particles_collision_set_field_texture', args);
  }
  public function particlesCollisionSetHeightFieldMask(particlesCollision: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(mask);
      getNative().call('particles_collision_set_height_field_mask', args);
  }
  public function particlesCollisionSetHeightFieldResolution(particlesCollision: Int, resolution: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(resolution);
      getNative().call('particles_collision_set_height_field_resolution', args);
  }
  public function particlesCollisionSetSphereRadius(particlesCollision: Int, radius: Float): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(radius);
      getNative().call('particles_collision_set_sphere_radius', args);
  }
  public function particlesCreate(): Int {
      var args = new ArrayList();
      return getNative().call('particles_create', args);
  }
  public function particlesEmit(particles: Int, transform: Variant, velocity: Vector3, color: Color, custom: Color, emitFlags: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(transform);
      args.append(velocity);
      args.append(color);
      args.append(custom);
      args.append(emitFlags);
      getNative().call('particles_emit', args);
  }
  public function particlesGetEmitting(particles: Int): Bool {
      var args = new ArrayList();
      args.append(particles);
      return getNative().call('particles_get_emitting', args);
  }
  public function particlesIsInactive(particles: Int): Bool {
      var args = new ArrayList();
      args.append(particles);
      return getNative().call('particles_is_inactive', args);
  }
  public function particlesRequestProcess(particles: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      getNative().call('particles_request_process', args);
  }
  public function particlesRequestProcessTime(particles: Int, time: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(time);
      getNative().call('particles_request_process_time', args);
  }
  public function particlesRestart(particles: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      getNative().call('particles_restart', args);
  }
  public function particlesSetAmount(particles: Int, amount: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(amount);
      getNative().call('particles_set_amount', args);
  }
  public function particlesSetAmountRatio(particles: Int, ratio: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(ratio);
      getNative().call('particles_set_amount_ratio', args);
  }
  public function particlesSetCollisionBaseSize(particles: Int, size: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(size);
      getNative().call('particles_set_collision_base_size', args);
  }
  public function particlesSetCustomAabb(particles: Int, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(aabb);
      getNative().call('particles_set_custom_aabb', args);
  }
  public function particlesSetDrawOrder(particles: Int, order: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(order);
      getNative().call('particles_set_draw_order', args);
  }
  public function particlesSetDrawPassMesh(particles: Int, pass: Int, mesh: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(pass);
      args.append(mesh);
      getNative().call('particles_set_draw_pass_mesh', args);
  }
  public function particlesSetDrawPasses(particles: Int, count: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(count);
      getNative().call('particles_set_draw_passes', args);
  }
  public function particlesSetEmissionTransform(particles: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(transform);
      getNative().call('particles_set_emission_transform', args);
  }
  public function particlesSetEmitterVelocity(particles: Int, velocity: Vector3): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(velocity);
      getNative().call('particles_set_emitter_velocity', args);
  }
  public function particlesSetEmitting(particles: Int, emitting: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(emitting);
      getNative().call('particles_set_emitting', args);
  }
  public function particlesSetExplosivenessRatio(particles: Int, ratio: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(ratio);
      getNative().call('particles_set_explosiveness_ratio', args);
  }
  public function particlesSetFixedFps(particles: Int, fps: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(fps);
      getNative().call('particles_set_fixed_fps', args);
  }
  public function particlesSetFractionalDelta(particles: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(enable);
      getNative().call('particles_set_fractional_delta', args);
  }
  public function particlesSetInterpToEnd(particles: Int, factor: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(factor);
      getNative().call('particles_set_interp_to_end', args);
  }
  public function particlesSetInterpolate(particles: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(enable);
      getNative().call('particles_set_interpolate', args);
  }
  public function particlesSetLifetime(particles: Int, lifetime: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(lifetime);
      getNative().call('particles_set_lifetime', args);
  }
  public function particlesSetMode(particles: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(mode);
      getNative().call('particles_set_mode', args);
  }
  public function particlesSetOneShot(particles: Int, oneShot: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(oneShot);
      getNative().call('particles_set_one_shot', args);
  }
  public function particlesSetPreProcessTime(particles: Int, time: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(time);
      getNative().call('particles_set_pre_process_time', args);
  }
  public function particlesSetProcessMaterial(particles: Int, material: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(material);
      getNative().call('particles_set_process_material', args);
  }
  public function particlesSetRandomnessRatio(particles: Int, ratio: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(ratio);
      getNative().call('particles_set_randomness_ratio', args);
  }
  public function particlesSetSpeedScale(particles: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(scale);
      getNative().call('particles_set_speed_scale', args);
  }
  public function particlesSetSubemitter(particles: Int, subemitterParticles: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(subemitterParticles);
      getNative().call('particles_set_subemitter', args);
  }
  public function particlesSetTrailBindPoses(particles: Int, bindPoses: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(bindPoses);
      getNative().call('particles_set_trail_bind_poses', args);
  }
  public function particlesSetTrails(particles: Int, enable: Bool, lengthSec: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(enable);
      args.append(lengthSec);
      getNative().call('particles_set_trails', args);
  }
  public function particlesSetTransformAlign(particles: Int, align: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(align);
      getNative().call('particles_set_transform_align', args);
  }
  public function particlesSetUseLocalCoordinates(particles: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(enable);
      getNative().call('particles_set_use_local_coordinates', args);
  }
  public function positionalSoftShadowFilterSetQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('positional_soft_shadow_filter_set_quality', args);
  }
  public function reflectionProbeCreate(): Int {
      var args = new ArrayList();
      return getNative().call('reflection_probe_create', args);
  }
  public function reflectionProbeSetAmbientColor(probe: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(color);
      getNative().call('reflection_probe_set_ambient_color', args);
  }
  public function reflectionProbeSetAmbientEnergy(probe: Int, energy: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(energy);
      getNative().call('reflection_probe_set_ambient_energy', args);
  }
  public function reflectionProbeSetAmbientMode(probe: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(mode);
      getNative().call('reflection_probe_set_ambient_mode', args);
  }
  public function reflectionProbeSetAsInterior(probe: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(enable);
      getNative().call('reflection_probe_set_as_interior', args);
  }
  public function reflectionProbeSetBlendDistance(probe: Int, blendDistance: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(blendDistance);
      getNative().call('reflection_probe_set_blend_distance', args);
  }
  public function reflectionProbeSetCullMask(probe: Int, layers: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(layers);
      getNative().call('reflection_probe_set_cull_mask', args);
  }
  public function reflectionProbeSetEnableBoxProjection(probe: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(enable);
      getNative().call('reflection_probe_set_enable_box_projection', args);
  }
  public function reflectionProbeSetEnableShadows(probe: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(enable);
      getNative().call('reflection_probe_set_enable_shadows', args);
  }
  public function reflectionProbeSetIntensity(probe: Int, intensity: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(intensity);
      getNative().call('reflection_probe_set_intensity', args);
  }
  public function reflectionProbeSetMaxDistance(probe: Int, distance: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(distance);
      getNative().call('reflection_probe_set_max_distance', args);
  }
  public function reflectionProbeSetMeshLodThreshold(probe: Int, pixels: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(pixels);
      getNative().call('reflection_probe_set_mesh_lod_threshold', args);
  }
  public function reflectionProbeSetOriginOffset(probe: Int, offset: Vector3): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(offset);
      getNative().call('reflection_probe_set_origin_offset', args);
  }
  public function reflectionProbeSetReflectionMask(probe: Int, layers: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(layers);
      getNative().call('reflection_probe_set_reflection_mask', args);
  }
  public function reflectionProbeSetResolution(probe: Int, resolution: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(resolution);
      getNative().call('reflection_probe_set_resolution', args);
  }
  public function reflectionProbeSetSize(probe: Int, size: Vector3): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(size);
      getNative().call('reflection_probe_set_size', args);
  }
  public function reflectionProbeSetUpdateMode(probe: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(mode);
      getNative().call('reflection_probe_set_update_mode', args);
  }
  public function requestFrameDrawnCallback(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      getNative().call('request_frame_drawn_callback', args);
  }
  public function scenarioCreate(): Int {
      var args = new ArrayList();
      return getNative().call('scenario_create', args);
  }
  public function scenarioSetCameraAttributes(scenario: Int, effects: Int): Void {
      var args = new ArrayList();
      args.append(scenario);
      args.append(effects);
      getNative().call('scenario_set_camera_attributes', args);
  }
  public function scenarioSetCompositor(scenario: Int, compositor: Int): Void {
      var args = new ArrayList();
      args.append(scenario);
      args.append(compositor);
      getNative().call('scenario_set_compositor', args);
  }
  public function scenarioSetEnvironment(scenario: Int, environment: Int): Void {
      var args = new ArrayList();
      args.append(scenario);
      args.append(environment);
      getNative().call('scenario_set_environment', args);
  }
  public function scenarioSetFallbackEnvironment(scenario: Int, environment: Int): Void {
      var args = new ArrayList();
      args.append(scenario);
      args.append(environment);
      getNative().call('scenario_set_fallback_environment', args);
  }
  public function screenSpaceRoughnessLimiterSetActive(enable: Bool, amount: Float, limit: Float): Void {
      var args = new ArrayList();
      args.append(enable);
      args.append(amount);
      args.append(limit);
      getNative().call('screen_space_roughness_limiter_set_active', args);
  }
  public function setBootImage(image: Image, color: Color, scale: Bool, ?useFilter: Bool): Void {
      var args = new ArrayList();
      args.append(image.native);
      args.append(color);
      args.append(scale);
      if (useFilter != null) {
          args.append(useFilter);
      }
      getNative().call('set_boot_image', args);
  }
  public function setDebugGenerateWireframes(generate: Bool): Void {
      var args = new ArrayList();
      args.append(generate);
      getNative().call('set_debug_generate_wireframes', args);
  }
  public function setDefaultClearColor(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      getNative().call('set_default_clear_color', args);
  }
  public function shaderCreate(): Int {
      var args = new ArrayList();
      return getNative().call('shader_create', args);
  }
  public function shaderGetCode(shader: Int): String {
      var args = new ArrayList();
      args.append(shader);
      return getNative().call('shader_get_code', args);
  }
  public function shaderGetDefaultTextureParameter(shader: Int, name: String, ?index: Int): Int {
      var args = new ArrayList();
      args.append(shader);
      args.append(name);
      if (index != null) {
          args.append(index);
      }
      return getNative().call('shader_get_default_texture_parameter', args);
  }
  public function shaderGetParameterDefault(shader: Int, name: String): Variant {
      var args = new ArrayList();
      args.append(shader);
      args.append(name);
      return getNative().call('shader_get_parameter_default', args);
  }
  public function shaderSetCode(shader: Int, code: String): Void {
      var args = new ArrayList();
      args.append(shader);
      args.append(code);
      getNative().call('shader_set_code', args);
  }
  public function shaderSetDefaultTextureParameter(shader: Int, name: String, texture: Int, ?index: Int): Void {
      var args = new ArrayList();
      args.append(shader);
      args.append(name);
      args.append(texture);
      if (index != null) {
          args.append(index);
      }
      getNative().call('shader_set_default_texture_parameter', args);
  }
  public function shaderSetPathHint(shader: Int, path: String): Void {
      var args = new ArrayList();
      args.append(shader);
      args.append(path);
      getNative().call('shader_set_path_hint', args);
  }
  public function skeletonAllocateData(skeleton: Int, bones: Int, ?is2dSkeleton: Bool): Void {
      var args = new ArrayList();
      args.append(skeleton);
      args.append(bones);
      if (is2dSkeleton != null) {
          args.append(is2dSkeleton);
      }
      getNative().call('skeleton_allocate_data', args);
  }
  public function skeletonBoneSetTransform(skeleton: Int, bone: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(skeleton);
      args.append(bone);
      args.append(transform);
      getNative().call('skeleton_bone_set_transform', args);
  }
  public function skeletonBoneSetTransform2d(skeleton: Int, bone: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(skeleton);
      args.append(bone);
      args.append(transform);
      getNative().call('skeleton_bone_set_transform_2d', args);
  }
  public function skeletonCreate(): Int {
      var args = new ArrayList();
      return getNative().call('skeleton_create', args);
  }
  public function skeletonGetBoneCount(skeleton: Int): Int {
      var args = new ArrayList();
      args.append(skeleton);
      return getNative().call('skeleton_get_bone_count', args);
  }
  public function skeletonSetBaseTransform2d(skeleton: Int, baseTransform: Variant): Void {
      var args = new ArrayList();
      args.append(skeleton);
      args.append(baseTransform);
      getNative().call('skeleton_set_base_transform_2d', args);
  }
  public function skyBakePanorama(sky: Int, energy: Float, bakeIrradiance: Bool, size: Vector2i): Image {
      var args = new ArrayList();
      args.append(sky);
      args.append(energy);
      args.append(bakeIrradiance);
      args.append(size);
      var ref: NativeReference = getNative().call('sky_bake_panorama', args);
      return new Image(ref);
  }
  public function skyCreate(): Int {
      var args = new ArrayList();
      return getNative().call('sky_create', args);
  }
  public function skySetMaterial(sky: Int, material: Int): Void {
      var args = new ArrayList();
      args.append(sky);
      args.append(material);
      getNative().call('sky_set_material', args);
  }
  public function skySetMode(sky: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(sky);
      args.append(mode);
      getNative().call('sky_set_mode', args);
  }
  public function skySetRadianceSize(sky: Int, radianceSize: Int): Void {
      var args = new ArrayList();
      args.append(sky);
      args.append(radianceSize);
      getNative().call('sky_set_radiance_size', args);
  }
  public function spotLightCreate(): Int {
      var args = new ArrayList();
      return getNative().call('spot_light_create', args);
  }
  public function subSurfaceScatteringSetQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('sub_surface_scattering_set_quality', args);
  }
  public function subSurfaceScatteringSetScale(scale: Float, depthScale: Float): Void {
      var args = new ArrayList();
      args.append(scale);
      args.append(depthScale);
      getNative().call('sub_surface_scattering_set_scale', args);
  }
  public function texture2dCreate(image: Image): Int {
      var args = new ArrayList();
      args.append(image.native);
      return getNative().call('texture_2d_create', args);
  }
  public function texture2dGet(texture: Int): Image {
      var args = new ArrayList();
      args.append(texture);
      var ref: NativeReference = getNative().call('texture_2d_get', args);
      return new Image(ref);
  }
  public function texture2dLayerGet(texture: Int, layer: Int): Image {
      var args = new ArrayList();
      args.append(texture);
      args.append(layer);
      var ref: NativeReference = getNative().call('texture_2d_layer_get', args);
      return new Image(ref);
  }
  public function texture2dLayeredCreate(layers: Variant, layeredType: Int): Int {
      var args = new ArrayList();
      args.append(layers);
      args.append(layeredType);
      return getNative().call('texture_2d_layered_create', args);
  }
  public function texture2dLayeredPlaceholderCreate(layeredType: Int): Int {
      var args = new ArrayList();
      args.append(layeredType);
      return getNative().call('texture_2d_layered_placeholder_create', args);
  }
  public function texture2dPlaceholderCreate(): Int {
      var args = new ArrayList();
      return getNative().call('texture_2d_placeholder_create', args);
  }
  public function texture2dUpdate(texture: Int, image: Image, layer: Int): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(image.native);
      args.append(layer);
      getNative().call('texture_2d_update', args);
  }
  public function texture3dCreate(format: Int, width: Int, height: Int, depth: Int, mipmaps: Bool, data: Variant): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(width);
      args.append(height);
      args.append(depth);
      args.append(mipmaps);
      args.append(data);
      return getNative().call('texture_3d_create', args);
  }
  public function texture3dPlaceholderCreate(): Int {
      var args = new ArrayList();
      return getNative().call('texture_3d_placeholder_create', args);
  }
  public function texture3dUpdate(texture: Int, data: Variant): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(data);
      getNative().call('texture_3d_update', args);
  }
  public function textureCreateFromNativeHandle(type: Int, format: Int, nativeHandle: Int, width: Int, height: Int, depth: Int, ?layers: Int, ?layeredType: Int): Int {
      var args = new ArrayList();
      args.append(type);
      args.append(format);
      args.append(nativeHandle);
      args.append(width);
      args.append(height);
      args.append(depth);
      if (layers != null) {
          args.append(layers);
      }
      if (layeredType != null) {
          args.append(layeredType);
      }
      return getNative().call('texture_create_from_native_handle', args);
  }
  public function textureGetFormat(texture: Int): Int {
      var args = new ArrayList();
      args.append(texture);
      return getNative().call('texture_get_format', args);
  }
  public function textureGetNativeHandle(texture: Int, ?srgb: Bool): Int {
      var args = new ArrayList();
      args.append(texture);
      if (srgb != null) {
          args.append(srgb);
      }
      return getNative().call('texture_get_native_handle', args);
  }
  public function textureGetPath(texture: Int): String {
      var args = new ArrayList();
      args.append(texture);
      return getNative().call('texture_get_path', args);
  }
  public function textureGetRdTexture(texture: Int, ?srgb: Bool): Int {
      var args = new ArrayList();
      args.append(texture);
      if (srgb != null) {
          args.append(srgb);
      }
      return getNative().call('texture_get_rd_texture', args);
  }
  public function textureProxyCreate(base: Int): Int {
      var args = new ArrayList();
      args.append(base);
      return getNative().call('texture_proxy_create', args);
  }
  public function textureProxyUpdate(texture: Int, proxyTo: Int): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(proxyTo);
      getNative().call('texture_proxy_update', args);
  }
  public function textureRdCreate(rdTexture: Int, ?layerType: Int): Int {
      var args = new ArrayList();
      args.append(rdTexture);
      if (layerType != null) {
          args.append(layerType);
      }
      return getNative().call('texture_rd_create', args);
  }
  public function textureReplace(texture: Int, byTexture: Int): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(byTexture);
      getNative().call('texture_replace', args);
  }
  public function textureSetForceRedrawIfVisible(texture: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(enable);
      getNative().call('texture_set_force_redraw_if_visible', args);
  }
  public function textureSetPath(texture: Int, path: String): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(path);
      getNative().call('texture_set_path', args);
  }
  public function textureSetSizeOverride(texture: Int, width: Int, height: Int): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(width);
      args.append(height);
      getNative().call('texture_set_size_override', args);
  }
  public function viewportAttachCamera(viewport: Int, camera: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(camera);
      getNative().call('viewport_attach_camera', args);
  }
  public function viewportAttachCanvas(viewport: Int, canvas: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvas);
      getNative().call('viewport_attach_canvas', args);
  }
  public function viewportAttachToScreen(viewport: Int, ?rect: Rect2, ?screen: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      if (rect != null) {
          args.append(rect);
      }
      if (screen != null) {
          args.append(screen);
      }
      getNative().call('viewport_attach_to_screen', args);
  }
  public function viewportCreate(): Int {
      var args = new ArrayList();
      return getNative().call('viewport_create', args);
  }
  public function viewportGetMeasuredRenderTimeCpu(viewport: Int): Float {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_measured_render_time_cpu', args);
  }
  public function viewportGetMeasuredRenderTimeGpu(viewport: Int): Float {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_measured_render_time_gpu', args);
  }
  public function viewportGetRenderInfo(viewport: Int, type: Int, info: Int): Int {
      var args = new ArrayList();
      args.append(viewport);
      args.append(type);
      args.append(info);
      return getNative().call('viewport_get_render_info', args);
  }
  public function viewportGetRenderTarget(viewport: Int): Int {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_render_target', args);
  }
  public function viewportGetTexture(viewport: Int): Int {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_texture', args);
  }
  public function viewportGetUpdateMode(viewport: Int): Int {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_update_mode', args);
  }
  public function viewportRemoveCanvas(viewport: Int, canvas: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvas);
      getNative().call('viewport_remove_canvas', args);
  }
  public function viewportSetActive(viewport: Int, active: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(active);
      getNative().call('viewport_set_active', args);
  }
  public function viewportSetAnisotropicFilteringLevel(viewport: Int, anisotropicFilteringLevel: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(anisotropicFilteringLevel);
      getNative().call('viewport_set_anisotropic_filtering_level', args);
  }
  public function viewportSetCanvasCullMask(viewport: Int, canvasCullMask: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvasCullMask);
      getNative().call('viewport_set_canvas_cull_mask', args);
  }
  public function viewportSetCanvasStacking(viewport: Int, canvas: Int, layer: Int, sublayer: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvas);
      args.append(layer);
      args.append(sublayer);
      getNative().call('viewport_set_canvas_stacking', args);
  }
  public function viewportSetCanvasTransform(viewport: Int, canvas: Int, offset: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvas);
      args.append(offset);
      getNative().call('viewport_set_canvas_transform', args);
  }
  public function viewportSetClearMode(viewport: Int, clearMode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(clearMode);
      getNative().call('viewport_set_clear_mode', args);
  }
  public function viewportSetDebugDraw(viewport: Int, draw: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(draw);
      getNative().call('viewport_set_debug_draw', args);
  }
  public function viewportSetDefaultCanvasItemTextureFilter(viewport: Int, filter: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(filter);
      getNative().call('viewport_set_default_canvas_item_texture_filter', args);
  }
  public function viewportSetDefaultCanvasItemTextureRepeat(viewport: Int, repeat: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(repeat);
      getNative().call('viewport_set_default_canvas_item_texture_repeat', args);
  }
  public function viewportSetDisable2d(viewport: Int, disable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(disable);
      getNative().call('viewport_set_disable_2d', args);
  }
  public function viewportSetDisable3d(viewport: Int, disable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(disable);
      getNative().call('viewport_set_disable_3d', args);
  }
  public function viewportSetEnvironmentMode(viewport: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mode);
      getNative().call('viewport_set_environment_mode', args);
  }
  public function viewportSetFsrSharpness(viewport: Int, sharpness: Float): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(sharpness);
      getNative().call('viewport_set_fsr_sharpness', args);
  }
  public function viewportSetGlobalCanvasTransform(viewport: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(transform);
      getNative().call('viewport_set_global_canvas_transform', args);
  }
  public function viewportSetMeasureRenderTime(viewport: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enable);
      getNative().call('viewport_set_measure_render_time', args);
  }
  public function viewportSetMsaa2d(viewport: Int, msaa: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(msaa);
      getNative().call('viewport_set_msaa_2d', args);
  }
  public function viewportSetMsaa3d(viewport: Int, msaa: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(msaa);
      getNative().call('viewport_set_msaa_3d', args);
  }
  public function viewportSetOcclusionCullingBuildQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('viewport_set_occlusion_culling_build_quality', args);
  }
  public function viewportSetOcclusionRaysPerThread(raysPerThread: Int): Void {
      var args = new ArrayList();
      args.append(raysPerThread);
      getNative().call('viewport_set_occlusion_rays_per_thread', args);
  }
  public function viewportSetParentViewport(viewport: Int, parentViewport: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(parentViewport);
      getNative().call('viewport_set_parent_viewport', args);
  }
  public function viewportSetPositionalShadowAtlasQuadrantSubdivision(viewport: Int, quadrant: Int, subdivision: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(quadrant);
      args.append(subdivision);
      getNative().call('viewport_set_positional_shadow_atlas_quadrant_subdivision', args);
  }
  public function viewportSetPositionalShadowAtlasSize(viewport: Int, size: Int, ?use16Bits: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(size);
      if (use16Bits != null) {
          args.append(use16Bits);
      }
      getNative().call('viewport_set_positional_shadow_atlas_size', args);
  }
  public function viewportSetRenderDirectToScreen(viewport: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_render_direct_to_screen', args);
  }
  public function viewportSetScaling3dMode(viewport: Int, scaling3dMode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(scaling3dMode);
      getNative().call('viewport_set_scaling_3d_mode', args);
  }
  public function viewportSetScaling3dScale(viewport: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(scale);
      getNative().call('viewport_set_scaling_3d_scale', args);
  }
  public function viewportSetScenario(viewport: Int, scenario: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(scenario);
      getNative().call('viewport_set_scenario', args);
  }
  public function viewportSetScreenSpaceAa(viewport: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mode);
      getNative().call('viewport_set_screen_space_aa', args);
  }
  public function viewportSetSdfOversizeAndScale(viewport: Int, oversize: Int, scale: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(oversize);
      args.append(scale);
      getNative().call('viewport_set_sdf_oversize_and_scale', args);
  }
  public function viewportSetSize(viewport: Int, width: Int, height: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(width);
      args.append(height);
      getNative().call('viewport_set_size', args);
  }
  public function viewportSetSnap2dTransformsToPixel(viewport: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_snap_2d_transforms_to_pixel', args);
  }
  public function viewportSetSnap2dVerticesToPixel(viewport: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_snap_2d_vertices_to_pixel', args);
  }
  public function viewportSetTextureMipmapBias(viewport: Int, mipmapBias: Float): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mipmapBias);
      getNative().call('viewport_set_texture_mipmap_bias', args);
  }
  public function viewportSetTransparentBackground(viewport: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_transparent_background', args);
  }
  public function viewportSetUpdateMode(viewport: Int, updateMode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(updateMode);
      getNative().call('viewport_set_update_mode', args);
  }
  public function viewportSetUseDebanding(viewport: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enable);
      getNative().call('viewport_set_use_debanding', args);
  }
  public function viewportSetUseHdr2d(viewport: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_use_hdr_2d', args);
  }
  public function viewportSetUseOcclusionCulling(viewport: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enable);
      getNative().call('viewport_set_use_occlusion_culling', args);
  }
  public function viewportSetUseTaa(viewport: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enable);
      getNative().call('viewport_set_use_taa', args);
  }
  public function viewportSetUseXr(viewport: Int, useXr: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(useXr);
      getNative().call('viewport_set_use_xr', args);
  }
  public function viewportSetVrsMode(viewport: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mode);
      getNative().call('viewport_set_vrs_mode', args);
  }
  public function viewportSetVrsTexture(viewport: Int, texture: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(texture);
      getNative().call('viewport_set_vrs_texture', args);
  }
  public function viewportSetVrsUpdateMode(viewport: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mode);
      getNative().call('viewport_set_vrs_update_mode', args);
  }
  public function visibilityNotifierCreate(): Int {
      var args = new ArrayList();
      return getNative().call('visibility_notifier_create', args);
  }
  public function visibilityNotifierSetAabb(notifier: Int, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(notifier);
      args.append(aabb);
      getNative().call('visibility_notifier_set_aabb', args);
  }
  public function visibilityNotifierSetCallbacks(notifier: Int, enterCallable: Variant, exitCallable: Variant): Void {
      var args = new ArrayList();
      args.append(notifier);
      args.append(enterCallable);
      args.append(exitCallable);
      getNative().call('visibility_notifier_set_callbacks', args);
  }
  public function voxelGiAllocateData(voxelGi: Int, toCellXform: Variant, aabb: Variant, octreeSize: Vector3i, octreeCells: ByteArray, dataCells: ByteArray, distanceField: ByteArray, levelCounts: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(toCellXform);
      args.append(aabb);
      args.append(octreeSize);
      args.append(octreeCells);
      args.append(dataCells);
      args.append(distanceField);
      args.append(levelCounts);
      getNative().call('voxel_gi_allocate_data', args);
  }
  public function voxelGiCreate(): Int {
      var args = new ArrayList();
      return getNative().call('voxel_gi_create', args);
  }
  public function voxelGiGetDataCells(voxelGi: Int): ByteArray {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_data_cells', args);
  }
  public function voxelGiGetDistanceField(voxelGi: Int): ByteArray {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_distance_field', args);
  }
  public function voxelGiGetLevelCounts(voxelGi: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_level_counts', args);
  }
  public function voxelGiGetOctreeCells(voxelGi: Int): ByteArray {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_octree_cells', args);
  }
  public function voxelGiGetOctreeSize(voxelGi: Int): Vector3i {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_octree_size', args);
  }
  public function voxelGiSetBakedExposureNormalization(voxelGi: Int, bakedExposure: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(bakedExposure);
      getNative().call('voxel_gi_set_baked_exposure_normalization', args);
  }
  public function voxelGiSetBias(voxelGi: Int, bias: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(bias);
      getNative().call('voxel_gi_set_bias', args);
  }
  public function voxelGiSetDynamicRange(voxelGi: Int, range: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(range);
      getNative().call('voxel_gi_set_dynamic_range', args);
  }
  public function voxelGiSetEnergy(voxelGi: Int, energy: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(energy);
      getNative().call('voxel_gi_set_energy', args);
  }
  public function voxelGiSetInterior(voxelGi: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(enable);
      getNative().call('voxel_gi_set_interior', args);
  }
  public function voxelGiSetNormalBias(voxelGi: Int, bias: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(bias);
      getNative().call('voxel_gi_set_normal_bias', args);
  }
  public function voxelGiSetPropagation(voxelGi: Int, amount: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(amount);
      getNative().call('voxel_gi_set_propagation', args);
  }
  public function voxelGiSetQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('voxel_gi_set_quality', args);
  }
  public function voxelGiSetUseTwoBounces(voxelGi: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(enable);
      getNative().call('voxel_gi_set_use_two_bounces', args);
  }
}
