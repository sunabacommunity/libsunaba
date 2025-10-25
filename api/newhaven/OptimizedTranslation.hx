package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

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
