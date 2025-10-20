package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class ProgressBar extends Range {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('ProgressBar');
        }
        native = _native;
    }

    public var editorPreviewIndeterminate(get, set): Bool;
    function get_editorPreviewIndeterminate(): Bool {
        return native.get('editor_preview_indeterminate');
    }
    function set_editorPreviewIndeterminate(value: Bool): Bool {
      native.set('editor_preview_indeterminate', value);
        return value;
    }
    public var fillMode(get, set): Int;
    function get_fillMode(): Int {
        return native.get('fill_mode');
    }
    function set_fillMode(value: Int): Int {
      native.set('fill_mode', value);
        return value;
    }
    public var indeterminate(get, set): Bool;
    function get_indeterminate(): Bool {
        return native.get('indeterminate');
    }
    function set_indeterminate(value: Bool): Bool {
      native.set('indeterminate', value);
        return value;
    }
    public var showPercentage(get, set): Bool;
    function get_showPercentage(): Bool {
        return native.get('show_percentage');
    }
    function set_showPercentage(value: Bool): Bool {
      native.set('show_percentage', value);
        return value;
    }

}
