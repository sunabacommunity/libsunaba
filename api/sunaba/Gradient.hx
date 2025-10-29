package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Color;
import sunaba.core.TypedArray;
import sunaba.core.Signal;
import sunaba.core.Color;

class Gradient extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Gradient');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Gradient', native];
        scriptLoader.call('loadScript', args);
    }

    public var colors(get, set): TypedArray<Color>;
    function get_colors(): TypedArray<Color> {
        return native.get('colors');
    }
    function set_colors(value: TypedArray<Color>): TypedArray<Color> {
      native.set('colors', value);
        return value;
    }
    public var interpolationColorSpace(get, set): Int;
    function get_interpolationColorSpace(): Int {
        return native.get('interpolation_color_space');
    }
    function set_interpolationColorSpace(value: Int): Int {
      native.set('interpolation_color_space', value);
        return value;
    }
    public var interpolationMode(get, set): Int;
    function get_interpolationMode(): Int {
        return native.get('interpolation_mode');
    }
    function set_interpolationMode(value: Int): Int {
      native.set('interpolation_mode', value);
        return value;
    }
    public var offsets(get, set): TypedArray<Float>;
    function get_offsets(): TypedArray<Float> {
        return native.get('offsets');
    }
    function set_offsets(value: TypedArray<Float>): TypedArray<Float> {
      native.set('offsets', value);
        return value;
    }


  public function addPoint(offset: Float, color: Color): Void {
      var args = new ArrayList();
      args.append(offset);
      args.append(color);
      native.call('add_point', args);
  }
  public function getColor(point: Int): Color {
      var args = new ArrayList();
      args.append(point);
      return native.call('get_color', args);
  }
  public function getOffset(point: Int): Float {
      var args = new ArrayList();
      args.append(point);
      return native.call('get_offset', args);
  }
  public function getPointCount(): Int {
      var args = new ArrayList();
      return native.call('get_point_count', args);
  }
  public function removePoint(point: Int): Void {
      var args = new ArrayList();
      args.append(point);
      native.call('remove_point', args);
  }
  public function reverse(): Void {
      var args = new ArrayList();
      native.call('reverse', args);
  }
  public function sample(offset: Float): Color {
      var args = new ArrayList();
      args.append(offset);
      return native.call('sample', args);
  }
  public function setColor(point: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(point);
      args.append(color);
      native.call('set_color', args);
  }
  public function setOffset(point: Int, offset: Float): Void {
      var args = new ArrayList();
      args.append(point);
      args.append(offset);
      native.call('set_offset', args);
  }
}
