package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.Rect2;
import sunaba.core.ArrayList;
import sunaba.CanvasItem;
import sunaba.core.Vector2;

class StyleBox extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('StyleBox');
        }
        native = _native;
    }

    public var contentMarginBottom(get, set): Float;
    function get_contentMarginBottom(): Float {
        return native.get('content_margin_bottom');
    }
    function set_contentMarginBottom(value: Float): Float {
      native.set('content_margin_bottom', value);
        return value;
    }
    public var contentMarginLeft(get, set): Float;
    function get_contentMarginLeft(): Float {
        return native.get('content_margin_left');
    }
    function set_contentMarginLeft(value: Float): Float {
      native.set('content_margin_left', value);
        return value;
    }
    public var contentMarginRight(get, set): Float;
    function get_contentMarginRight(): Float {
        return native.get('content_margin_right');
    }
    function set_contentMarginRight(value: Float): Float {
      native.set('content_margin_right', value);
        return value;
    }
    public var contentMarginTop(get, set): Float;
    function get_contentMarginTop(): Float {
        return native.get('content_margin_top');
    }
    function set_contentMarginTop(value: Float): Float {
      native.set('content_margin_top', value);
        return value;
    }


  public function draw(canvasItem: Int, rect: Rect2): Void {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(rect);
      native.call('draw', args);
  }
  public function getContentMargin(margin: Int): Float {
      var args = new ArrayList();
      args.append(margin);
      return native.call('get_content_margin', args);
  }
  public function getCurrentItemDrawn(): CanvasItem {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_current_item_drawn', args);
      return new CanvasItem(ref);
  }
  public function getMargin(margin: Int): Float {
      var args = new ArrayList();
      args.append(margin);
      return native.call('get_margin', args);
  }
  public function getMinimumSize(): Vector2 {
      var args = new ArrayList();
      return native.call('get_minimum_size', args);
  }
  public function getOffset(): Vector2 {
      var args = new ArrayList();
      return native.call('get_offset', args);
  }
  public function setContentMargin(margin: Int, offset: Float): Void {
      var args = new ArrayList();
      args.append(margin);
      args.append(offset);
      native.call('set_content_margin', args);
  }
  public function setContentMarginAll(offset: Float): Void {
      var args = new ArrayList();
      args.append(offset);
      native.call('set_content_margin_all', args);
  }
  public function testMask(point: Vector2, rect: Rect2): Bool {
      var args = new ArrayList();
      args.append(point);
      args.append(rect);
      return native.call('test_mask', args);
  }
}
