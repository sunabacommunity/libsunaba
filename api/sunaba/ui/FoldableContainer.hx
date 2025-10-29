package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class FoldableContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('FoldableContainer');
        }
        native = _native;
    }

    public var folded(get, set): Bool;
    function get_folded(): Bool {
        return native.get('folded');
    }
    function set_folded(value: Bool): Bool {
      native.set('folded', value);
        return value;
    }
    public var language(get, set): String;
    function get_language(): String {
        return native.get('language');
    }
    function set_language(value: String): String {
      native.set('language', value);
        return value;
    }
    public var title(get, set): String;
    function get_title(): String {
        return native.get('title');
    }
    function set_title(value: String): String {
      native.set('title', value);
        return value;
    }
    public var titleAlignment(get, set): Int;
    function get_titleAlignment(): Int {
        return native.get('title_alignment');
    }
    function set_titleAlignment(value: Int): Int {
      native.set('title_alignment', value);
        return value;
    }
    public var titlePosition(get, set): Int;
    function get_titlePosition(): Int {
        return native.get('title_position');
    }
    function set_titlePosition(value: Int): Int {
      native.set('title_position', value);
        return value;
    }
    public var titleTextDirection(get, set): Int;
    function get_titleTextDirection(): Int {
        return native.get('title_text_direction');
    }
    function set_titleTextDirection(value: Int): Int {
      native.set('title_text_direction', value);
        return value;
    }
    public var titleTextOverrunBehavior(get, set): Int;
    function get_titleTextOverrunBehavior(): Int {
        return native.get('title_text_overrun_behavior');
    }
    function set_titleTextOverrunBehavior(value: Int): Int {
      native.set('title_text_overrun_behavior', value);
        return value;
    }

	private var _foldingChanged: Signal;
	public var foldingChanged(get, default): Signal;
	function get_foldingChanged(): Signal {
	    if (_foldingChanged == null) {
	        _foldingChanged = Signal.createFromObject(native, 'folding_changed');
	    }
	    return _foldingChanged;
	}

  public function addTitleBarControl(control: Control): Void {
      var args = new ArrayList();
      args.append(control.native);
      native.call('add_title_bar_control', args);
  }
  public function expand(): Void {
      var args = new ArrayList();
      native.call('expand', args);
  }
  public function fold(): Void {
      var args = new ArrayList();
      native.call('fold', args);
  }
  public function removeTitleBarControl(control: Control): Void {
      var args = new ArrayList();
      args.append(control.native);
      native.call('remove_title_bar_control', args);
  }
}
