package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Rect2;
import newhaven.core.ArrayList;

class Container extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Container');
        }
        native = _native;
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
