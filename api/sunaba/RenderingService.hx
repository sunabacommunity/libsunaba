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
            _native = NativeObject.getService('RenderingServer');
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

  public static function callOnRenderThread(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      getNative().call('call_on_render_thread', args);
  }
  public static function cameraAttributesCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('camera_attributes_create', args);
  }
  public static function cameraAttributesSetAutoExposure(cameraAttributes: Variant, enable: Bool, minSensitivity: Float, maxSensitivity: Float, speed: Float, scale: Float): Void {
      var args = new ArrayList();
      args.append(cameraAttributes);
      args.append(enable);
      args.append(minSensitivity);
      args.append(maxSensitivity);
      args.append(speed);
      args.append(scale);
      getNative().call('camera_attributes_set_auto_exposure', args);
  }
  public static function cameraAttributesSetDofBlur(cameraAttributes: Variant, farEnable: Bool, farDistance: Float, farTransition: Float, nearEnable: Bool, nearDistance: Float, nearTransition: Float, amount: Float): Void {
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
  public static function cameraAttributesSetDofBlurBokehShape(shape: Int): Void {
      var args = new ArrayList();
      args.append(shape);
      getNative().call('camera_attributes_set_dof_blur_bokeh_shape', args);
  }
  public static function cameraAttributesSetDofBlurQuality(quality: Int, useJitter: Bool): Void {
      var args = new ArrayList();
      args.append(quality);
      args.append(useJitter);
      getNative().call('camera_attributes_set_dof_blur_quality', args);
  }
  public static function cameraAttributesSetExposure(cameraAttributes: Variant, multiplier: Float, normalization: Float): Void {
      var args = new ArrayList();
      args.append(cameraAttributes);
      args.append(multiplier);
      args.append(normalization);
      getNative().call('camera_attributes_set_exposure', args);
  }
  public static function cameraCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('camera_create', args);
  }
  public static function cameraSetCameraAttributes(camera: Variant, effects: Variant): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(effects);
      getNative().call('camera_set_camera_attributes', args);
  }
  public static function cameraSetCompositor(camera: Variant, compositor: Variant): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(compositor);
      getNative().call('camera_set_compositor', args);
  }
  public static function cameraSetCullMask(camera: Variant, layers: Int): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(layers);
      getNative().call('camera_set_cull_mask', args);
  }
  public static function cameraSetEnvironment(camera: Variant, env: Variant): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(env);
      getNative().call('camera_set_environment', args);
  }
  public static function cameraSetFrustum(camera: Variant, size: Float, offset: Vector2, zNear: Float, zFar: Float): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(size);
      args.append(offset);
      args.append(zNear);
      args.append(zFar);
      getNative().call('camera_set_frustum', args);
  }
  public static function cameraSetOrthogonal(camera: Variant, size: Float, zNear: Float, zFar: Float): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(size);
      args.append(zNear);
      args.append(zFar);
      getNative().call('camera_set_orthogonal', args);
  }
  public static function cameraSetPerspective(camera: Variant, fovyDegrees: Float, zNear: Float, zFar: Float): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(fovyDegrees);
      args.append(zNear);
      args.append(zFar);
      getNative().call('camera_set_perspective', args);
  }
  public static function cameraSetTransform(camera: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(transform);
      getNative().call('camera_set_transform', args);
  }
  public static function cameraSetUseVerticalAspect(camera: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(camera);
      args.append(enable);
      getNative().call('camera_set_use_vertical_aspect', args);
  }
  public static function canvasCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('canvas_create', args);
  }
  public static function canvasItemAddAnimationSlice(item: Variant, animationLength: Float, sliceBegin: Float, sliceEnd: Float, ?offset: Float): Void {
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
  public static function canvasItemAddCircle(item: Variant, pos: Vector2, radius: Float, color: Color, ?antialiased: Bool): Void {
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
  public static function canvasItemAddClipIgnore(item: Variant, ignore: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(ignore);
      getNative().call('canvas_item_add_clip_ignore', args);
  }
  public static function canvasItemAddEllipse(item: Variant, pos: Vector2, major: Float, minor: Float, color: Color, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(pos);
      args.append(major);
      args.append(minor);
      args.append(color);
      if (antialiased != null) {
          args.append(antialiased);
      }
      getNative().call('canvas_item_add_ellipse', args);
  }
  public static function canvasItemAddLcdTextureRectRegion(item: Variant, rect: Rect2, texture: Variant, srcRect: Rect2, modulate: Color): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(rect);
      args.append(texture);
      args.append(srcRect);
      args.append(modulate);
      getNative().call('canvas_item_add_lcd_texture_rect_region', args);
  }
  public static function canvasItemAddLine(item: Variant, from: Vector2, to: Vector2, color: Color, ?width: Float, ?antialiased: Bool): Void {
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
  public static function canvasItemAddMesh(item: Variant, mesh: Variant, ?transform: Variant, ?modulate: Color, ?texture: Variant): Void {
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
  public static function canvasItemAddMsdfTextureRectRegion(item: Variant, rect: Rect2, texture: Variant, srcRect: Rect2, ?modulate: Color, ?outlineSize: Int, ?pxRange: Float, ?scale: Float): Void {
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
  public static function canvasItemAddMultiline(item: Variant, points: TypedArray<Vector2>, colors: TypedArray<Color>, ?width: Float, ?antialiased: Bool): Void {
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
  public static function canvasItemAddMultimesh(item: Variant, mesh: Variant, ?texture: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(mesh);
      if (texture != null) {
          args.append(texture);
      }
      getNative().call('canvas_item_add_multimesh', args);
  }
  public static function canvasItemAddNinePatch(item: Variant, rect: Rect2, source: Rect2, texture: Variant, topleft: Vector2, bottomright: Vector2, ?xAxisMode: Int, ?yAxisMode: Int, ?drawCenter: Bool, ?modulate: Color): Void {
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
  public static function canvasItemAddParticles(item: Variant, particles: Variant, texture: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(particles);
      args.append(texture);
      getNative().call('canvas_item_add_particles', args);
  }
  public static function canvasItemAddPolygon(item: Variant, points: TypedArray<Vector2>, colors: TypedArray<Color>, ?uvs: TypedArray<Vector2>, ?texture: Variant): Void {
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
  public static function canvasItemAddPolyline(item: Variant, points: TypedArray<Vector2>, colors: TypedArray<Color>, ?width: Float, ?antialiased: Bool): Void {
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
  public static function canvasItemAddPrimitive(item: Variant, points: TypedArray<Vector2>, colors: TypedArray<Color>, uvs: TypedArray<Vector2>, texture: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(points);
      args.append(colors);
      args.append(uvs);
      args.append(texture);
      getNative().call('canvas_item_add_primitive', args);
  }
  public static function canvasItemAddRect(item: Variant, rect: Rect2, color: Color, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(rect);
      args.append(color);
      if (antialiased != null) {
          args.append(antialiased);
      }
      getNative().call('canvas_item_add_rect', args);
  }
  public static function canvasItemAddSetTransform(item: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(transform);
      getNative().call('canvas_item_add_set_transform', args);
  }
  public static function canvasItemAddTextureRect(item: Variant, rect: Rect2, texture: Variant, ?tile: Bool, ?modulate: Color, ?transpose: Bool): Void {
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
  public static function canvasItemAddTextureRectRegion(item: Variant, rect: Rect2, texture: Variant, srcRect: Rect2, ?modulate: Color, ?transpose: Bool, ?clipUv: Bool): Void {
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
  public static function canvasItemAddTriangleArray(item: Variant, indices: TypedArray<Int>, points: TypedArray<Vector2>, colors: TypedArray<Color>, ?uvs: TypedArray<Vector2>, ?bones: TypedArray<Int>, ?weights: TypedArray<Float>, ?texture: Variant, ?count: Int): Void {
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
  public static function canvasItemAttachSkeleton(item: Variant, skeleton: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(skeleton);
      getNative().call('canvas_item_attach_skeleton', args);
  }
  public static function canvasItemClear(item: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      getNative().call('canvas_item_clear', args);
  }
  public static function canvasItemCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('canvas_item_create', args);
  }
  public static function canvasItemGetInstanceShaderParameter(instance: Variant, parameter: String): Variant {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      return getNative().call('canvas_item_get_instance_shader_parameter', args);
  }
  public static function canvasItemGetInstanceShaderParameterDefaultValue(instance: Variant, parameter: String): Variant {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      return getNative().call('canvas_item_get_instance_shader_parameter_default_value', args);
  }
  public static function canvasItemResetPhysicsInterpolation(item: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      getNative().call('canvas_item_reset_physics_interpolation', args);
  }
  public static function canvasItemSetCanvasGroupMode(item: Variant, mode: Int, ?clearMargin: Float, ?fitEmpty: Bool, ?fitMargin: Float, ?blurMipmaps: Bool): Void {
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
  public static function canvasItemSetClip(item: Variant, clip: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(clip);
      getNative().call('canvas_item_set_clip', args);
  }
  public static function canvasItemSetCopyToBackbuffer(item: Variant, enabled: Bool, rect: Rect2): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      args.append(rect);
      getNative().call('canvas_item_set_copy_to_backbuffer', args);
  }
  public static function canvasItemSetCustomRect(item: Variant, useCustomRect: Bool, ?rect: Rect2): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(useCustomRect);
      if (rect != null) {
          args.append(rect);
      }
      getNative().call('canvas_item_set_custom_rect', args);
  }
  public static function canvasItemSetDefaultTextureFilter(item: Variant, filter: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(filter);
      getNative().call('canvas_item_set_default_texture_filter', args);
  }
  public static function canvasItemSetDefaultTextureRepeat(item: Variant, repeat: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(repeat);
      getNative().call('canvas_item_set_default_texture_repeat', args);
  }
  public static function canvasItemSetDistanceFieldMode(item: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_distance_field_mode', args);
  }
  public static function canvasItemSetDrawBehindParent(item: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_draw_behind_parent', args);
  }
  public static function canvasItemSetDrawIndex(item: Variant, index: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(index);
      getNative().call('canvas_item_set_draw_index', args);
  }
  public static function canvasItemSetInstanceShaderParameter(instance: Variant, parameter: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      args.append(value);
      getNative().call('canvas_item_set_instance_shader_parameter', args);
  }
  public static function canvasItemSetInterpolated(item: Variant, interpolated: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(interpolated);
      getNative().call('canvas_item_set_interpolated', args);
  }
  public static function canvasItemSetLightMask(item: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(mask);
      getNative().call('canvas_item_set_light_mask', args);
  }
  public static function canvasItemSetMaterial(item: Variant, material: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(material);
      getNative().call('canvas_item_set_material', args);
  }
  public static function canvasItemSetModulate(item: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(color);
      getNative().call('canvas_item_set_modulate', args);
  }
  public static function canvasItemSetParent(item: Variant, parent: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(parent);
      getNative().call('canvas_item_set_parent', args);
  }
  public static function canvasItemSetSelfModulate(item: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(color);
      getNative().call('canvas_item_set_self_modulate', args);
  }
  public static function canvasItemSetSortChildrenByY(item: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_sort_children_by_y', args);
  }
  public static function canvasItemSetTransform(item: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(transform);
      getNative().call('canvas_item_set_transform', args);
  }
  public static function canvasItemSetUseParentMaterial(item: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_use_parent_material', args);
  }
  public static function canvasItemSetVisibilityLayer(item: Variant, visibilityLayer: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(visibilityLayer);
      getNative().call('canvas_item_set_visibility_layer', args);
  }
  public static function canvasItemSetVisibilityNotifier(item: Variant, enable: Bool, area: Rect2, enterCallable: Variant, exitCallable: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enable);
      args.append(area);
      args.append(enterCallable);
      args.append(exitCallable);
      getNative().call('canvas_item_set_visibility_notifier', args);
  }
  public static function canvasItemSetVisible(item: Variant, visible: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(visible);
      getNative().call('canvas_item_set_visible', args);
  }
  public static function canvasItemSetZAsRelativeToParent(item: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(enabled);
      getNative().call('canvas_item_set_z_as_relative_to_parent', args);
  }
  public static function canvasItemSetZIndex(item: Variant, zIndex: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(zIndex);
      getNative().call('canvas_item_set_z_index', args);
  }
  public static function canvasItemTransformPhysicsInterpolation(item: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(transform);
      getNative().call('canvas_item_transform_physics_interpolation', args);
  }
  public static function canvasLightAttachToCanvas(light: Variant, canvas: Variant): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(canvas);
      getNative().call('canvas_light_attach_to_canvas', args);
  }
  public static function canvasLightCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('canvas_light_create', args);
  }
  public static function canvasLightOccluderAttachToCanvas(occluder: Variant, canvas: Variant): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(canvas);
      getNative().call('canvas_light_occluder_attach_to_canvas', args);
  }
  public static function canvasLightOccluderCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('canvas_light_occluder_create', args);
  }
  public static function canvasLightOccluderResetPhysicsInterpolation(occluder: Variant): Void {
      var args = new ArrayList();
      args.append(occluder);
      getNative().call('canvas_light_occluder_reset_physics_interpolation', args);
  }
  public static function canvasLightOccluderSetAsSdfCollision(occluder: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(enable);
      getNative().call('canvas_light_occluder_set_as_sdf_collision', args);
  }
  public static function canvasLightOccluderSetEnabled(occluder: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(enabled);
      getNative().call('canvas_light_occluder_set_enabled', args);
  }
  public static function canvasLightOccluderSetInterpolated(occluder: Variant, interpolated: Bool): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(interpolated);
      getNative().call('canvas_light_occluder_set_interpolated', args);
  }
  public static function canvasLightOccluderSetLightMask(occluder: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(mask);
      getNative().call('canvas_light_occluder_set_light_mask', args);
  }
  public static function canvasLightOccluderSetPolygon(occluder: Variant, polygon: Variant): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(polygon);
      getNative().call('canvas_light_occluder_set_polygon', args);
  }
  public static function canvasLightOccluderSetTransform(occluder: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(transform);
      getNative().call('canvas_light_occluder_set_transform', args);
  }
  public static function canvasLightOccluderTransformPhysicsInterpolation(occluder: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(transform);
      getNative().call('canvas_light_occluder_transform_physics_interpolation', args);
  }
  public static function canvasLightResetPhysicsInterpolation(light: Variant): Void {
      var args = new ArrayList();
      args.append(light);
      getNative().call('canvas_light_reset_physics_interpolation', args);
  }
  public static function canvasLightSetBlendMode(light: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('canvas_light_set_blend_mode', args);
  }
  public static function canvasLightSetColor(light: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(color);
      getNative().call('canvas_light_set_color', args);
  }
  public static function canvasLightSetEnabled(light: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enabled);
      getNative().call('canvas_light_set_enabled', args);
  }
  public static function canvasLightSetEnergy(light: Variant, energy: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(energy);
      getNative().call('canvas_light_set_energy', args);
  }
  public static function canvasLightSetHeight(light: Variant, height: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(height);
      getNative().call('canvas_light_set_height', args);
  }
  public static function canvasLightSetInterpolated(light: Variant, interpolated: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(interpolated);
      getNative().call('canvas_light_set_interpolated', args);
  }
  public static function canvasLightSetItemCullMask(light: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mask);
      getNative().call('canvas_light_set_item_cull_mask', args);
  }
  public static function canvasLightSetItemShadowCullMask(light: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mask);
      getNative().call('canvas_light_set_item_shadow_cull_mask', args);
  }
  public static function canvasLightSetLayerRange(light: Variant, minLayer: Int, maxLayer: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(minLayer);
      args.append(maxLayer);
      getNative().call('canvas_light_set_layer_range', args);
  }
  public static function canvasLightSetMode(light: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('canvas_light_set_mode', args);
  }
  public static function canvasLightSetShadowColor(light: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(color);
      getNative().call('canvas_light_set_shadow_color', args);
  }
  public static function canvasLightSetShadowEnabled(light: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enabled);
      getNative().call('canvas_light_set_shadow_enabled', args);
  }
  public static function canvasLightSetShadowFilter(light: Variant, filter: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(filter);
      getNative().call('canvas_light_set_shadow_filter', args);
  }
  public static function canvasLightSetShadowSmooth(light: Variant, smooth: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(smooth);
      getNative().call('canvas_light_set_shadow_smooth', args);
  }
  public static function canvasLightSetTexture(light: Variant, texture: Variant): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(texture);
      getNative().call('canvas_light_set_texture', args);
  }
  public static function canvasLightSetTextureOffset(light: Variant, offset: Vector2): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(offset);
      getNative().call('canvas_light_set_texture_offset', args);
  }
  public static function canvasLightSetTextureScale(light: Variant, scale: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(scale);
      getNative().call('canvas_light_set_texture_scale', args);
  }
  public static function canvasLightSetTransform(light: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(transform);
      getNative().call('canvas_light_set_transform', args);
  }
  public static function canvasLightSetZRange(light: Variant, minZ: Int, maxZ: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(minZ);
      args.append(maxZ);
      getNative().call('canvas_light_set_z_range', args);
  }
  public static function canvasLightTransformPhysicsInterpolation(light: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(transform);
      getNative().call('canvas_light_transform_physics_interpolation', args);
  }
  public static function canvasOccluderPolygonCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('canvas_occluder_polygon_create', args);
  }
  public static function canvasOccluderPolygonSetCullMode(occluderPolygon: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(occluderPolygon);
      args.append(mode);
      getNative().call('canvas_occluder_polygon_set_cull_mode', args);
  }
  public static function canvasOccluderPolygonSetShape(occluderPolygon: Variant, shape: TypedArray<Vector2>, closed: Bool): Void {
      var args = new ArrayList();
      args.append(occluderPolygon);
      args.append(shape);
      args.append(closed);
      getNative().call('canvas_occluder_polygon_set_shape', args);
  }
  public static function canvasSetDisableScale(disable: Bool): Void {
      var args = new ArrayList();
      args.append(disable);
      getNative().call('canvas_set_disable_scale', args);
  }
  public static function canvasSetItemMirroring(canvas: Variant, item: Variant, mirroring: Vector2): Void {
      var args = new ArrayList();
      args.append(canvas);
      args.append(item);
      args.append(mirroring);
      getNative().call('canvas_set_item_mirroring', args);
  }
  public static function canvasSetItemRepeat(item: Variant, repeatSize: Vector2, repeatTimes: Int): Void {
      var args = new ArrayList();
      args.append(item);
      args.append(repeatSize);
      args.append(repeatTimes);
      getNative().call('canvas_set_item_repeat', args);
  }
  public static function canvasSetModulate(canvas: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(canvas);
      args.append(color);
      getNative().call('canvas_set_modulate', args);
  }
  public static function canvasSetShadowTextureSize(size: Int): Void {
      var args = new ArrayList();
      args.append(size);
      getNative().call('canvas_set_shadow_texture_size', args);
  }
  public static function canvasTextureCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('canvas_texture_create', args);
  }
  public static function canvasTextureSetChannel(canvasTexture: Variant, channel: Int, texture: Variant): Void {
      var args = new ArrayList();
      args.append(canvasTexture);
      args.append(channel);
      args.append(texture);
      getNative().call('canvas_texture_set_channel', args);
  }
  public static function canvasTextureSetShadingParameters(canvasTexture: Variant, baseColor: Color, shininess: Float): Void {
      var args = new ArrayList();
      args.append(canvasTexture);
      args.append(baseColor);
      args.append(shininess);
      getNative().call('canvas_texture_set_shading_parameters', args);
  }
  public static function canvasTextureSetTextureFilter(canvasTexture: Variant, filter: Int): Void {
      var args = new ArrayList();
      args.append(canvasTexture);
      args.append(filter);
      getNative().call('canvas_texture_set_texture_filter', args);
  }
  public static function canvasTextureSetTextureRepeat(canvasTexture: Variant, repeat: Int): Void {
      var args = new ArrayList();
      args.append(canvasTexture);
      args.append(repeat);
      getNative().call('canvas_texture_set_texture_repeat', args);
  }
  public static function compositorCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('compositor_create', args);
  }
  public static function compositorEffectCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('compositor_effect_create', args);
  }
  public static function compositorEffectSetCallback(effect: Variant, callbackType: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(effect);
      args.append(callbackType);
      args.append(callback);
      getNative().call('compositor_effect_set_callback', args);
  }
  public static function compositorEffectSetEnabled(effect: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(effect);
      args.append(enabled);
      getNative().call('compositor_effect_set_enabled', args);
  }
  public static function compositorEffectSetFlag(effect: Variant, flag: Int, set: Bool): Void {
      var args = new ArrayList();
      args.append(effect);
      args.append(flag);
      args.append(set);
      getNative().call('compositor_effect_set_flag', args);
  }
  public static function compositorSetCompositorEffects(compositor: Variant, effects: Variant): Void {
      var args = new ArrayList();
      args.append(compositor);
      args.append(effects);
      getNative().call('compositor_set_compositor_effects', args);
  }
  public static function debugCanvasItemGetRect(item: Variant): Rect2 {
      var args = new ArrayList();
      args.append(item);
      return getNative().call('debug_canvas_item_get_rect', args);
  }
  public static function decalCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('decal_create', args);
  }
  public static function decalSetAlbedoMix(decal: Variant, albedoMix: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(albedoMix);
      getNative().call('decal_set_albedo_mix', args);
  }
  public static function decalSetCullMask(decal: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(mask);
      getNative().call('decal_set_cull_mask', args);
  }
  public static function decalSetDistanceFade(decal: Variant, enabled: Bool, begin: Float, length: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(enabled);
      args.append(begin);
      args.append(length);
      getNative().call('decal_set_distance_fade', args);
  }
  public static function decalSetEmissionEnergy(decal: Variant, energy: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(energy);
      getNative().call('decal_set_emission_energy', args);
  }
  public static function decalSetFade(decal: Variant, above: Float, below: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(above);
      args.append(below);
      getNative().call('decal_set_fade', args);
  }
  public static function decalSetModulate(decal: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(color);
      getNative().call('decal_set_modulate', args);
  }
  public static function decalSetNormalFade(decal: Variant, fade: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(fade);
      getNative().call('decal_set_normal_fade', args);
  }
  public static function decalSetSize(decal: Variant, size: Vector3): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(size);
      getNative().call('decal_set_size', args);
  }
  public static function decalSetTexture(decal: Variant, type: Int, texture: Variant): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(type);
      args.append(texture);
      getNative().call('decal_set_texture', args);
  }
  public static function decalsSetFilter(filter: Int): Void {
      var args = new ArrayList();
      args.append(filter);
      getNative().call('decals_set_filter', args);
  }
  public static function directionalLightCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('directional_light_create', args);
  }
  public static function directionalShadowAtlasSetSize(size: Int, is16Bits: Bool): Void {
      var args = new ArrayList();
      args.append(size);
      args.append(is16Bits);
      getNative().call('directional_shadow_atlas_set_size', args);
  }
  public static function directionalSoftShadowFilterSetQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('directional_soft_shadow_filter_set_quality', args);
  }
  public static function environmentBakePanorama(environment: Variant, bakeIrradiance: Bool, size: Vector2i): Image {
      var args = new ArrayList();
      args.append(environment);
      args.append(bakeIrradiance);
      args.append(size);
      var ref: NativeReference = getNative().call('environment_bake_panorama', args);
      return new Image(ref);
  }
  public static function environmentCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('environment_create', args);
  }
  public static function environmentGlowSetUseBicubicUpscale(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      getNative().call('environment_glow_set_use_bicubic_upscale', args);
  }
  public static function environmentSetAdjustment(env: Variant, enable: Bool, brightness: Float, contrast: Float, saturation: Float, use1dColorCorrection: Bool, colorCorrection: Variant): Void {
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
  public static function environmentSetAmbientLight(env: Variant, color: Color, ?ambient: Int, ?energy: Float, ?skyContribution: Float, ?reflectionSource: Int): Void {
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
  public static function environmentSetBackground(env: Variant, bg: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(bg);
      getNative().call('environment_set_background', args);
  }
  public static function environmentSetBgColor(env: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(color);
      getNative().call('environment_set_bg_color', args);
  }
  public static function environmentSetBgEnergy(env: Variant, multiplier: Float, exposureValue: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(multiplier);
      args.append(exposureValue);
      getNative().call('environment_set_bg_energy', args);
  }
  public static function environmentSetCameraId(env: Variant, id: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(id);
      getNative().call('environment_set_camera_id', args);
  }
  public static function environmentSetCanvasMaxLayer(env: Variant, maxLayer: Int): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(maxLayer);
      getNative().call('environment_set_canvas_max_layer', args);
  }
  public static function environmentSetFog(env: Variant, enable: Bool, lightColor: Color, lightEnergy: Float, sunScatter: Float, density: Float, height: Float, heightDensity: Float, aerialPerspective: Float, skyAffect: Float, ?fogMode: Int): Void {
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
  public static function environmentSetFogDepth(env: Variant, curve: Float, begin: Float, end: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(curve);
      args.append(begin);
      args.append(end);
      getNative().call('environment_set_fog_depth', args);
  }
  public static function environmentSetGlow(env: Variant, enable: Bool, levels: TypedArray<Float>, intensity: Float, strength: Float, mix: Float, bloomThreshold: Float, blendMode: Int, hdrBleedThreshold: Float, hdrBleedScale: Float, hdrLuminanceCap: Float, glowMapStrength: Float, glowMap: Variant): Void {
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
  public static function environmentSetSdfgi(env: Variant, enable: Bool, cascades: Int, minCellSize: Float, yScale: Int, useOcclusion: Bool, bounceFeedback: Float, readSky: Bool, energy: Float, normalBias: Float, probeBias: Float): Void {
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
  public static function environmentSetSdfgiFramesToConverge(frames: Int): Void {
      var args = new ArrayList();
      args.append(frames);
      getNative().call('environment_set_sdfgi_frames_to_converge', args);
  }
  public static function environmentSetSdfgiFramesToUpdateLight(frames: Int): Void {
      var args = new ArrayList();
      args.append(frames);
      getNative().call('environment_set_sdfgi_frames_to_update_light', args);
  }
  public static function environmentSetSdfgiRayCount(rayCount: Int): Void {
      var args = new ArrayList();
      args.append(rayCount);
      getNative().call('environment_set_sdfgi_ray_count', args);
  }
  public static function environmentSetSky(env: Variant, sky: Variant): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(sky);
      getNative().call('environment_set_sky', args);
  }
  public static function environmentSetSkyCustomFov(env: Variant, scale: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(scale);
      getNative().call('environment_set_sky_custom_fov', args);
  }
  public static function environmentSetSkyOrientation(env: Variant, orientation: Basis): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(orientation);
      getNative().call('environment_set_sky_orientation', args);
  }
  public static function environmentSetSsao(env: Variant, enable: Bool, radius: Float, intensity: Float, power: Float, detail: Float, horizon: Float, sharpness: Float, lightAffect: Float, aoChannelAffect: Float): Void {
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
  public static function environmentSetSsaoQuality(quality: Int, halfSize: Bool, adaptiveTarget: Float, blurPasses: Int, fadeoutFrom: Float, fadeoutTo: Float): Void {
      var args = new ArrayList();
      args.append(quality);
      args.append(halfSize);
      args.append(adaptiveTarget);
      args.append(blurPasses);
      args.append(fadeoutFrom);
      args.append(fadeoutTo);
      getNative().call('environment_set_ssao_quality', args);
  }
  public static function environmentSetSsilQuality(quality: Int, halfSize: Bool, adaptiveTarget: Float, blurPasses: Int, fadeoutFrom: Float, fadeoutTo: Float): Void {
      var args = new ArrayList();
      args.append(quality);
      args.append(halfSize);
      args.append(adaptiveTarget);
      args.append(blurPasses);
      args.append(fadeoutFrom);
      args.append(fadeoutTo);
      getNative().call('environment_set_ssil_quality', args);
  }
  public static function environmentSetSsr(env: Variant, enable: Bool, maxSteps: Int, fadeIn: Float, fadeOut: Float, depthTolerance: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(enable);
      args.append(maxSteps);
      args.append(fadeIn);
      args.append(fadeOut);
      args.append(depthTolerance);
      getNative().call('environment_set_ssr', args);
  }
  public static function environmentSetSsrHalfSize(halfSize: Bool): Void {
      var args = new ArrayList();
      args.append(halfSize);
      getNative().call('environment_set_ssr_half_size', args);
  }
  public static function environmentSetSsrRoughnessQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('environment_set_ssr_roughness_quality', args);
  }
  public static function environmentSetTonemap(env: Variant, toneMapper: Int, exposure: Float, white: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(toneMapper);
      args.append(exposure);
      args.append(white);
      getNative().call('environment_set_tonemap', args);
  }
  public static function environmentSetTonemapAgxContrast(env: Variant, agxContrast: Float): Void {
      var args = new ArrayList();
      args.append(env);
      args.append(agxContrast);
      getNative().call('environment_set_tonemap_agx_contrast', args);
  }
  public static function environmentSetVolumetricFog(env: Variant, enable: Bool, density: Float, albedo: Color, emission: Color, emissionEnergy: Float, anisotropy: Float, length: Float, pDetailSpread: Float, giInject: Float, temporalReprojection: Bool, temporalReprojectionAmount: Float, ambientInject: Float, skyAffect: Float): Void {
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
  public static function environmentSetVolumetricFogFilterActive(active: Bool): Void {
      var args = new ArrayList();
      args.append(active);
      getNative().call('environment_set_volumetric_fog_filter_active', args);
  }
  public static function environmentSetVolumetricFogVolumeSize(size: Int, depth: Int): Void {
      var args = new ArrayList();
      args.append(size);
      args.append(depth);
      getNative().call('environment_set_volumetric_fog_volume_size', args);
  }
  public static function fogVolumeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('fog_volume_create', args);
  }
  public static function fogVolumeSetMaterial(fogVolume: Variant, material: Variant): Void {
      var args = new ArrayList();
      args.append(fogVolume);
      args.append(material);
      getNative().call('fog_volume_set_material', args);
  }
  public static function fogVolumeSetShape(fogVolume: Variant, shape: Int): Void {
      var args = new ArrayList();
      args.append(fogVolume);
      args.append(shape);
      getNative().call('fog_volume_set_shape', args);
  }
  public static function fogVolumeSetSize(fogVolume: Variant, size: Vector3): Void {
      var args = new ArrayList();
      args.append(fogVolume);
      args.append(size);
      getNative().call('fog_volume_set_size', args);
  }
  public static function forceDraw(?swapBuffers: Bool, ?frameStep: Float): Void {
      var args = new ArrayList();
      if (swapBuffers != null) {
          args.append(swapBuffers);
      }
      if (frameStep != null) {
          args.append(frameStep);
      }
      getNative().call('force_draw', args);
  }
  public static function forceSync(): Void {
      var args = new ArrayList();
      getNative().call('force_sync', args);
  }
  public static function freeRid(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_rid', args);
  }
  public static function getCurrentRenderingDriverName(): String {
      var args = new ArrayList();
      return getNative().call('get_current_rendering_driver_name', args);
  }
  public static function getCurrentRenderingMethod(): String {
      var args = new ArrayList();
      return getNative().call('get_current_rendering_method', args);
  }
  public static function getDefaultClearColor(): Color {
      var args = new ArrayList();
      return getNative().call('get_default_clear_color', args);
  }
  public static function getFrameSetupTimeCpu(): Float {
      var args = new ArrayList();
      return getNative().call('get_frame_setup_time_cpu', args);
  }
  public static function getRenderingInfo(info: Int): Int {
      var args = new ArrayList();
      args.append(info);
      return getNative().call('get_rendering_info', args);
  }
  public static function getTestCube(): Variant {
      var args = new ArrayList();
      return getNative().call('get_test_cube', args);
  }
  public static function getTestTexture(): Variant {
      var args = new ArrayList();
      return getNative().call('get_test_texture', args);
  }
  public static function getVideoAdapterApiVersion(): String {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_api_version', args);
  }
  public static function getVideoAdapterName(): String {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_name', args);
  }
  public static function getVideoAdapterType(): Int {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_type', args);
  }
  public static function getVideoAdapterVendor(): String {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_vendor', args);
  }
  public static function getWhiteTexture(): Variant {
      var args = new ArrayList();
      return getNative().call('get_white_texture', args);
  }
  public static function giSetUseHalfResolution(halfResolution: Bool): Void {
      var args = new ArrayList();
      args.append(halfResolution);
      getNative().call('gi_set_use_half_resolution', args);
  }
  public static function globalShaderParameterAdd(name: String, type: Int, defaultValue: Variant): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(type);
      args.append(defaultValue);
      getNative().call('global_shader_parameter_add', args);
  }
  public static function globalShaderParameterGet(name: String): Variant {
      var args = new ArrayList();
      args.append(name);
      return getNative().call('global_shader_parameter_get', args);
  }
  public static function globalShaderParameterGetType(name: String): Int {
      var args = new ArrayList();
      args.append(name);
      return getNative().call('global_shader_parameter_get_type', args);
  }
  public static function globalShaderParameterRemove(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      getNative().call('global_shader_parameter_remove', args);
  }
  public static function globalShaderParameterSet(name: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(value);
      getNative().call('global_shader_parameter_set', args);
  }
  public static function globalShaderParameterSetOverride(name: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(value);
      getNative().call('global_shader_parameter_set_override', args);
  }
  public static function hasChanged(): Bool {
      var args = new ArrayList();
      return getNative().call('has_changed', args);
  }
  public static function hasFeature(feature: Int): Bool {
      var args = new ArrayList();
      args.append(feature);
      return getNative().call('has_feature', args);
  }
  public static function hasOsFeature(feature: String): Bool {
      var args = new ArrayList();
      args.append(feature);
      return getNative().call('has_os_feature', args);
  }
  public static function instanceAttachObjectInstanceId(instance: Variant, id: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(id);
      getNative().call('instance_attach_object_instance_id', args);
  }
  public static function instanceAttachSkeleton(instance: Variant, skeleton: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(skeleton);
      getNative().call('instance_attach_skeleton', args);
  }
  public static function instanceCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('instance_create', args);
  }
  public static function instanceCreate2(base: Variant, scenario: Variant): Variant {
      var args = new ArrayList();
      args.append(base);
      args.append(scenario);
      return getNative().call('instance_create2', args);
  }
  public static function instanceGeometryGetShaderParameter(instance: Variant, parameter: String): Variant {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      return getNative().call('instance_geometry_get_shader_parameter', args);
  }
  public static function instanceGeometryGetShaderParameterDefaultValue(instance: Variant, parameter: String): Variant {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      return getNative().call('instance_geometry_get_shader_parameter_default_value', args);
  }
  public static function instanceGeometrySetCastShadowsSetting(instance: Variant, shadowCastingSetting: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(shadowCastingSetting);
      getNative().call('instance_geometry_set_cast_shadows_setting', args);
  }
  public static function instanceGeometrySetFlag(instance: Variant, flag: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(flag);
      args.append(enabled);
      getNative().call('instance_geometry_set_flag', args);
  }
  public static function instanceGeometrySetLightmap(instance: Variant, lightmap: Variant, lightmapUvScale: Rect2, lightmapSlice: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(lightmap);
      args.append(lightmapUvScale);
      args.append(lightmapSlice);
      getNative().call('instance_geometry_set_lightmap', args);
  }
  public static function instanceGeometrySetLodBias(instance: Variant, lodBias: Float): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(lodBias);
      getNative().call('instance_geometry_set_lod_bias', args);
  }
  public static function instanceGeometrySetMaterialOverlay(instance: Variant, material: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(material);
      getNative().call('instance_geometry_set_material_overlay', args);
  }
  public static function instanceGeometrySetMaterialOverride(instance: Variant, material: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(material);
      getNative().call('instance_geometry_set_material_override', args);
  }
  public static function instanceGeometrySetShaderParameter(instance: Variant, parameter: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(parameter);
      args.append(value);
      getNative().call('instance_geometry_set_shader_parameter', args);
  }
  public static function instanceGeometrySetTransparency(instance: Variant, transparency: Float): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(transparency);
      getNative().call('instance_geometry_set_transparency', args);
  }
  public static function instanceGeometrySetVisibilityRange(instance: Variant, min: Float, max: Float, minMargin: Float, maxMargin: Float, fadeMode: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(min);
      args.append(max);
      args.append(minMargin);
      args.append(maxMargin);
      args.append(fadeMode);
      getNative().call('instance_geometry_set_visibility_range', args);
  }
  public static function instanceSetBase(instance: Variant, base: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(base);
      getNative().call('instance_set_base', args);
  }
  public static function instanceSetBlendShapeWeight(instance: Variant, shape: Int, weight: Float): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(shape);
      args.append(weight);
      getNative().call('instance_set_blend_shape_weight', args);
  }
  public static function instanceSetCustomAabb(instance: Variant, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(aabb);
      getNative().call('instance_set_custom_aabb', args);
  }
  public static function instanceSetExtraVisibilityMargin(instance: Variant, margin: Float): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(margin);
      getNative().call('instance_set_extra_visibility_margin', args);
  }
  public static function instanceSetIgnoreCulling(instance: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(enabled);
      getNative().call('instance_set_ignore_culling', args);
  }
  public static function instanceSetLayerMask(instance: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(mask);
      getNative().call('instance_set_layer_mask', args);
  }
  public static function instanceSetPivotData(instance: Variant, sortingOffset: Float, useAabbCenter: Bool): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(sortingOffset);
      args.append(useAabbCenter);
      getNative().call('instance_set_pivot_data', args);
  }
  public static function instanceSetScenario(instance: Variant, scenario: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(scenario);
      getNative().call('instance_set_scenario', args);
  }
  public static function instanceSetSurfaceOverrideMaterial(instance: Variant, surface: Int, material: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(surface);
      args.append(material);
      getNative().call('instance_set_surface_override_material', args);
  }
  public static function instanceSetTransform(instance: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(transform);
      getNative().call('instance_set_transform', args);
  }
  public static function instanceSetVisibilityParent(instance: Variant, parent: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(parent);
      getNative().call('instance_set_visibility_parent', args);
  }
  public static function instanceSetVisible(instance: Variant, visible: Bool): Void {
      var args = new ArrayList();
      args.append(instance);
      args.append(visible);
      getNative().call('instance_set_visible', args);
  }
  public static function instanceTeleport(instance: Variant): Void {
      var args = new ArrayList();
      args.append(instance);
      getNative().call('instance_teleport', args);
  }
  public static function instancesCullAabb(aabb: Variant, ?scenario: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(aabb);
      if (scenario != null) {
          args.append(scenario);
      }
      return getNative().call('instances_cull_aabb', args);
  }
  public static function instancesCullConvex(convex: Variant, ?scenario: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(convex);
      if (scenario != null) {
          args.append(scenario);
      }
      return getNative().call('instances_cull_convex', args);
  }
  public static function instancesCullRay(from: Vector3, to: Vector3, ?scenario: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      if (scenario != null) {
          args.append(scenario);
      }
      return getNative().call('instances_cull_ray', args);
  }
  public static function isOnRenderThread(): Bool {
      var args = new ArrayList();
      return getNative().call('is_on_render_thread', args);
  }
  public static function lightDirectionalSetBlendSplits(light: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enable);
      getNative().call('light_directional_set_blend_splits', args);
  }
  public static function lightDirectionalSetShadowMode(light: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('light_directional_set_shadow_mode', args);
  }
  public static function lightDirectionalSetSkyMode(light: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('light_directional_set_sky_mode', args);
  }
  public static function lightOmniSetShadowMode(light: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mode);
      getNative().call('light_omni_set_shadow_mode', args);
  }
  public static function lightProjectorsSetFilter(filter: Int): Void {
      var args = new ArrayList();
      args.append(filter);
      getNative().call('light_projectors_set_filter', args);
  }
  public static function lightSetBakeMode(light: Variant, bakeMode: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(bakeMode);
      getNative().call('light_set_bake_mode', args);
  }
  public static function lightSetColor(light: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(color);
      getNative().call('light_set_color', args);
  }
  public static function lightSetCullMask(light: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mask);
      getNative().call('light_set_cull_mask', args);
  }
  public static function lightSetDistanceFade(decal: Variant, enabled: Bool, begin: Float, shadow: Float, length: Float): Void {
      var args = new ArrayList();
      args.append(decal);
      args.append(enabled);
      args.append(begin);
      args.append(shadow);
      args.append(length);
      getNative().call('light_set_distance_fade', args);
  }
  public static function lightSetMaxSdfgiCascade(light: Variant, cascade: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(cascade);
      getNative().call('light_set_max_sdfgi_cascade', args);
  }
  public static function lightSetNegative(light: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enable);
      getNative().call('light_set_negative', args);
  }
  public static function lightSetParam(light: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(param);
      args.append(value);
      getNative().call('light_set_param', args);
  }
  public static function lightSetProjector(light: Variant, texture: Variant): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(texture);
      getNative().call('light_set_projector', args);
  }
  public static function lightSetReverseCullFaceMode(light: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enabled);
      getNative().call('light_set_reverse_cull_face_mode', args);
  }
  public static function lightSetShadow(light: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(enabled);
      getNative().call('light_set_shadow', args);
  }
  public static function lightSetShadowCasterMask(light: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(light);
      args.append(mask);
      getNative().call('light_set_shadow_caster_mask', args);
  }
  public static function lightmapCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('lightmap_create', args);
  }
  public static function lightmapGetProbeCaptureBspTree(lightmap: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(lightmap);
      return getNative().call('lightmap_get_probe_capture_bsp_tree', args);
  }
  public static function lightmapGetProbeCapturePoints(lightmap: Variant): TypedArray<Vector3> {
      var args = new ArrayList();
      args.append(lightmap);
      return getNative().call('lightmap_get_probe_capture_points', args);
  }
  public static function lightmapGetProbeCaptureSh(lightmap: Variant): TypedArray<Color> {
      var args = new ArrayList();
      args.append(lightmap);
      return getNative().call('lightmap_get_probe_capture_sh', args);
  }
  public static function lightmapGetProbeCaptureTetrahedra(lightmap: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(lightmap);
      return getNative().call('lightmap_get_probe_capture_tetrahedra', args);
  }
  public static function lightmapSetBakedExposureNormalization(lightmap: Variant, bakedExposure: Float): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(bakedExposure);
      getNative().call('lightmap_set_baked_exposure_normalization', args);
  }
  public static function lightmapSetProbeBounds(lightmap: Variant, bounds: Variant): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(bounds);
      getNative().call('lightmap_set_probe_bounds', args);
  }
  public static function lightmapSetProbeCaptureData(lightmap: Variant, points: TypedArray<Vector3>, pointSh: TypedArray<Color>, tetrahedra: TypedArray<Int>, bspTree: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(points);
      args.append(pointSh);
      args.append(tetrahedra);
      args.append(bspTree);
      getNative().call('lightmap_set_probe_capture_data', args);
  }
  public static function lightmapSetProbeCaptureUpdateSpeed(speed: Float): Void {
      var args = new ArrayList();
      args.append(speed);
      getNative().call('lightmap_set_probe_capture_update_speed', args);
  }
  public static function lightmapSetProbeInterior(lightmap: Variant, interior: Bool): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(interior);
      getNative().call('lightmap_set_probe_interior', args);
  }
  public static function lightmapSetTextures(lightmap: Variant, light: Variant, usesSh: Bool): Void {
      var args = new ArrayList();
      args.append(lightmap);
      args.append(light);
      args.append(usesSh);
      getNative().call('lightmap_set_textures', args);
  }
  public static function lightmapsSetBicubicFilter(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      getNative().call('lightmaps_set_bicubic_filter', args);
  }
  public static function makeSphereMesh(latitudes: Int, longitudes: Int, radius: Float): Variant {
      var args = new ArrayList();
      args.append(latitudes);
      args.append(longitudes);
      args.append(radius);
      return getNative().call('make_sphere_mesh', args);
  }
  public static function materialCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('material_create', args);
  }
  public static function materialGetParam(material: Variant, parameter: String): Variant {
      var args = new ArrayList();
      args.append(material);
      args.append(parameter);
      return getNative().call('material_get_param', args);
  }
  public static function materialSetNextPass(material: Variant, nextMaterial: Variant): Void {
      var args = new ArrayList();
      args.append(material);
      args.append(nextMaterial);
      getNative().call('material_set_next_pass', args);
  }
  public static function materialSetParam(material: Variant, parameter: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(material);
      args.append(parameter);
      args.append(value);
      getNative().call('material_set_param', args);
  }
  public static function materialSetRenderPriority(material: Variant, priority: Int): Void {
      var args = new ArrayList();
      args.append(material);
      args.append(priority);
      getNative().call('material_set_render_priority', args);
  }
  public static function materialSetShader(shaderMaterial: Variant, shader: Variant): Void {
      var args = new ArrayList();
      args.append(shaderMaterial);
      args.append(shader);
      getNative().call('material_set_shader', args);
  }
  public static function materialSetUseDebanding(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      getNative().call('material_set_use_debanding', args);
  }
  public static function meshAddSurface(mesh: Variant, surface: Dictionary): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      getNative().call('mesh_add_surface', args);
  }
  public static function meshAddSurfaceFromArrays(mesh: Variant, primitive: Int, arrays: ArrayList, ?blendShapes: ArrayList, ?lods: Dictionary, ?compressFormat: Int): Void {
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
  public static function meshClear(mesh: Variant): Void {
      var args = new ArrayList();
      args.append(mesh);
      getNative().call('mesh_clear', args);
  }
  public static function meshCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('mesh_create', args);
  }
  public static function meshCreateFromSurfaces(surfaces: Variant, ?blendShapeCount: Int): Variant {
      var args = new ArrayList();
      args.append(surfaces);
      if (blendShapeCount != null) {
          args.append(blendShapeCount);
      }
      return getNative().call('mesh_create_from_surfaces', args);
  }
  public static function meshGetBlendShapeCount(mesh: Variant): Int {
      var args = new ArrayList();
      args.append(mesh);
      return getNative().call('mesh_get_blend_shape_count', args);
  }
  public static function meshGetBlendShapeMode(mesh: Variant): Int {
      var args = new ArrayList();
      args.append(mesh);
      return getNative().call('mesh_get_blend_shape_mode', args);
  }
  public static function meshGetSurface(mesh: Variant, surface: Int): Dictionary {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      return getNative().call('mesh_get_surface', args);
  }
  public static function meshGetSurfaceCount(mesh: Variant): Int {
      var args = new ArrayList();
      args.append(mesh);
      return getNative().call('mesh_get_surface_count', args);
  }
  public static function meshSetBlendShapeMode(mesh: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(mode);
      getNative().call('mesh_set_blend_shape_mode', args);
  }
  public static function meshSetCustomAabb(mesh: Variant, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(aabb);
      getNative().call('mesh_set_custom_aabb', args);
  }
  public static function meshSetShadowMesh(mesh: Variant, shadowMesh: Variant): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(shadowMesh);
      getNative().call('mesh_set_shadow_mesh', args);
  }
  public static function meshSurfaceGetArrays(mesh: Variant, surface: Int): ArrayList {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      return getNative().call('mesh_surface_get_arrays', args);
  }
  public static function meshSurfaceGetFormatAttributeStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_attribute_stride', args);
  }
  public static function meshSurfaceGetFormatIndexStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_index_stride', args);
  }
  public static function meshSurfaceGetFormatNormalTangentStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_normal_tangent_stride', args);
  }
  public static function meshSurfaceGetFormatOffset(format: Int, vertexCount: Int, arrayIndex: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      args.append(arrayIndex);
      return getNative().call('mesh_surface_get_format_offset', args);
  }
  public static function meshSurfaceGetFormatSkinStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_skin_stride', args);
  }
  public static function meshSurfaceGetFormatVertexStride(format: Int, vertexCount: Int): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(vertexCount);
      return getNative().call('mesh_surface_get_format_vertex_stride', args);
  }
  public static function meshSurfaceGetMaterial(mesh: Variant, surface: Int): Variant {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      return getNative().call('mesh_surface_get_material', args);
  }
  public static function meshSurfaceRemove(mesh: Variant, surface: Int): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      getNative().call('mesh_surface_remove', args);
  }
  public static function meshSurfaceSetMaterial(mesh: Variant, surface: Int, material: Variant): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(material);
      getNative().call('mesh_surface_set_material', args);
  }
  public static function meshSurfaceUpdateAttributeRegion(mesh: Variant, surface: Int, offset: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(offset);
      args.append(data);
      getNative().call('mesh_surface_update_attribute_region', args);
  }
  public static function meshSurfaceUpdateIndexRegion(mesh: Variant, surface: Int, offset: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(offset);
      args.append(data);
      getNative().call('mesh_surface_update_index_region', args);
  }
  public static function meshSurfaceUpdateSkinRegion(mesh: Variant, surface: Int, offset: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(offset);
      args.append(data);
      getNative().call('mesh_surface_update_skin_region', args);
  }
  public static function meshSurfaceUpdateVertexRegion(mesh: Variant, surface: Int, offset: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(surface);
      args.append(offset);
      args.append(data);
      getNative().call('mesh_surface_update_vertex_region', args);
  }
  public static function multimeshAllocateData(multimesh: Variant, instances: Int, transformFormat: Int, ?colorFormat: Bool, ?customDataFormat: Bool, ?useIndirect: Bool): Void {
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
  public static function multimeshCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('multimesh_create', args);
  }
  public static function multimeshGetBuffer(multimesh: Variant): TypedArray<Float> {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_buffer', args);
  }
  public static function multimeshGetBufferRdRid(multimesh: Variant): Variant {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_buffer_rd_rid', args);
  }
  public static function multimeshGetCommandBufferRdRid(multimesh: Variant): Variant {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_command_buffer_rd_rid', args);
  }
  public static function multimeshGetInstanceCount(multimesh: Variant): Int {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_instance_count', args);
  }
  public static function multimeshGetMesh(multimesh: Variant): Variant {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_mesh', args);
  }
  public static function multimeshGetVisibleInstances(multimesh: Variant): Int {
      var args = new ArrayList();
      args.append(multimesh);
      return getNative().call('multimesh_get_visible_instances', args);
  }
  public static function multimeshInstanceGetColor(multimesh: Variant, index: Int): Color {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      return getNative().call('multimesh_instance_get_color', args);
  }
  public static function multimeshInstanceGetCustomData(multimesh: Variant, index: Int): Color {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      return getNative().call('multimesh_instance_get_custom_data', args);
  }
  public static function multimeshInstanceResetPhysicsInterpolation(multimesh: Variant, index: Int): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      getNative().call('multimesh_instance_reset_physics_interpolation', args);
  }
  public static function multimeshInstanceSetColor(multimesh: Variant, index: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      args.append(color);
      getNative().call('multimesh_instance_set_color', args);
  }
  public static function multimeshInstanceSetCustomData(multimesh: Variant, index: Int, customData: Color): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      args.append(customData);
      getNative().call('multimesh_instance_set_custom_data', args);
  }
  public static function multimeshInstanceSetTransform(multimesh: Variant, index: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      args.append(transform);
      getNative().call('multimesh_instance_set_transform', args);
  }
  public static function multimeshInstanceSetTransform2d(multimesh: Variant, index: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(index);
      args.append(transform);
      getNative().call('multimesh_instance_set_transform_2d', args);
  }
  public static function multimeshInstancesResetPhysicsInterpolation(multimesh: Variant): Void {
      var args = new ArrayList();
      args.append(multimesh);
      getNative().call('multimesh_instances_reset_physics_interpolation', args);
  }
  public static function multimeshSetBuffer(multimesh: Variant, buffer: TypedArray<Float>): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(buffer);
      getNative().call('multimesh_set_buffer', args);
  }
  public static function multimeshSetBufferInterpolated(multimesh: Variant, buffer: TypedArray<Float>, bufferPrevious: TypedArray<Float>): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(buffer);
      args.append(bufferPrevious);
      getNative().call('multimesh_set_buffer_interpolated', args);
  }
  public static function multimeshSetCustomAabb(multimesh: Variant, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(aabb);
      getNative().call('multimesh_set_custom_aabb', args);
  }
  public static function multimeshSetMesh(multimesh: Variant, mesh: Variant): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(mesh);
      getNative().call('multimesh_set_mesh', args);
  }
  public static function multimeshSetPhysicsInterpolated(multimesh: Variant, interpolated: Bool): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(interpolated);
      getNative().call('multimesh_set_physics_interpolated', args);
  }
  public static function multimeshSetPhysicsInterpolationQuality(multimesh: Variant, quality: Int): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(quality);
      getNative().call('multimesh_set_physics_interpolation_quality', args);
  }
  public static function multimeshSetVisibleInstances(multimesh: Variant, visible: Int): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(visible);
      getNative().call('multimesh_set_visible_instances', args);
  }
  public static function occluderCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('occluder_create', args);
  }
  public static function occluderSetMesh(occluder: Variant, vertices: TypedArray<Vector3>, indices: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(occluder);
      args.append(vertices);
      args.append(indices);
      getNative().call('occluder_set_mesh', args);
  }
  public static function omniLightCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('omni_light_create', args);
  }
  public static function particlesCollisionCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('particles_collision_create', args);
  }
  public static function particlesCollisionHeightFieldUpdate(particlesCollision: Variant): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      getNative().call('particles_collision_height_field_update', args);
  }
  public static function particlesCollisionSetAttractorAttenuation(particlesCollision: Variant, curve: Float): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(curve);
      getNative().call('particles_collision_set_attractor_attenuation', args);
  }
  public static function particlesCollisionSetAttractorDirectionality(particlesCollision: Variant, amount: Float): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(amount);
      getNative().call('particles_collision_set_attractor_directionality', args);
  }
  public static function particlesCollisionSetAttractorStrength(particlesCollision: Variant, strength: Float): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(strength);
      getNative().call('particles_collision_set_attractor_strength', args);
  }
  public static function particlesCollisionSetBoxExtents(particlesCollision: Variant, extents: Vector3): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(extents);
      getNative().call('particles_collision_set_box_extents', args);
  }
  public static function particlesCollisionSetCollisionType(particlesCollision: Variant, type: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(type);
      getNative().call('particles_collision_set_collision_type', args);
  }
  public static function particlesCollisionSetCullMask(particlesCollision: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(mask);
      getNative().call('particles_collision_set_cull_mask', args);
  }
  public static function particlesCollisionSetFieldTexture(particlesCollision: Variant, texture: Variant): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(texture);
      getNative().call('particles_collision_set_field_texture', args);
  }
  public static function particlesCollisionSetHeightFieldMask(particlesCollision: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(mask);
      getNative().call('particles_collision_set_height_field_mask', args);
  }
  public static function particlesCollisionSetHeightFieldResolution(particlesCollision: Variant, resolution: Int): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(resolution);
      getNative().call('particles_collision_set_height_field_resolution', args);
  }
  public static function particlesCollisionSetSphereRadius(particlesCollision: Variant, radius: Float): Void {
      var args = new ArrayList();
      args.append(particlesCollision);
      args.append(radius);
      getNative().call('particles_collision_set_sphere_radius', args);
  }
  public static function particlesCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('particles_create', args);
  }
  public static function particlesEmit(particles: Variant, transform: Variant, velocity: Vector3, color: Color, custom: Color, emitFlags: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(transform);
      args.append(velocity);
      args.append(color);
      args.append(custom);
      args.append(emitFlags);
      getNative().call('particles_emit', args);
  }
  public static function particlesGetEmitting(particles: Variant): Bool {
      var args = new ArrayList();
      args.append(particles);
      return getNative().call('particles_get_emitting', args);
  }
  public static function particlesIsInactive(particles: Variant): Bool {
      var args = new ArrayList();
      args.append(particles);
      return getNative().call('particles_is_inactive', args);
  }
  public static function particlesRequestProcess(particles: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      getNative().call('particles_request_process', args);
  }
  public static function particlesRequestProcessTime(particles: Variant, time: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(time);
      getNative().call('particles_request_process_time', args);
  }
  public static function particlesRestart(particles: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      getNative().call('particles_restart', args);
  }
  public static function particlesSetAmount(particles: Variant, amount: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(amount);
      getNative().call('particles_set_amount', args);
  }
  public static function particlesSetAmountRatio(particles: Variant, ratio: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(ratio);
      getNative().call('particles_set_amount_ratio', args);
  }
  public static function particlesSetCollisionBaseSize(particles: Variant, size: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(size);
      getNative().call('particles_set_collision_base_size', args);
  }
  public static function particlesSetCustomAabb(particles: Variant, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(aabb);
      getNative().call('particles_set_custom_aabb', args);
  }
  public static function particlesSetDrawOrder(particles: Variant, order: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(order);
      getNative().call('particles_set_draw_order', args);
  }
  public static function particlesSetDrawPassMesh(particles: Variant, pass: Int, mesh: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(pass);
      args.append(mesh);
      getNative().call('particles_set_draw_pass_mesh', args);
  }
  public static function particlesSetDrawPasses(particles: Variant, count: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(count);
      getNative().call('particles_set_draw_passes', args);
  }
  public static function particlesSetEmissionTransform(particles: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(transform);
      getNative().call('particles_set_emission_transform', args);
  }
  public static function particlesSetEmitterVelocity(particles: Variant, velocity: Vector3): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(velocity);
      getNative().call('particles_set_emitter_velocity', args);
  }
  public static function particlesSetEmitting(particles: Variant, emitting: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(emitting);
      getNative().call('particles_set_emitting', args);
  }
  public static function particlesSetExplosivenessRatio(particles: Variant, ratio: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(ratio);
      getNative().call('particles_set_explosiveness_ratio', args);
  }
  public static function particlesSetFixedFps(particles: Variant, fps: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(fps);
      getNative().call('particles_set_fixed_fps', args);
  }
  public static function particlesSetFractionalDelta(particles: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(enable);
      getNative().call('particles_set_fractional_delta', args);
  }
  public static function particlesSetInterpToEnd(particles: Variant, factor: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(factor);
      getNative().call('particles_set_interp_to_end', args);
  }
  public static function particlesSetInterpolate(particles: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(enable);
      getNative().call('particles_set_interpolate', args);
  }
  public static function particlesSetLifetime(particles: Variant, lifetime: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(lifetime);
      getNative().call('particles_set_lifetime', args);
  }
  public static function particlesSetMode(particles: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(mode);
      getNative().call('particles_set_mode', args);
  }
  public static function particlesSetOneShot(particles: Variant, oneShot: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(oneShot);
      getNative().call('particles_set_one_shot', args);
  }
  public static function particlesSetPreProcessTime(particles: Variant, time: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(time);
      getNative().call('particles_set_pre_process_time', args);
  }
  public static function particlesSetProcessMaterial(particles: Variant, material: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(material);
      getNative().call('particles_set_process_material', args);
  }
  public static function particlesSetRandomnessRatio(particles: Variant, ratio: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(ratio);
      getNative().call('particles_set_randomness_ratio', args);
  }
  public static function particlesSetSpeedScale(particles: Variant, scale: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(scale);
      getNative().call('particles_set_speed_scale', args);
  }
  public static function particlesSetSubemitter(particles: Variant, subemitterParticles: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(subemitterParticles);
      getNative().call('particles_set_subemitter', args);
  }
  public static function particlesSetTrailBindPoses(particles: Variant, bindPoses: Variant): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(bindPoses);
      getNative().call('particles_set_trail_bind_poses', args);
  }
  public static function particlesSetTrails(particles: Variant, enable: Bool, lengthSec: Float): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(enable);
      args.append(lengthSec);
      getNative().call('particles_set_trails', args);
  }
  public static function particlesSetTransformAlign(particles: Variant, align: Int): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(align);
      getNative().call('particles_set_transform_align', args);
  }
  public static function particlesSetUseLocalCoordinates(particles: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(particles);
      args.append(enable);
      getNative().call('particles_set_use_local_coordinates', args);
  }
  public static function positionalSoftShadowFilterSetQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('positional_soft_shadow_filter_set_quality', args);
  }
  public static function reflectionProbeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('reflection_probe_create', args);
  }
  public static function reflectionProbeSetAmbientColor(probe: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(color);
      getNative().call('reflection_probe_set_ambient_color', args);
  }
  public static function reflectionProbeSetAmbientEnergy(probe: Variant, energy: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(energy);
      getNative().call('reflection_probe_set_ambient_energy', args);
  }
  public static function reflectionProbeSetAmbientMode(probe: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(mode);
      getNative().call('reflection_probe_set_ambient_mode', args);
  }
  public static function reflectionProbeSetAsInterior(probe: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(enable);
      getNative().call('reflection_probe_set_as_interior', args);
  }
  public static function reflectionProbeSetBlendDistance(probe: Variant, blendDistance: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(blendDistance);
      getNative().call('reflection_probe_set_blend_distance', args);
  }
  public static function reflectionProbeSetCullMask(probe: Variant, layers: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(layers);
      getNative().call('reflection_probe_set_cull_mask', args);
  }
  public static function reflectionProbeSetEnableBoxProjection(probe: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(enable);
      getNative().call('reflection_probe_set_enable_box_projection', args);
  }
  public static function reflectionProbeSetEnableShadows(probe: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(enable);
      getNative().call('reflection_probe_set_enable_shadows', args);
  }
  public static function reflectionProbeSetIntensity(probe: Variant, intensity: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(intensity);
      getNative().call('reflection_probe_set_intensity', args);
  }
  public static function reflectionProbeSetMaxDistance(probe: Variant, distance: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(distance);
      getNative().call('reflection_probe_set_max_distance', args);
  }
  public static function reflectionProbeSetMeshLodThreshold(probe: Variant, pixels: Float): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(pixels);
      getNative().call('reflection_probe_set_mesh_lod_threshold', args);
  }
  public static function reflectionProbeSetOriginOffset(probe: Variant, offset: Vector3): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(offset);
      getNative().call('reflection_probe_set_origin_offset', args);
  }
  public static function reflectionProbeSetReflectionMask(probe: Variant, layers: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(layers);
      getNative().call('reflection_probe_set_reflection_mask', args);
  }
  public static function reflectionProbeSetResolution(probe: Variant, resolution: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(resolution);
      getNative().call('reflection_probe_set_resolution', args);
  }
  public static function reflectionProbeSetSize(probe: Variant, size: Vector3): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(size);
      getNative().call('reflection_probe_set_size', args);
  }
  public static function reflectionProbeSetUpdateMode(probe: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(probe);
      args.append(mode);
      getNative().call('reflection_probe_set_update_mode', args);
  }
  public static function requestFrameDrawnCallback(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      getNative().call('request_frame_drawn_callback', args);
  }
  public static function scenarioCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('scenario_create', args);
  }
  public static function scenarioSetCameraAttributes(scenario: Variant, effects: Variant): Void {
      var args = new ArrayList();
      args.append(scenario);
      args.append(effects);
      getNative().call('scenario_set_camera_attributes', args);
  }
  public static function scenarioSetCompositor(scenario: Variant, compositor: Variant): Void {
      var args = new ArrayList();
      args.append(scenario);
      args.append(compositor);
      getNative().call('scenario_set_compositor', args);
  }
  public static function scenarioSetEnvironment(scenario: Variant, environment: Variant): Void {
      var args = new ArrayList();
      args.append(scenario);
      args.append(environment);
      getNative().call('scenario_set_environment', args);
  }
  public static function scenarioSetFallbackEnvironment(scenario: Variant, environment: Variant): Void {
      var args = new ArrayList();
      args.append(scenario);
      args.append(environment);
      getNative().call('scenario_set_fallback_environment', args);
  }
  public static function screenSpaceRoughnessLimiterSetActive(enable: Bool, amount: Float, limit: Float): Void {
      var args = new ArrayList();
      args.append(enable);
      args.append(amount);
      args.append(limit);
      getNative().call('screen_space_roughness_limiter_set_active', args);
  }
  public static function setBootImage(image: Image, color: Color, scale: Bool, ?useFilter: Bool): Void {
      var args = new ArrayList();
      args.append(image.native);
      args.append(color);
      args.append(scale);
      if (useFilter != null) {
          args.append(useFilter);
      }
      getNative().call('set_boot_image', args);
  }
  public static function setBootImageWithStretch(image: Image, color: Color, stretchMode: Int, ?useFilter: Bool): Void {
      var args = new ArrayList();
      args.append(image.native);
      args.append(color);
      args.append(stretchMode);
      if (useFilter != null) {
          args.append(useFilter);
      }
      getNative().call('set_boot_image_with_stretch', args);
  }
  public static function setDebugGenerateWireframes(generate: Bool): Void {
      var args = new ArrayList();
      args.append(generate);
      getNative().call('set_debug_generate_wireframes', args);
  }
  public static function setDefaultClearColor(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      getNative().call('set_default_clear_color', args);
  }
  public static function shaderCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('shader_create', args);
  }
  public static function shaderGetCode(shader: Variant): String {
      var args = new ArrayList();
      args.append(shader);
      return getNative().call('shader_get_code', args);
  }
  public static function shaderGetDefaultTextureParameter(shader: Variant, name: String, ?index: Int): Variant {
      var args = new ArrayList();
      args.append(shader);
      args.append(name);
      if (index != null) {
          args.append(index);
      }
      return getNative().call('shader_get_default_texture_parameter', args);
  }
  public static function shaderGetParameterDefault(shader: Variant, name: String): Variant {
      var args = new ArrayList();
      args.append(shader);
      args.append(name);
      return getNative().call('shader_get_parameter_default', args);
  }
  public static function shaderSetCode(shader: Variant, code: String): Void {
      var args = new ArrayList();
      args.append(shader);
      args.append(code);
      getNative().call('shader_set_code', args);
  }
  public static function shaderSetDefaultTextureParameter(shader: Variant, name: String, texture: Variant, ?index: Int): Void {
      var args = new ArrayList();
      args.append(shader);
      args.append(name);
      args.append(texture);
      if (index != null) {
          args.append(index);
      }
      getNative().call('shader_set_default_texture_parameter', args);
  }
  public static function shaderSetPathHint(shader: Variant, path: String): Void {
      var args = new ArrayList();
      args.append(shader);
      args.append(path);
      getNative().call('shader_set_path_hint', args);
  }
  public static function skeletonAllocateData(skeleton: Variant, bones: Int, ?is2dSkeleton: Bool): Void {
      var args = new ArrayList();
      args.append(skeleton);
      args.append(bones);
      if (is2dSkeleton != null) {
          args.append(is2dSkeleton);
      }
      getNative().call('skeleton_allocate_data', args);
  }
  public static function skeletonBoneSetTransform(skeleton: Variant, bone: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(skeleton);
      args.append(bone);
      args.append(transform);
      getNative().call('skeleton_bone_set_transform', args);
  }
  public static function skeletonBoneSetTransform2d(skeleton: Variant, bone: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(skeleton);
      args.append(bone);
      args.append(transform);
      getNative().call('skeleton_bone_set_transform_2d', args);
  }
  public static function skeletonCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('skeleton_create', args);
  }
  public static function skeletonGetBoneCount(skeleton: Variant): Int {
      var args = new ArrayList();
      args.append(skeleton);
      return getNative().call('skeleton_get_bone_count', args);
  }
  public static function skeletonSetBaseTransform2d(skeleton: Variant, baseTransform: Variant): Void {
      var args = new ArrayList();
      args.append(skeleton);
      args.append(baseTransform);
      getNative().call('skeleton_set_base_transform_2d', args);
  }
  public static function skyBakePanorama(sky: Variant, energy: Float, bakeIrradiance: Bool, size: Vector2i): Image {
      var args = new ArrayList();
      args.append(sky);
      args.append(energy);
      args.append(bakeIrradiance);
      args.append(size);
      var ref: NativeReference = getNative().call('sky_bake_panorama', args);
      return new Image(ref);
  }
  public static function skyCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('sky_create', args);
  }
  public static function skySetMaterial(sky: Variant, material: Variant): Void {
      var args = new ArrayList();
      args.append(sky);
      args.append(material);
      getNative().call('sky_set_material', args);
  }
  public static function skySetMode(sky: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(sky);
      args.append(mode);
      getNative().call('sky_set_mode', args);
  }
  public static function skySetRadianceSize(sky: Variant, radianceSize: Int): Void {
      var args = new ArrayList();
      args.append(sky);
      args.append(radianceSize);
      getNative().call('sky_set_radiance_size', args);
  }
  public static function spotLightCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('spot_light_create', args);
  }
  public static function subSurfaceScatteringSetQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('sub_surface_scattering_set_quality', args);
  }
  public static function subSurfaceScatteringSetScale(scale: Float, depthScale: Float): Void {
      var args = new ArrayList();
      args.append(scale);
      args.append(depthScale);
      getNative().call('sub_surface_scattering_set_scale', args);
  }
  public static function texture2dCreate(image: Image): Variant {
      var args = new ArrayList();
      args.append(image.native);
      return getNative().call('texture_2d_create', args);
  }
  public static function texture2dGet(texture: Variant): Image {
      var args = new ArrayList();
      args.append(texture);
      var ref: NativeReference = getNative().call('texture_2d_get', args);
      return new Image(ref);
  }
  public static function texture2dLayerGet(texture: Variant, layer: Int): Image {
      var args = new ArrayList();
      args.append(texture);
      args.append(layer);
      var ref: NativeReference = getNative().call('texture_2d_layer_get', args);
      return new Image(ref);
  }
  public static function texture2dLayeredCreate(layers: Variant, layeredType: Int): Variant {
      var args = new ArrayList();
      args.append(layers);
      args.append(layeredType);
      return getNative().call('texture_2d_layered_create', args);
  }
  public static function texture2dLayeredPlaceholderCreate(layeredType: Int): Variant {
      var args = new ArrayList();
      args.append(layeredType);
      return getNative().call('texture_2d_layered_placeholder_create', args);
  }
  public static function texture2dPlaceholderCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('texture_2d_placeholder_create', args);
  }
  public static function texture2dUpdate(texture: Variant, image: Image, layer: Int): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(image.native);
      args.append(layer);
      getNative().call('texture_2d_update', args);
  }
  public static function texture3dCreate(format: Int, width: Int, height: Int, depth: Int, mipmaps: Bool, data: Variant): Variant {
      var args = new ArrayList();
      args.append(format);
      args.append(width);
      args.append(height);
      args.append(depth);
      args.append(mipmaps);
      args.append(data);
      return getNative().call('texture_3d_create', args);
  }
  public static function texture3dPlaceholderCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('texture_3d_placeholder_create', args);
  }
  public static function texture3dUpdate(texture: Variant, data: Variant): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(data);
      getNative().call('texture_3d_update', args);
  }
  public static function textureCreateFromNativeHandle(type: Int, format: Int, nativeHandle: Int, width: Int, height: Int, depth: Int, ?layers: Int, ?layeredType: Int): Variant {
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
  public static function textureGetFormat(texture: Variant): Int {
      var args = new ArrayList();
      args.append(texture);
      return getNative().call('texture_get_format', args);
  }
  public static function textureGetNativeHandle(texture: Variant, ?srgb: Bool): Int {
      var args = new ArrayList();
      args.append(texture);
      if (srgb != null) {
          args.append(srgb);
      }
      return getNative().call('texture_get_native_handle', args);
  }
  public static function textureGetPath(texture: Variant): String {
      var args = new ArrayList();
      args.append(texture);
      return getNative().call('texture_get_path', args);
  }
  public static function textureGetRdTexture(texture: Variant, ?srgb: Bool): Variant {
      var args = new ArrayList();
      args.append(texture);
      if (srgb != null) {
          args.append(srgb);
      }
      return getNative().call('texture_get_rd_texture', args);
  }
  public static function textureProxyCreate(base: Variant): Variant {
      var args = new ArrayList();
      args.append(base);
      return getNative().call('texture_proxy_create', args);
  }
  public static function textureProxyUpdate(texture: Variant, proxyTo: Variant): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(proxyTo);
      getNative().call('texture_proxy_update', args);
  }
  public static function textureRdCreate(rdTexture: Variant, ?layerType: Int): Variant {
      var args = new ArrayList();
      args.append(rdTexture);
      if (layerType != null) {
          args.append(layerType);
      }
      return getNative().call('texture_rd_create', args);
  }
  public static function textureReplace(texture: Variant, byTexture: Variant): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(byTexture);
      getNative().call('texture_replace', args);
  }
  public static function textureSetForceRedrawIfVisible(texture: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(enable);
      getNative().call('texture_set_force_redraw_if_visible', args);
  }
  public static function textureSetPath(texture: Variant, path: String): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(path);
      getNative().call('texture_set_path', args);
  }
  public static function textureSetSizeOverride(texture: Variant, width: Int, height: Int): Void {
      var args = new ArrayList();
      args.append(texture);
      args.append(width);
      args.append(height);
      getNative().call('texture_set_size_override', args);
  }
  public static function viewportAttachCamera(viewport: Variant, camera: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(camera);
      getNative().call('viewport_attach_camera', args);
  }
  public static function viewportAttachCanvas(viewport: Variant, canvas: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvas);
      getNative().call('viewport_attach_canvas', args);
  }
  public static function viewportAttachToScreen(viewport: Variant, ?rect: Rect2, ?screen: Int): Void {
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
  public static function viewportCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('viewport_create', args);
  }
  public static function viewportGetMeasuredRenderTimeCpu(viewport: Variant): Float {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_measured_render_time_cpu', args);
  }
  public static function viewportGetMeasuredRenderTimeGpu(viewport: Variant): Float {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_measured_render_time_gpu', args);
  }
  public static function viewportGetRenderInfo(viewport: Variant, type: Int, info: Int): Int {
      var args = new ArrayList();
      args.append(viewport);
      args.append(type);
      args.append(info);
      return getNative().call('viewport_get_render_info', args);
  }
  public static function viewportGetRenderTarget(viewport: Variant): Variant {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_render_target', args);
  }
  public static function viewportGetTexture(viewport: Variant): Variant {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_texture', args);
  }
  public static function viewportGetUpdateMode(viewport: Variant): Int {
      var args = new ArrayList();
      args.append(viewport);
      return getNative().call('viewport_get_update_mode', args);
  }
  public static function viewportRemoveCanvas(viewport: Variant, canvas: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvas);
      getNative().call('viewport_remove_canvas', args);
  }
  public static function viewportSetActive(viewport: Variant, active: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(active);
      getNative().call('viewport_set_active', args);
  }
  public static function viewportSetAnisotropicFilteringLevel(viewport: Variant, anisotropicFilteringLevel: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(anisotropicFilteringLevel);
      getNative().call('viewport_set_anisotropic_filtering_level', args);
  }
  public static function viewportSetCanvasCullMask(viewport: Variant, canvasCullMask: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvasCullMask);
      getNative().call('viewport_set_canvas_cull_mask', args);
  }
  public static function viewportSetCanvasStacking(viewport: Variant, canvas: Variant, layer: Int, sublayer: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvas);
      args.append(layer);
      args.append(sublayer);
      getNative().call('viewport_set_canvas_stacking', args);
  }
  public static function viewportSetCanvasTransform(viewport: Variant, canvas: Variant, offset: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(canvas);
      args.append(offset);
      getNative().call('viewport_set_canvas_transform', args);
  }
  public static function viewportSetClearMode(viewport: Variant, clearMode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(clearMode);
      getNative().call('viewport_set_clear_mode', args);
  }
  public static function viewportSetDebugDraw(viewport: Variant, draw: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(draw);
      getNative().call('viewport_set_debug_draw', args);
  }
  public static function viewportSetDefaultCanvasItemTextureFilter(viewport: Variant, filter: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(filter);
      getNative().call('viewport_set_default_canvas_item_texture_filter', args);
  }
  public static function viewportSetDefaultCanvasItemTextureRepeat(viewport: Variant, repeat: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(repeat);
      getNative().call('viewport_set_default_canvas_item_texture_repeat', args);
  }
  public static function viewportSetDisable2d(viewport: Variant, disable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(disable);
      getNative().call('viewport_set_disable_2d', args);
  }
  public static function viewportSetDisable3d(viewport: Variant, disable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(disable);
      getNative().call('viewport_set_disable_3d', args);
  }
  public static function viewportSetEnvironmentMode(viewport: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mode);
      getNative().call('viewport_set_environment_mode', args);
  }
  public static function viewportSetFsrSharpness(viewport: Variant, sharpness: Float): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(sharpness);
      getNative().call('viewport_set_fsr_sharpness', args);
  }
  public static function viewportSetGlobalCanvasTransform(viewport: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(transform);
      getNative().call('viewport_set_global_canvas_transform', args);
  }
  public static function viewportSetMeasureRenderTime(viewport: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enable);
      getNative().call('viewport_set_measure_render_time', args);
  }
  public static function viewportSetMsaa2d(viewport: Variant, msaa: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(msaa);
      getNative().call('viewport_set_msaa_2d', args);
  }
  public static function viewportSetMsaa3d(viewport: Variant, msaa: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(msaa);
      getNative().call('viewport_set_msaa_3d', args);
  }
  public static function viewportSetOcclusionCullingBuildQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('viewport_set_occlusion_culling_build_quality', args);
  }
  public static function viewportSetOcclusionRaysPerThread(raysPerThread: Int): Void {
      var args = new ArrayList();
      args.append(raysPerThread);
      getNative().call('viewport_set_occlusion_rays_per_thread', args);
  }
  public static function viewportSetParentViewport(viewport: Variant, parentViewport: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(parentViewport);
      getNative().call('viewport_set_parent_viewport', args);
  }
  public static function viewportSetPositionalShadowAtlasQuadrantSubdivision(viewport: Variant, quadrant: Int, subdivision: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(quadrant);
      args.append(subdivision);
      getNative().call('viewport_set_positional_shadow_atlas_quadrant_subdivision', args);
  }
  public static function viewportSetPositionalShadowAtlasSize(viewport: Variant, size: Int, ?use16Bits: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(size);
      if (use16Bits != null) {
          args.append(use16Bits);
      }
      getNative().call('viewport_set_positional_shadow_atlas_size', args);
  }
  public static function viewportSetRenderDirectToScreen(viewport: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_render_direct_to_screen', args);
  }
  public static function viewportSetScaling3dMode(viewport: Variant, scaling3dMode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(scaling3dMode);
      getNative().call('viewport_set_scaling_3d_mode', args);
  }
  public static function viewportSetScaling3dScale(viewport: Variant, scale: Float): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(scale);
      getNative().call('viewport_set_scaling_3d_scale', args);
  }
  public static function viewportSetScenario(viewport: Variant, scenario: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(scenario);
      getNative().call('viewport_set_scenario', args);
  }
  public static function viewportSetScreenSpaceAa(viewport: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mode);
      getNative().call('viewport_set_screen_space_aa', args);
  }
  public static function viewportSetSdfOversizeAndScale(viewport: Variant, oversize: Int, scale: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(oversize);
      args.append(scale);
      getNative().call('viewport_set_sdf_oversize_and_scale', args);
  }
  public static function viewportSetSize(viewport: Variant, width: Int, height: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(width);
      args.append(height);
      getNative().call('viewport_set_size', args);
  }
  public static function viewportSetSnap2dTransformsToPixel(viewport: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_snap_2d_transforms_to_pixel', args);
  }
  public static function viewportSetSnap2dVerticesToPixel(viewport: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_snap_2d_vertices_to_pixel', args);
  }
  public static function viewportSetTextureMipmapBias(viewport: Variant, mipmapBias: Float): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mipmapBias);
      getNative().call('viewport_set_texture_mipmap_bias', args);
  }
  public static function viewportSetTransparentBackground(viewport: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_transparent_background', args);
  }
  public static function viewportSetUpdateMode(viewport: Variant, updateMode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(updateMode);
      getNative().call('viewport_set_update_mode', args);
  }
  public static function viewportSetUseDebanding(viewport: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enable);
      getNative().call('viewport_set_use_debanding', args);
  }
  public static function viewportSetUseHdr2d(viewport: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enabled);
      getNative().call('viewport_set_use_hdr_2d', args);
  }
  public static function viewportSetUseOcclusionCulling(viewport: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enable);
      getNative().call('viewport_set_use_occlusion_culling', args);
  }
  public static function viewportSetUseTaa(viewport: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(enable);
      getNative().call('viewport_set_use_taa', args);
  }
  public static function viewportSetUseXr(viewport: Variant, useXr: Bool): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(useXr);
      getNative().call('viewport_set_use_xr', args);
  }
  public static function viewportSetVrsMode(viewport: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mode);
      getNative().call('viewport_set_vrs_mode', args);
  }
  public static function viewportSetVrsTexture(viewport: Variant, texture: Variant): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(texture);
      getNative().call('viewport_set_vrs_texture', args);
  }
  public static function viewportSetVrsUpdateMode(viewport: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(viewport);
      args.append(mode);
      getNative().call('viewport_set_vrs_update_mode', args);
  }
  public static function visibilityNotifierCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('visibility_notifier_create', args);
  }
  public static function visibilityNotifierSetAabb(notifier: Variant, aabb: Variant): Void {
      var args = new ArrayList();
      args.append(notifier);
      args.append(aabb);
      getNative().call('visibility_notifier_set_aabb', args);
  }
  public static function visibilityNotifierSetCallbacks(notifier: Variant, enterCallable: Variant, exitCallable: Variant): Void {
      var args = new ArrayList();
      args.append(notifier);
      args.append(enterCallable);
      args.append(exitCallable);
      getNative().call('visibility_notifier_set_callbacks', args);
  }
  public static function voxelGiAllocateData(voxelGi: Variant, toCellXform: Variant, aabb: Variant, octreeSize: Vector3i, octreeCells: ByteArray, dataCells: ByteArray, distanceField: ByteArray, levelCounts: TypedArray<Int>): Void {
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
  public static function voxelGiCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('voxel_gi_create', args);
  }
  public static function voxelGiGetDataCells(voxelGi: Variant): ByteArray {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_data_cells', args);
  }
  public static function voxelGiGetDistanceField(voxelGi: Variant): ByteArray {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_distance_field', args);
  }
  public static function voxelGiGetLevelCounts(voxelGi: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_level_counts', args);
  }
  public static function voxelGiGetOctreeCells(voxelGi: Variant): ByteArray {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_octree_cells', args);
  }
  public static function voxelGiGetOctreeSize(voxelGi: Variant): Vector3i {
      var args = new ArrayList();
      args.append(voxelGi);
      return getNative().call('voxel_gi_get_octree_size', args);
  }
  public static function voxelGiSetBakedExposureNormalization(voxelGi: Variant, bakedExposure: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(bakedExposure);
      getNative().call('voxel_gi_set_baked_exposure_normalization', args);
  }
  public static function voxelGiSetBias(voxelGi: Variant, bias: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(bias);
      getNative().call('voxel_gi_set_bias', args);
  }
  public static function voxelGiSetDynamicRange(voxelGi: Variant, range: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(range);
      getNative().call('voxel_gi_set_dynamic_range', args);
  }
  public static function voxelGiSetEnergy(voxelGi: Variant, energy: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(energy);
      getNative().call('voxel_gi_set_energy', args);
  }
  public static function voxelGiSetInterior(voxelGi: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(enable);
      getNative().call('voxel_gi_set_interior', args);
  }
  public static function voxelGiSetNormalBias(voxelGi: Variant, bias: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(bias);
      getNative().call('voxel_gi_set_normal_bias', args);
  }
  public static function voxelGiSetPropagation(voxelGi: Variant, amount: Float): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(amount);
      getNative().call('voxel_gi_set_propagation', args);
  }
  public static function voxelGiSetQuality(quality: Int): Void {
      var args = new ArrayList();
      args.append(quality);
      getNative().call('voxel_gi_set_quality', args);
  }
  public static function voxelGiSetUseTwoBounces(voxelGi: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(voxelGi);
      args.append(enable);
      getNative().call('voxel_gi_set_use_two_bounces', args);
  }
}
