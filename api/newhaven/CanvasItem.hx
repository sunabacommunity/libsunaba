package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Color;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.core.Vector2;
import newhaven.core.TypedArray;
import newhaven.core.Rect2;
import newhaven.core.Color;
import newhaven.ui.StyleBox;
import newhaven.input.InputEvent;

class CanvasItem extends Node {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('CanvasItem');
        }
        native = _native;
    }

    public var clipChildren(get, set): Int;
    function get_clipChildren(): Int {
        return native.get('clip_children');
    }
    function set_clipChildren(value: Int): Int {
      native.set('clip_children', value);
        return value;
    }
    public var lightMask(get, set): Int;
    function get_lightMask(): Int {
        return native.get('light_mask');
    }
    function set_lightMask(value: Int): Int {
      native.set('light_mask', value);
        return value;
    }
    public var material(get, set): Material;
    function get_material(): Material {
        var ref: NativeReference = native.get('material');
        return new Material(ref);
    }
    function set_material(value: Material): Material {
      native.set('material', value.native);
        return value;
    }
    public var modulate(get, set): Color;
    function get_modulate(): Color {
        return native.get('modulate');
    }
    function set_modulate(value: Color): Color {
      native.set('modulate', value);
        return value;
    }
    public var selfModulate(get, set): Color;
    function get_selfModulate(): Color {
        return native.get('self_modulate');
    }
    function set_selfModulate(value: Color): Color {
      native.set('self_modulate', value);
        return value;
    }
    public var showBehindParent(get, set): Bool;
    function get_showBehindParent(): Bool {
        return native.get('show_behind_parent');
    }
    function set_showBehindParent(value: Bool): Bool {
      native.set('show_behind_parent', value);
        return value;
    }
    public var textureFilter(get, set): Int;
    function get_textureFilter(): Int {
        return native.get('texture_filter');
    }
    function set_textureFilter(value: Int): Int {
      native.set('texture_filter', value);
        return value;
    }
    public var textureRepeat(get, set): Int;
    function get_textureRepeat(): Int {
        return native.get('texture_repeat');
    }
    function set_textureRepeat(value: Int): Int {
      native.set('texture_repeat', value);
        return value;
    }
    public var topLevel(get, set): Bool;
    function get_topLevel(): Bool {
        return native.get('top_level');
    }
    function set_topLevel(value: Bool): Bool {
      native.set('top_level', value);
        return value;
    }
    public var useParentMaterial(get, set): Bool;
    function get_useParentMaterial(): Bool {
        return native.get('use_parent_material');
    }
    function set_useParentMaterial(value: Bool): Bool {
      native.set('use_parent_material', value);
        return value;
    }
    public var visibilityLayer(get, set): Int;
    function get_visibilityLayer(): Int {
        return native.get('visibility_layer');
    }
    function set_visibilityLayer(value: Int): Int {
      native.set('visibility_layer', value);
        return value;
    }
    public var visible(get, set): Bool;
    function get_visible(): Bool {
        return native.get('visible');
    }
    function set_visible(value: Bool): Bool {
      native.set('visible', value);
        return value;
    }
    public var ySortEnabled(get, set): Bool;
    function get_ySortEnabled(): Bool {
        return native.get('y_sort_enabled');
    }
    function set_ySortEnabled(value: Bool): Bool {
      native.set('y_sort_enabled', value);
        return value;
    }
    public var zAsRelative(get, set): Bool;
    function get_zAsRelative(): Bool {
        return native.get('z_as_relative');
    }
    function set_zAsRelative(value: Bool): Bool {
      native.set('z_as_relative', value);
        return value;
    }
    public var zIndex(get, set): Int;
    function get_zIndex(): Int {
        return native.get('z_index');
    }
    function set_zIndex(value: Int): Int {
      native.set('z_index', value);
        return value;
    }

	private var _draw: Signal;
	public var draw(get, default): Signal;
	function get_draw(): Signal {
	    if (_draw == null) {
	        _draw = Signal.createFromObject(native, 'draw');
	    }
	    return _draw;
	}
	private var _hidden: Signal;
	public var hidden(get, default): Signal;
	function get_hidden(): Signal {
	    if (_hidden == null) {
	        _hidden = Signal.createFromObject(native, 'hidden');
	    }
	    return _hidden;
	}
	private var _itemRectChanged: Signal;
	public var itemRectChanged(get, default): Signal;
	function get_itemRectChanged(): Signal {
	    if (_itemRectChanged == null) {
	        _itemRectChanged = Signal.createFromObject(native, 'item_rect_changed');
	    }
	    return _itemRectChanged;
	}
	private var _visibilityChanged: Signal;
	public var visibilityChanged(get, default): Signal;
	function get_visibilityChanged(): Signal {
	    if (_visibilityChanged == null) {
	        _visibilityChanged = Signal.createFromObject(native, 'visibility_changed');
	    }
	    return _visibilityChanged;
	}

  public function drawAnimationSlice(animationLength: Float, sliceBegin: Float, sliceEnd: Float, ?offset: Float): Void {
      var args = new ArrayList();
      args.append(animationLength);
      args.append(sliceBegin);
      args.append(sliceEnd);
      if (offset != null) {
          args.append(offset);
      }
      native.call('draw_animation_slice', args);
  }
  public function drawArc(center: Vector2, radius: Float, startAngle: Float, endAngle: Float, pointCount: Int, color: Color, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(center);
      args.append(radius);
      args.append(startAngle);
      args.append(endAngle);
      args.append(pointCount);
      args.append(color);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_arc', args);
  }
  public function drawChar(font: Font, pos: Vector2, char: String, ?fontSize: Int, ?modulate: Color, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(font.native);
      args.append(pos);
      args.append(char);
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_char', args);
  }
  public function drawCharOutline(font: Font, pos: Vector2, char: String, ?fontSize: Int, ?size: Int, ?modulate: Color, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(font.native);
      args.append(pos);
      args.append(char);
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (size != null) {
          args.append(size);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_char_outline', args);
  }
  public function drawCircle(position: Vector2, radius: Float, color: Color, ?filled: Bool, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(position);
      args.append(radius);
      args.append(color);
      if (filled != null) {
          args.append(filled);
      }
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_circle', args);
  }
  public function drawColoredPolygon(points: TypedArray<Vector2>, color: Color, ?uvs: TypedArray<Vector2>, ?texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(points);
      args.append(color);
      if (uvs != null) {
          args.append(uvs);
      }
      if (texture != null) {
          args.append(texture.native);
      }
      native.call('draw_colored_polygon', args);
  }
  public function drawDashedLine(from: Vector2, to: Vector2, color: Color, ?width: Float, ?dash: Float, ?aligned: Bool, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      args.append(color);
      if (width != null) {
          args.append(width);
      }
      if (dash != null) {
          args.append(dash);
      }
      if (aligned != null) {
          args.append(aligned);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_dashed_line', args);
  }
  public function drawEndAnimation(): Void {
      var args = new ArrayList();
      native.call('draw_end_animation', args);
  }
  public function drawLcdTextureRectRegion(texture: Texture2D, rect: Rect2, srcRect: Rect2, ?modulate: Color): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(rect);
      args.append(srcRect);
      if (modulate != null) {
          args.append(modulate);
      }
      native.call('draw_lcd_texture_rect_region', args);
  }
  public function drawLine(from: Vector2, to: Vector2, color: Color, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      args.append(color);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_line', args);
  }
  public function drawMesh(mesh: Variant, texture: Texture2D, ?transform: Variant, ?modulate: Color): Void {
      var args = new ArrayList();
      args.append(mesh);
      args.append(texture.native);
      if (transform != null) {
          args.append(transform);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      native.call('draw_mesh', args);
  }
  public function drawMsdfTextureRectRegion(texture: Texture2D, rect: Rect2, srcRect: Rect2, ?modulate: Color, ?outline: Float, ?pixelRange: Float, ?scale: Float): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(rect);
      args.append(srcRect);
      if (modulate != null) {
          args.append(modulate);
      }
      if (outline != null) {
          args.append(outline);
      }
      if (pixelRange != null) {
          args.append(pixelRange);
      }
      if (scale != null) {
          args.append(scale);
      }
      native.call('draw_msdf_texture_rect_region', args);
  }
  public function drawMultiline(points: TypedArray<Vector2>, color: Color, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(points);
      args.append(color);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_multiline', args);
  }
  public function drawMultilineColors(points: TypedArray<Vector2>, colors: TypedArray<Color>, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(points);
      args.append(colors);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_multiline_colors', args);
  }
  public function drawMultilineString(font: Font, pos: Vector2, text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?maxLines: Int, ?modulate: Color, ?brkFlags: Int, ?justificationFlags: Int, ?direction: Int, ?orientation: Int, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(font.native);
      args.append(pos);
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (maxLines != null) {
          args.append(maxLines);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (brkFlags != null) {
          args.append(brkFlags);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_multiline_string', args);
  }
  public function drawMultilineStringOutline(font: Font, pos: Vector2, text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?maxLines: Int, ?size: Int, ?modulate: Color, ?brkFlags: Int, ?justificationFlags: Int, ?direction: Int, ?orientation: Int, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(font.native);
      args.append(pos);
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (maxLines != null) {
          args.append(maxLines);
      }
      if (size != null) {
          args.append(size);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (brkFlags != null) {
          args.append(brkFlags);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_multiline_string_outline', args);
  }
  public function drawMultimesh(multimesh: Variant, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(multimesh);
      args.append(texture.native);
      native.call('draw_multimesh', args);
  }
  public function drawPolygon(points: TypedArray<Vector2>, colors: TypedArray<Color>, ?uvs: TypedArray<Vector2>, ?texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(points);
      args.append(colors);
      if (uvs != null) {
          args.append(uvs);
      }
      if (texture != null) {
          args.append(texture.native);
      }
      native.call('draw_polygon', args);
  }
  public function drawPolyline(points: TypedArray<Vector2>, color: Color, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(points);
      args.append(color);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_polyline', args);
  }
  public function drawPolylineColors(points: TypedArray<Vector2>, colors: TypedArray<Color>, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(points);
      args.append(colors);
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_polyline_colors', args);
  }
  public function drawPrimitive(points: TypedArray<Vector2>, colors: TypedArray<Color>, uvs: TypedArray<Vector2>, ?texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(points);
      args.append(colors);
      args.append(uvs);
      if (texture != null) {
          args.append(texture.native);
      }
      native.call('draw_primitive', args);
  }
  public function drawRect(rect: Rect2, color: Color, ?filled: Bool, ?width: Float, ?antialiased: Bool): Void {
      var args = new ArrayList();
      args.append(rect);
      args.append(color);
      if (filled != null) {
          args.append(filled);
      }
      if (width != null) {
          args.append(width);
      }
      if (antialiased != null) {
          args.append(antialiased);
      }
      native.call('draw_rect', args);
  }
  public function drawSetTransform(position: Vector2, ?rotation: Float, ?scale: Vector2): Void {
      var args = new ArrayList();
      args.append(position);
      if (rotation != null) {
          args.append(rotation);
      }
      if (scale != null) {
          args.append(scale);
      }
      native.call('draw_set_transform', args);
  }
  public function drawSetTransformMatrix(xform: Variant): Void {
      var args = new ArrayList();
      args.append(xform);
      native.call('draw_set_transform_matrix', args);
  }
  public function drawString(font: Font, pos: Vector2, text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?modulate: Color, ?justificationFlags: Int, ?direction: Int, ?orientation: Int, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(font.native);
      args.append(pos);
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_string', args);
  }
  public function drawStringOutline(font: Font, pos: Vector2, text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?size: Int, ?modulate: Color, ?justificationFlags: Int, ?direction: Int, ?orientation: Int, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(font.native);
      args.append(pos);
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (size != null) {
          args.append(size);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_string_outline', args);
  }
  public function drawStyleBox(styleBox: StyleBox, rect: Rect2): Void {
      var args = new ArrayList();
      args.append(styleBox.native);
      args.append(rect);
      native.call('draw_style_box', args);
  }
  public function drawTexture(texture: Texture2D, position: Vector2, ?modulate: Color): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(position);
      if (modulate != null) {
          args.append(modulate);
      }
      native.call('draw_texture', args);
  }
  public function drawTextureRect(texture: Texture2D, rect: Rect2, tile: Bool, ?modulate: Color, ?transpose: Bool): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(rect);
      args.append(tile);
      if (modulate != null) {
          args.append(modulate);
      }
      if (transpose != null) {
          args.append(transpose);
      }
      native.call('draw_texture_rect', args);
  }
  public function drawTextureRectRegion(texture: Texture2D, rect: Rect2, srcRect: Rect2, ?modulate: Color, ?transpose: Bool, ?clipUv: Bool): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(rect);
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
      native.call('draw_texture_rect_region', args);
  }
  public function forceUpdateTransform(): Void {
      var args = new ArrayList();
      native.call('force_update_transform', args);
  }
  public function getCanvas(): Int {
      var args = new ArrayList();
      return native.call('get_canvas', args);
  }
  public function getCanvasItem(): Int {
      var args = new ArrayList();
      return native.call('get_canvas_item', args);
  }
  public function getGlobalMousePosition(): Vector2 {
      var args = new ArrayList();
      return native.call('get_global_mouse_position', args);
  }
  public function getInstanceShaderParameter(name: String): Variant {
      var args = new ArrayList();
      args.append(name);
      return native.call('get_instance_shader_parameter', args);
  }
  public function getLocalMousePosition(): Vector2 {
      var args = new ArrayList();
      return native.call('get_local_mouse_position', args);
  }
  public function getViewportRect(): Rect2 {
      var args = new ArrayList();
      return native.call('get_viewport_rect', args);
  }
  public function getVisibilityLayerBit(layer: Int): Bool {
      var args = new ArrayList();
      args.append(layer);
      return native.call('get_visibility_layer_bit', args);
  }
  public function hide(): Void {
      var args = new ArrayList();
      native.call('hide', args);
  }
  public function isLocalTransformNotificationEnabled(): Bool {
      var args = new ArrayList();
      return native.call('is_local_transform_notification_enabled', args);
  }
  public function isTransformNotificationEnabled(): Bool {
      var args = new ArrayList();
      return native.call('is_transform_notification_enabled', args);
  }
  public function isVisibleInTree(): Bool {
      var args = new ArrayList();
      return native.call('is_visible_in_tree', args);
  }
  public function makeCanvasPositionLocal(viewportPoint: Vector2): Vector2 {
      var args = new ArrayList();
      args.append(viewportPoint);
      return native.call('make_canvas_position_local', args);
  }
  public function makeInputLocal(event: InputEvent): InputEvent {
      var args = new ArrayList();
      args.append(event.native);
      var ref: NativeReference = native.call('make_input_local', args);
      return new InputEvent(ref);
  }
  public function moveToFront(): Void {
      var args = new ArrayList();
      native.call('move_to_front', args);
  }
  public function queueRedraw(): Void {
      var args = new ArrayList();
      native.call('queue_redraw', args);
  }
  public function setInstanceShaderParameter(name: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(value);
      native.call('set_instance_shader_parameter', args);
  }
  public function setNotifyLocalTransform(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_notify_local_transform', args);
  }
  public function setNotifyTransform(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_notify_transform', args);
  }
  public function setVisibilityLayerBit(layer: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(layer);
      args.append(enabled);
      native.call('set_visibility_layer_bit', args);
  }
  public function show(): Void {
      var args = new ArrayList();
      native.call('show', args);
  }
}
