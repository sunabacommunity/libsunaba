package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;

class OptimizedTranslation extends Translation {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('OptimizedTranslation');
        }
        native = _native;
    }


  public function generate(from: Translation): Void {
      var args = new ArrayList();
      args.append(from.native);
      native.call('generate', args);
  }
}
