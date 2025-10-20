package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.core.Dictionary;

class SyntaxHighlighter extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('SyntaxHighlighter');
        }
        native = _native;
    }



  public function clearHighlightingCache(): Void {
      var args = new ArrayList();
      native.call('clear_highlighting_cache', args);
  }
  public function getLineSyntaxHighlighting(line: Int): Dictionary {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_syntax_highlighting', args);
  }
  public function getTextEdit(): TextEdit {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_text_edit', args);
      return new TextEdit(ref);
  }
  public function updateCache(): Void {
      var args = new ArrayList();
      native.call('update_cache', args);
  }
}
