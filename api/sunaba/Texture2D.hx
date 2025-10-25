package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Color;
import sunaba.core.Rect2;

class Texture2D extends Texture {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Texture2D');
        }
        native = _native;
    }



  public function createPlaceholder(): Resource {
      var args = new ArrayList();
      var ref: NativeReference = native.call('create_placeholder', args);
      return new Resource(ref);
  }
  public function draw(canvasItem: Int, position: Vector2, ?modulate: Color, ?transpose: Bool): Void {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(position);
      if (modulate != null) {
          args.append(modulate);
      }
      if (transpose != null) {
          args.append(transpose);
      }
      native.call('draw', args);
  }
  public function drawRect(canvasItem: Int, rect: Rect2, tile: Bool, ?modulate: Color, ?transpose: Bool): Void {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(rect);
      args.append(tile);
      if (modulate != null) {
          args.append(modulate);
      }
      if (transpose != null) {
          args.append(transpose);
      }
      native.call('draw_rect', args);
  }
  public function drawRectRegion(canvasItem: Int, rect: Rect2, srcRect: Rect2, ?modulate: Color, ?transpose: Bool, ?clipUv: Bool): Void {
      var args = new ArrayList();
      args.append(canvasItem);
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
      native.call('draw_rect_region', args);
  }
  public function getHeight(): Int {
      var args = new ArrayList();
      return native.call('get_height', args);
  }
  public function getImage(): Image {
      var args = new ArrayList();
      var ref: NativeReference = native.call('get_image', args);
      return new Image(ref);
  }
  public function getSize(): Vector2 {
      var args = new ArrayList();
      return native.call('get_size', args);
  }
  public function getWidth(): Int {
      var args = new ArrayList();
      return native.call('get_width', args);
  }
  public function hasAlpha(): Bool {
      var args = new ArrayList();
      return native.call('has_alpha', args);
  }
}
