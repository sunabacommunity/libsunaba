package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class SpinBox extends Range {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('SpinBox');
        }
        this.native = _native;
    }

    public var alignment(get, set): Int;
    function get_alignment(): Int {
        return native.get('alignment');
    }
    function set_alignment(value: Int): Int {
      native.set('alignment', value);
        return value;
    }
    public var customArrowStep(get, set): Float;
    function get_customArrowStep(): Float {
        return native.get('custom_arrow_step');
    }
    function set_customArrowStep(value: Float): Float {
      native.set('custom_arrow_step', value);
        return value;
    }
    public var editable(get, set): Bool;
    function get_editable(): Bool {
        return native.get('editable');
    }
    function set_editable(value: Bool): Bool {
      native.set('editable', value);
        return value;
    }
    public var prefix(get, set): String;
    function get_prefix(): String {
        return native.get('prefix');
    }
    function set_prefix(value: String): String {
      native.set('prefix', value);
        return value;
    }
    public var selectAllOnFocus(get, set): Bool;
    function get_selectAllOnFocus(): Bool {
        return native.get('select_all_on_focus');
    }
    function set_selectAllOnFocus(value: Bool): Bool {
      native.set('select_all_on_focus', value);
        return value;
    }
    public var suffix(get, set): String;
    function get_suffix(): String {
        return native.get('suffix');
    }
    function set_suffix(value: String): String {
      native.set('suffix', value);
        return value;
    }
    public var updateOnTextChanged(get, set): Bool;
    function get_updateOnTextChanged(): Bool {
        return native.get('update_on_text_changed');
    }
    function set_updateOnTextChanged(value: Bool): Bool {
      native.set('update_on_text_changed', value);
        return value;
    }


  public function apply(): Void {
      var args = new ArrayList();
      native.call('apply', args);
  }
  public function getLineEdit(): LineEdit {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_line_edit', args);
      return new LineEdit(ref);
  }
}
