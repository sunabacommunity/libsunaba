package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Rect2;

class Container extends Control {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('Container');
        }
        this.native = _native;
    }


	private var _preSortChildren: Signal;
	public var preSortChildren(get, default): Signal;
	function get_preSortChildren(): Signal {
	    if (_preSortChildren == null) {
	        _preSortChildren = Signal.createFromObject(native, 'pre_sort_children');
	    }
	    return _preSortChildren;
	}
	private var _sortChildren: Signal;
	public var sortChildren(get, default): Signal;
	function get_sortChildren(): Signal {
	    if (_sortChildren == null) {
	        _sortChildren = Signal.createFromObject(native, 'sort_children');
	    }
	    return _sortChildren;
	}

  public function fitChildInRect(child: Control, rect: Rect2): Void {
      var args = new ArrayList();
      args.append(child.native);
      args.append(rect);
      native.call('fit_child_in_rect', args);
  }
  public function queueSort(): Void {
      var args = new ArrayList();
      native.call('queue_sort', args);
  }
}
