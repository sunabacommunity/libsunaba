package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.spatial.World3D;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.core.Rect2;
import newhaven.ui.Control;
import newhaven.input.InputEvent;

class Viewport extends Node {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Viewport');
        }
        native = _native;
    }

    public var anisotropicFilteringLevel(get, set): Int;
    function get_anisotropicFilteringLevel(): Int {
        return native.get('anisotropic_filtering_level');
    }
    function set_anisotropicFilteringLevel(value: Int): Int {
      native.set('anisotropic_filtering_level', value);
        return value;
    }
    public var audioListenerEnable2d(get, set): Bool;
    function get_audioListenerEnable2d(): Bool {
        return native.get('audio_listener_enable_2d');
    }
    function set_audioListenerEnable2d(value: Bool): Bool {
      native.set('audio_listener_enable_2d', value);
        return value;
    }
    public var audioListenerEnable3d(get, set): Bool;
    function get_audioListenerEnable3d(): Bool {
        return native.get('audio_listener_enable_3d');
    }
    function set_audioListenerEnable3d(value: Bool): Bool {
      native.set('audio_listener_enable_3d', value);
        return value;
    }
    public var canvasCullMask(get, set): Int;
    function get_canvasCullMask(): Int {
        return native.get('canvas_cull_mask');
    }
    function set_canvasCullMask(value: Int): Int {
      native.set('canvas_cull_mask', value);
        return value;
    }
    public var canvasItemDefaultTextureFilter(get, set): Int;
    function get_canvasItemDefaultTextureFilter(): Int {
        return native.get('canvas_item_default_texture_filter');
    }
    function set_canvasItemDefaultTextureFilter(value: Int): Int {
      native.set('canvas_item_default_texture_filter', value);
        return value;
    }
    public var canvasItemDefaultTextureRepeat(get, set): Int;
    function get_canvasItemDefaultTextureRepeat(): Int {
        return native.get('canvas_item_default_texture_repeat');
    }
    function set_canvasItemDefaultTextureRepeat(value: Int): Int {
      native.set('canvas_item_default_texture_repeat', value);
        return value;
    }
    public var debugDraw(get, set): Int;
    function get_debugDraw(): Int {
        return native.get('debug_draw');
    }
    function set_debugDraw(value: Int): Int {
      native.set('debug_draw', value);
        return value;
    }
    public var disable3d(get, set): Bool;
    function get_disable3d(): Bool {
        return native.get('disable_3d');
    }
    function set_disable3d(value: Bool): Bool {
      native.set('disable_3d', value);
        return value;
    }
    public var fsrSharpness(get, set): Float;
    function get_fsrSharpness(): Float {
        return native.get('fsr_sharpness');
    }
    function set_fsrSharpness(value: Float): Float {
      native.set('fsr_sharpness', value);
        return value;
    }
    public var guiDisableInput(get, set): Bool;
    function get_guiDisableInput(): Bool {
        return native.get('gui_disable_input');
    }
    function set_guiDisableInput(value: Bool): Bool {
      native.set('gui_disable_input', value);
        return value;
    }
    public var guiEmbedSubwindows(get, set): Bool;
    function get_guiEmbedSubwindows(): Bool {
        return native.get('gui_embed_subwindows');
    }
    function set_guiEmbedSubwindows(value: Bool): Bool {
      native.set('gui_embed_subwindows', value);
        return value;
    }
    public var guiSnapControlsToPixels(get, set): Bool;
    function get_guiSnapControlsToPixels(): Bool {
        return native.get('gui_snap_controls_to_pixels');
    }
    function set_guiSnapControlsToPixels(value: Bool): Bool {
      native.set('gui_snap_controls_to_pixels', value);
        return value;
    }
    public var handleInputLocally(get, set): Bool;
    function get_handleInputLocally(): Bool {
        return native.get('handle_input_locally');
    }
    function set_handleInputLocally(value: Bool): Bool {
      native.set('handle_input_locally', value);
        return value;
    }
    public var meshLodThreshold(get, set): Float;
    function get_meshLodThreshold(): Float {
        return native.get('mesh_lod_threshold');
    }
    function set_meshLodThreshold(value: Float): Float {
      native.set('mesh_lod_threshold', value);
        return value;
    }
    public var msaa2d(get, set): Int;
    function get_msaa2d(): Int {
        return native.get('msaa_2d');
    }
    function set_msaa2d(value: Int): Int {
      native.set('msaa_2d', value);
        return value;
    }
    public var msaa3d(get, set): Int;
    function get_msaa3d(): Int {
        return native.get('msaa_3d');
    }
    function set_msaa3d(value: Int): Int {
      native.set('msaa_3d', value);
        return value;
    }
    public var oversampling(get, set): Bool;
    function get_oversampling(): Bool {
        return native.get('oversampling');
    }
    function set_oversampling(value: Bool): Bool {
      native.set('oversampling', value);
        return value;
    }
    public var oversamplingOverride(get, set): Float;
    function get_oversamplingOverride(): Float {
        return native.get('oversampling_override');
    }
    function set_oversamplingOverride(value: Float): Float {
      native.set('oversampling_override', value);
        return value;
    }
    public var ownWorld3d(get, set): Bool;
    function get_ownWorld3d(): Bool {
        return native.get('own_world_3d');
    }
    function set_ownWorld3d(value: Bool): Bool {
      native.set('own_world_3d', value);
        return value;
    }
    public var physicsObjectPicking(get, set): Bool;
    function get_physicsObjectPicking(): Bool {
        return native.get('physics_object_picking');
    }
    function set_physicsObjectPicking(value: Bool): Bool {
      native.set('physics_object_picking', value);
        return value;
    }
    public var physicsObjectPickingFirstOnly(get, set): Bool;
    function get_physicsObjectPickingFirstOnly(): Bool {
        return native.get('physics_object_picking_first_only');
    }
    function set_physicsObjectPickingFirstOnly(value: Bool): Bool {
      native.set('physics_object_picking_first_only', value);
        return value;
    }
    public var physicsObjectPickingSort(get, set): Bool;
    function get_physicsObjectPickingSort(): Bool {
        return native.get('physics_object_picking_sort');
    }
    function set_physicsObjectPickingSort(value: Bool): Bool {
      native.set('physics_object_picking_sort', value);
        return value;
    }
    public var positionalShadowAtlas16Bits(get, set): Bool;
    function get_positionalShadowAtlas16Bits(): Bool {
        return native.get('positional_shadow_atlas_16_bits');
    }
    function set_positionalShadowAtlas16Bits(value: Bool): Bool {
      native.set('positional_shadow_atlas_16_bits', value);
        return value;
    }
    public var positionalShadowAtlasQuad0(get, set): Int;
    function get_positionalShadowAtlasQuad0(): Int {
        return native.get('positional_shadow_atlas_quad_0');
    }
    function set_positionalShadowAtlasQuad0(value: Int): Int {
      native.set('positional_shadow_atlas_quad_0', value);
        return value;
    }
    public var positionalShadowAtlasQuad1(get, set): Int;
    function get_positionalShadowAtlasQuad1(): Int {
        return native.get('positional_shadow_atlas_quad_1');
    }
    function set_positionalShadowAtlasQuad1(value: Int): Int {
      native.set('positional_shadow_atlas_quad_1', value);
        return value;
    }
    public var positionalShadowAtlasQuad2(get, set): Int;
    function get_positionalShadowAtlasQuad2(): Int {
        return native.get('positional_shadow_atlas_quad_2');
    }
    function set_positionalShadowAtlasQuad2(value: Int): Int {
      native.set('positional_shadow_atlas_quad_2', value);
        return value;
    }
    public var positionalShadowAtlasQuad3(get, set): Int;
    function get_positionalShadowAtlasQuad3(): Int {
        return native.get('positional_shadow_atlas_quad_3');
    }
    function set_positionalShadowAtlasQuad3(value: Int): Int {
      native.set('positional_shadow_atlas_quad_3', value);
        return value;
    }
    public var positionalShadowAtlasSize(get, set): Int;
    function get_positionalShadowAtlasSize(): Int {
        return native.get('positional_shadow_atlas_size');
    }
    function set_positionalShadowAtlasSize(value: Int): Int {
      native.set('positional_shadow_atlas_size', value);
        return value;
    }
    public var scaling3dMode(get, set): Int;
    function get_scaling3dMode(): Int {
        return native.get('scaling_3d_mode');
    }
    function set_scaling3dMode(value: Int): Int {
      native.set('scaling_3d_mode', value);
        return value;
    }
    public var scaling3dScale(get, set): Float;
    function get_scaling3dScale(): Float {
        return native.get('scaling_3d_scale');
    }
    function set_scaling3dScale(value: Float): Float {
      native.set('scaling_3d_scale', value);
        return value;
    }
    public var screenSpaceAa(get, set): Int;
    function get_screenSpaceAa(): Int {
        return native.get('screen_space_aa');
    }
    function set_screenSpaceAa(value: Int): Int {
      native.set('screen_space_aa', value);
        return value;
    }
    public var sdfOversize(get, set): Int;
    function get_sdfOversize(): Int {
        return native.get('sdf_oversize');
    }
    function set_sdfOversize(value: Int): Int {
      native.set('sdf_oversize', value);
        return value;
    }
    public var sdfScale(get, set): Int;
    function get_sdfScale(): Int {
        return native.get('sdf_scale');
    }
    function set_sdfScale(value: Int): Int {
      native.set('sdf_scale', value);
        return value;
    }
    public var snap2dTransformsToPixel(get, set): Bool;
    function get_snap2dTransformsToPixel(): Bool {
        return native.get('snap_2d_transforms_to_pixel');
    }
    function set_snap2dTransformsToPixel(value: Bool): Bool {
      native.set('snap_2d_transforms_to_pixel', value);
        return value;
    }
    public var snap2dVerticesToPixel(get, set): Bool;
    function get_snap2dVerticesToPixel(): Bool {
        return native.get('snap_2d_vertices_to_pixel');
    }
    function set_snap2dVerticesToPixel(value: Bool): Bool {
      native.set('snap_2d_vertices_to_pixel', value);
        return value;
    }
    public var textureMipmapBias(get, set): Float;
    function get_textureMipmapBias(): Float {
        return native.get('texture_mipmap_bias');
    }
    function set_textureMipmapBias(value: Float): Float {
      native.set('texture_mipmap_bias', value);
        return value;
    }
    public var transparentBg(get, set): Bool;
    function get_transparentBg(): Bool {
        return native.get('transparent_bg');
    }
    function set_transparentBg(value: Bool): Bool {
      native.set('transparent_bg', value);
        return value;
    }
    public var useDebanding(get, set): Bool;
    function get_useDebanding(): Bool {
        return native.get('use_debanding');
    }
    function set_useDebanding(value: Bool): Bool {
      native.set('use_debanding', value);
        return value;
    }
    public var useHdr2d(get, set): Bool;
    function get_useHdr2d(): Bool {
        return native.get('use_hdr_2d');
    }
    function set_useHdr2d(value: Bool): Bool {
      native.set('use_hdr_2d', value);
        return value;
    }
    public var useOcclusionCulling(get, set): Bool;
    function get_useOcclusionCulling(): Bool {
        return native.get('use_occlusion_culling');
    }
    function set_useOcclusionCulling(value: Bool): Bool {
      native.set('use_occlusion_culling', value);
        return value;
    }
    public var useTaa(get, set): Bool;
    function get_useTaa(): Bool {
        return native.get('use_taa');
    }
    function set_useTaa(value: Bool): Bool {
      native.set('use_taa', value);
        return value;
    }
    public var useXr(get, set): Bool;
    function get_useXr(): Bool {
        return native.get('use_xr');
    }
    function set_useXr(value: Bool): Bool {
      native.set('use_xr', value);
        return value;
    }
    public var vrsMode(get, set): Int;
    function get_vrsMode(): Int {
        return native.get('vrs_mode');
    }
    function set_vrsMode(value: Int): Int {
      native.set('vrs_mode', value);
        return value;
    }
    public var vrsTexture(get, set): Texture2D;
    function get_vrsTexture(): Texture2D {
        var ref: NativeReference = native.get('vrs_texture');
        return new Texture2D(ref);
    }
    function set_vrsTexture(value: Texture2D): Texture2D {
      native.set('vrs_texture', value.native);
        return value;
    }
    public var vrsUpdateMode(get, set): Int;
    function get_vrsUpdateMode(): Int {
        return native.get('vrs_update_mode');
    }
    function set_vrsUpdateMode(value: Int): Int {
      native.set('vrs_update_mode', value);
        return value;
    }
    public var world3d(get, set): World3D;
    function get_world3d(): World3D {
        var ref: NativeReference = native.get('world_3d');
        return new World3D(ref);
    }
    function set_world3d(value: World3D): World3D {
      native.set('world_3d', value.native);
        return value;
    }

  public function findWorld3d(): World3D {
      var args = new ArrayList();
      var ref: NativeReference = native.call('find_world_3d', args);
      return new World3D(ref);
  }
  public function getCanvasCullMaskBit(layer: Int): Bool {
      var args = new ArrayList();
      args.append(layer);
      return native.call('get_canvas_cull_mask_bit', args);
  }
  public function getMousePosition(): Vector2 {
      var args = new ArrayList();
      return native.call('get_mouse_position', args);
  }
  public function getOversampling(): Float {
      var args = new ArrayList();
      return native.call('get_oversampling', args);
  }
  public function getPositionalShadowAtlasQuadrantSubdiv(quadrant: Int): Int {
      var args = new ArrayList();
      args.append(quadrant);
      return native.call('get_positional_shadow_atlas_quadrant_subdiv', args);
  }
  public function getRenderInfo(type: Int, info: Int): Int {
      var args = new ArrayList();
      args.append(type);
      args.append(info);
      return native.call('get_render_info', args);
  }
  public function getTexture(): ViewportTexture {
      var args = new ArrayList();
      var ref: NativeReference = native.call('get_texture', args);
      return new ViewportTexture(ref);
  }
  public function getViewportRid(): Int {
      var args = new ArrayList();
      return native.call('get_viewport_rid', args);
  }
  public function getVisibleRect(): Rect2 {
      var args = new ArrayList();
      return native.call('get_visible_rect', args);
  }
  public function guiCancelDrag(): Void {
      var args = new ArrayList();
      native.call('gui_cancel_drag', args);
  }
  public function guiGetDragData(): Variant {
      var args = new ArrayList();
      return native.call('gui_get_drag_data', args);
  }
  public function guiGetDragDescription(): String {
      var args = new ArrayList();
      return native.call('gui_get_drag_description', args);
  }
  public function guiGetFocusOwner(): Control {
      var args = new ArrayList();
      var ref: NativeObject = native.call('gui_get_focus_owner', args);
      return new Control(ref);
  }
  public function guiGetHoveredControl(): Control {
      var args = new ArrayList();
      var ref: NativeObject = native.call('gui_get_hovered_control', args);
      return new Control(ref);
  }
  public function guiIsDragSuccessful(): Bool {
      var args = new ArrayList();
      return native.call('gui_is_drag_successful', args);
  }
  public function guiIsDragging(): Bool {
      var args = new ArrayList();
      return native.call('gui_is_dragging', args);
  }
  public function guiReleaseFocus(): Void {
      var args = new ArrayList();
      native.call('gui_release_focus', args);
  }
  public function guiSetDragDescription(description: String): Void {
      var args = new ArrayList();
      args.append(description);
      native.call('gui_set_drag_description', args);
  }
  public function isInputHandled(): Bool {
      var args = new ArrayList();
      return native.call('is_input_handled', args);
  }
  public function notifyMouseEntered(): Void {
      var args = new ArrayList();
      native.call('notify_mouse_entered', args);
  }
  public function notifyMouseExited(): Void {
      var args = new ArrayList();
      native.call('notify_mouse_exited', args);
  }
  public function pushInput(event: InputEvent, ?inLocalCoords: Bool): Void {
      var args = new ArrayList();
      args.append(event.native);
      if (inLocalCoords != null) {
          args.append(inLocalCoords);
      }
      native.call('push_input', args);
  }
  public function pushTextInput(text: String): Void {
      var args = new ArrayList();
      args.append(text);
      native.call('push_text_input', args);
  }
  public function pushUnhandledInput(event: InputEvent, ?inLocalCoords: Bool): Void {
      var args = new ArrayList();
      args.append(event.native);
      if (inLocalCoords != null) {
          args.append(inLocalCoords);
      }
      native.call('push_unhandled_input', args);
  }
  public function setCanvasCullMaskBit(layer: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(layer);
      args.append(enable);
      native.call('set_canvas_cull_mask_bit', args);
  }
  public function setInputAsHandled(): Void {
      var args = new ArrayList();
      native.call('set_input_as_handled', args);
  }
  public function setPositionalShadowAtlasQuadrantSubdiv(quadrant: Int, subdiv: Int): Void {
      var args = new ArrayList();
      args.append(quadrant);
      args.append(subdiv);
      native.call('set_positional_shadow_atlas_quadrant_subdiv', args);
  }
  public function updateMouseCursorState(): Void {
      var args = new ArrayList();
      native.call('update_mouse_cursor_state', args);
  }
  public function warpMouse(position: Vector2): Void {
      var args = new ArrayList();
      args.append(position);
      native.call('warp_mouse', args);
  }
}
