package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.Dictionary;

class SyntaxHighlighter extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('SyntaxHighlighter');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['SyntaxHighlighter', native];
        scriptLoader.call('loadScript', args);
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
