package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Dictionary;
import newhaven.core.Color;
import newhaven.core.ArrayList;

class CodeHighlighter extends SyntaxHighlighter {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CodeHighlighter');
        }
        native = _native;
    }

    public var colorRegions(get, set): Dictionary;
    function get_colorRegions(): Dictionary {
        return native.get('color_regions');
    }
    function set_colorRegions(value: Dictionary): Dictionary {
      native.set('color_regions', value);
        return value;
    }
    public var functionColor(get, set): Color;
    function get_functionColor(): Color {
        return native.get('function_color');
    }
    function set_functionColor(value: Color): Color {
      native.set('function_color', value);
        return value;
    }
    public var keywordColors(get, set): Dictionary;
    function get_keywordColors(): Dictionary {
        return native.get('keyword_colors');
    }
    function set_keywordColors(value: Dictionary): Dictionary {
      native.set('keyword_colors', value);
        return value;
    }
    public var memberKeywordColors(get, set): Dictionary;
    function get_memberKeywordColors(): Dictionary {
        return native.get('member_keyword_colors');
    }
    function set_memberKeywordColors(value: Dictionary): Dictionary {
      native.set('member_keyword_colors', value);
        return value;
    }
    public var memberVariableColor(get, set): Color;
    function get_memberVariableColor(): Color {
        return native.get('member_variable_color');
    }
    function set_memberVariableColor(value: Color): Color {
      native.set('member_variable_color', value);
        return value;
    }
    public var numberColor(get, set): Color;
    function get_numberColor(): Color {
        return native.get('number_color');
    }
    function set_numberColor(value: Color): Color {
      native.set('number_color', value);
        return value;
    }
    public var symbolColor(get, set): Color;
    function get_symbolColor(): Color {
        return native.get('symbol_color');
    }
    function set_symbolColor(value: Color): Color {
      native.set('symbol_color', value);
        return value;
    }

  public function addColorRegion(startKey: String, endKey: String, color: Color, ?lineOnly: Bool): Void {
      var args = new ArrayList();
      args.append(startKey);
      args.append(endKey);
      args.append(color);
      if (lineOnly != null) {
          args.append(lineOnly);
      }
      native.call('add_color_region', args);
  }
  public function addKeywordColor(keyword: String, color: Color): Void {
      var args = new ArrayList();
      args.append(keyword);
      args.append(color);
      native.call('add_keyword_color', args);
  }
  public function addMemberKeywordColor(memberKeyword: String, color: Color): Void {
      var args = new ArrayList();
      args.append(memberKeyword);
      args.append(color);
      native.call('add_member_keyword_color', args);
  }
  public function clearColorRegions(): Void {
      var args = new ArrayList();
      native.call('clear_color_regions', args);
  }
  public function clearKeywordColors(): Void {
      var args = new ArrayList();
      native.call('clear_keyword_colors', args);
  }
  public function clearMemberKeywordColors(): Void {
      var args = new ArrayList();
      native.call('clear_member_keyword_colors', args);
  }
  public function getKeywordColor(keyword: String): Color {
      var args = new ArrayList();
      args.append(keyword);
      return native.call('get_keyword_color', args);
  }
  public function getMemberKeywordColor(memberKeyword: String): Color {
      var args = new ArrayList();
      args.append(memberKeyword);
      return native.call('get_member_keyword_color', args);
  }
  public function hasColorRegion(startKey: String): Bool {
      var args = new ArrayList();
      args.append(startKey);
      return native.call('has_color_region', args);
  }
  public function hasKeywordColor(keyword: String): Bool {
      var args = new ArrayList();
      args.append(keyword);
      return native.call('has_keyword_color', args);
  }
  public function hasMemberKeywordColor(memberKeyword: String): Bool {
      var args = new ArrayList();
      args.append(memberKeyword);
      return native.call('has_member_keyword_color', args);
  }
  public function removeColorRegion(startKey: String): Void {
      var args = new ArrayList();
      args.append(startKey);
      native.call('remove_color_region', args);
  }
  public function removeKeywordColor(keyword: String): Void {
      var args = new ArrayList();
      args.append(keyword);
      native.call('remove_keyword_color', args);
  }
  public function removeMemberKeywordColor(memberKeyword: String): Void {
      var args = new ArrayList();
      args.append(memberKeyword);
      native.call('remove_member_keyword_color', args);
  }
}
