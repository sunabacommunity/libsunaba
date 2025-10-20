package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.Node;

class Range extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Range');
        }
        native = _native;
    }

    public var allowGreater(get, set): Bool;
    function get_allowGreater(): Bool {
        return native.get('allow_greater');
    }
    function set_allowGreater(value: Bool): Bool {
      native.set('allow_greater', value);
        return value;
    }
    public var allowLesser(get, set): Bool;
    function get_allowLesser(): Bool {
        return native.get('allow_lesser');
    }
    function set_allowLesser(value: Bool): Bool {
      native.set('allow_lesser', value);
        return value;
    }
    public var expEdit(get, set): Bool;
    function get_expEdit(): Bool {
        return native.get('exp_edit');
    }
    function set_expEdit(value: Bool): Bool {
      native.set('exp_edit', value);
        return value;
    }
    public var maxValue(get, set): Float;
    function get_maxValue(): Float {
        return native.get('max_value');
    }
    function set_maxValue(value: Float): Float {
      native.set('max_value', value);
        return value;
    }
    public var minValue(get, set): Float;
    function get_minValue(): Float {
        return native.get('min_value');
    }
    function set_minValue(value: Float): Float {
      native.set('min_value', value);
        return value;
    }
    public var page(get, set): Float;
    function get_page(): Float {
        return native.get('page');
    }
    function set_page(value: Float): Float {
      native.set('page', value);
        return value;
    }
    public var ratio(get, set): Float;
    function get_ratio(): Float {
        return native.get('ratio');
    }
    function set_ratio(value: Float): Float {
      native.set('ratio', value);
        return value;
    }
    public var rounded(get, set): Bool;
    function get_rounded(): Bool {
        return native.get('rounded');
    }
    function set_rounded(value: Bool): Bool {
      native.set('rounded', value);
        return value;
    }
    public var step(get, set): Float;
    function get_step(): Float {
        return native.get('step');
    }
    function set_step(value: Float): Float {
      native.set('step', value);
        return value;
    }
    public var value(get, set): Float;
    function get_value(): Float {
        return native.get('value');
    }
    function set_value(value: Float): Float {
      native.set('value', value);
        return value;
    }

  public function setValueNoSignal(value: Float): Void {
      var args = new ArrayList();
      args.append(value);
      native.call('set_value_no_signal', args);
  }
  public function share(with: Node): Void {
      var args = new ArrayList();
      args.append(with.native);
      native.call('share', args);
  }
  public function unshare(): Void {
      var args = new ArrayList();
      native.call('unshare', args);
  }
}
