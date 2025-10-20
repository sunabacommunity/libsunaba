package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.core.Vector2i;
import newhaven.core.Rect2i;

class BitMap extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('BitMap');
        }
        native = _native;
    }


  public function convertToImage(): Image {
      var args = new ArrayList();
      var ref: NativeReference = native.call('convert_to_image', args);
      return new Image(ref);
  }
  public function create(size: Vector2i): Void {
      var args = new ArrayList();
      args.append(size);
      native.call('create', args);
  }
  public function createFromImageAlpha(image: Image, ?threshold: Float): Void {
      var args = new ArrayList();
      args.append(image.native);
      if (threshold != null) {
          args.append(threshold);
      }
      native.call('create_from_image_alpha', args);
  }
  public function getBit(x: Int, y: Int): Bool {
      var args = new ArrayList();
      args.append(x);
      args.append(y);
      return native.call('get_bit', args);
  }
  public function getBitv(position: Vector2i): Bool {
      var args = new ArrayList();
      args.append(position);
      return native.call('get_bitv', args);
  }
  public function getSize(): Vector2i {
      var args = new ArrayList();
      return native.call('get_size', args);
  }
  public function getTrueBitCount(): Int {
      var args = new ArrayList();
      return native.call('get_true_bit_count', args);
  }
  public function growMask(pixels: Int, rect: Rect2i): Void {
      var args = new ArrayList();
      args.append(pixels);
      args.append(rect);
      native.call('grow_mask', args);
  }
  public function resize(newSize: Vector2i): Void {
      var args = new ArrayList();
      args.append(newSize);
      native.call('resize', args);
  }
  public function setBit(x: Int, y: Int, bit: Bool): Void {
      var args = new ArrayList();
      args.append(x);
      args.append(y);
      args.append(bit);
      native.call('set_bit', args);
  }
  public function setBitRect(rect: Rect2i, bit: Bool): Void {
      var args = new ArrayList();
      args.append(rect);
      args.append(bit);
      native.call('set_bit_rect', args);
  }
  public function setBitv(position: Vector2i, bit: Bool): Void {
      var args = new ArrayList();
      args.append(position);
      args.append(bit);
      native.call('set_bitv', args);
  }
}
