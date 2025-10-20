package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Dictionary;
import newhaven.core.ArrayList;
import newhaven.core.Color;
import newhaven.Resource;
import newhaven.core.TypedArray;
import newhaven.core.Vector2;

class CodeEdit extends TextEdit {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('CodeEdit');
        }
        native = _native;
    }

    public var autoBraceCompletionEnabled(get, set): Bool;
    function get_autoBraceCompletionEnabled(): Bool {
        return native.get('auto_brace_completion_enabled');
    }
    function set_autoBraceCompletionEnabled(value: Bool): Bool {
      native.set('auto_brace_completion_enabled', value);
        return value;
    }
    public var autoBraceCompletionHighlightMatching(get, set): Bool;
    function get_autoBraceCompletionHighlightMatching(): Bool {
        return native.get('auto_brace_completion_highlight_matching');
    }
    function set_autoBraceCompletionHighlightMatching(value: Bool): Bool {
      native.set('auto_brace_completion_highlight_matching', value);
        return value;
    }
    public var autoBraceCompletionPairs(get, set): Dictionary;
    function get_autoBraceCompletionPairs(): Dictionary {
        return native.get('auto_brace_completion_pairs');
    }
    function set_autoBraceCompletionPairs(value: Dictionary): Dictionary {
      native.set('auto_brace_completion_pairs', value);
        return value;
    }
    public var codeCompletionEnabled(get, set): Bool;
    function get_codeCompletionEnabled(): Bool {
        return native.get('code_completion_enabled');
    }
    function set_codeCompletionEnabled(value: Bool): Bool {
      native.set('code_completion_enabled', value);
        return value;
    }
    public var guttersDrawBookmarks(get, set): Bool;
    function get_guttersDrawBookmarks(): Bool {
        return native.get('gutters_draw_bookmarks');
    }
    function set_guttersDrawBookmarks(value: Bool): Bool {
      native.set('gutters_draw_bookmarks', value);
        return value;
    }
    public var guttersDrawBreakpointsGutter(get, set): Bool;
    function get_guttersDrawBreakpointsGutter(): Bool {
        return native.get('gutters_draw_breakpoints_gutter');
    }
    function set_guttersDrawBreakpointsGutter(value: Bool): Bool {
      native.set('gutters_draw_breakpoints_gutter', value);
        return value;
    }
    public var guttersDrawExecutingLines(get, set): Bool;
    function get_guttersDrawExecutingLines(): Bool {
        return native.get('gutters_draw_executing_lines');
    }
    function set_guttersDrawExecutingLines(value: Bool): Bool {
      native.set('gutters_draw_executing_lines', value);
        return value;
    }
    public var guttersDrawFoldGutter(get, set): Bool;
    function get_guttersDrawFoldGutter(): Bool {
        return native.get('gutters_draw_fold_gutter');
    }
    function set_guttersDrawFoldGutter(value: Bool): Bool {
      native.set('gutters_draw_fold_gutter', value);
        return value;
    }
    public var guttersDrawLineNumbers(get, set): Bool;
    function get_guttersDrawLineNumbers(): Bool {
        return native.get('gutters_draw_line_numbers');
    }
    function set_guttersDrawLineNumbers(value: Bool): Bool {
      native.set('gutters_draw_line_numbers', value);
        return value;
    }
    public var guttersZeroPadLineNumbers(get, set): Bool;
    function get_guttersZeroPadLineNumbers(): Bool {
        return native.get('gutters_zero_pad_line_numbers');
    }
    function set_guttersZeroPadLineNumbers(value: Bool): Bool {
      native.set('gutters_zero_pad_line_numbers', value);
        return value;
    }
    public var indentAutomatic(get, set): Bool;
    function get_indentAutomatic(): Bool {
        return native.get('indent_automatic');
    }
    function set_indentAutomatic(value: Bool): Bool {
      native.set('indent_automatic', value);
        return value;
    }
    public var indentSize(get, set): Int;
    function get_indentSize(): Int {
        return native.get('indent_size');
    }
    function set_indentSize(value: Int): Int {
      native.set('indent_size', value);
        return value;
    }
    public var indentUseSpaces(get, set): Bool;
    function get_indentUseSpaces(): Bool {
        return native.get('indent_use_spaces');
    }
    function set_indentUseSpaces(value: Bool): Bool {
      native.set('indent_use_spaces', value);
        return value;
    }
    public var lineFolding(get, set): Bool;
    function get_lineFolding(): Bool {
        return native.get('line_folding');
    }
    function set_lineFolding(value: Bool): Bool {
      native.set('line_folding', value);
        return value;
    }
    public var symbolLookupOnClick(get, set): Bool;
    function get_symbolLookupOnClick(): Bool {
        return native.get('symbol_lookup_on_click');
    }
    function set_symbolLookupOnClick(value: Bool): Bool {
      native.set('symbol_lookup_on_click', value);
        return value;
    }
    public var symbolTooltipOnHover(get, set): Bool;
    function get_symbolTooltipOnHover(): Bool {
        return native.get('symbol_tooltip_on_hover');
    }
    function set_symbolTooltipOnHover(value: Bool): Bool {
      native.set('symbol_tooltip_on_hover', value);
        return value;
    }

  public function addAutoBraceCompletionPair(startKey: String, endKey: String): Void {
      var args = new ArrayList();
      args.append(startKey);
      args.append(endKey);
      native.call('add_auto_brace_completion_pair', args);
  }
  public function addCodeCompletionOption(type: Int, displayText: String, insertText: String, ?textColor: Color, ?icon: Resource, ?value: Variant, ?location: Int): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(displayText);
      args.append(insertText);
      if (textColor != null) {
          args.append(textColor);
      }
      if (icon != null) {
          args.append(icon.native);
      }
      if (value != null) {
          args.append(value);
      }
      if (location != null) {
          args.append(location);
      }
      native.call('add_code_completion_option', args);
  }
  public function addCommentDelimiter(startKey: String, endKey: String, ?lineOnly: Bool): Void {
      var args = new ArrayList();
      args.append(startKey);
      args.append(endKey);
      if (lineOnly != null) {
          args.append(lineOnly);
      }
      native.call('add_comment_delimiter', args);
  }
  public function addStringDelimiter(startKey: String, endKey: String, ?lineOnly: Bool): Void {
      var args = new ArrayList();
      args.append(startKey);
      args.append(endKey);
      if (lineOnly != null) {
          args.append(lineOnly);
      }
      native.call('add_string_delimiter', args);
  }
  public function canFoldLine(line: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      return native.call('can_fold_line', args);
  }
  public function cancelCodeCompletion(): Void {
      var args = new ArrayList();
      native.call('cancel_code_completion', args);
  }
  public function clearBookmarkedLines(): Void {
      var args = new ArrayList();
      native.call('clear_bookmarked_lines', args);
  }
  public function clearBreakpointedLines(): Void {
      var args = new ArrayList();
      native.call('clear_breakpointed_lines', args);
  }
  public function clearCommentDelimiters(): Void {
      var args = new ArrayList();
      native.call('clear_comment_delimiters', args);
  }
  public function clearExecutingLines(): Void {
      var args = new ArrayList();
      native.call('clear_executing_lines', args);
  }
  public function clearStringDelimiters(): Void {
      var args = new ArrayList();
      native.call('clear_string_delimiters', args);
  }
  public function confirmCodeCompletion(?replace: Bool): Void {
      var args = new ArrayList();
      if (replace != null) {
          args.append(replace);
      }
      native.call('confirm_code_completion', args);
  }
  public function convertIndent(?fromLine: Int, ?toLine: Int): Void {
      var args = new ArrayList();
      if (fromLine != null) {
          args.append(fromLine);
      }
      if (toLine != null) {
          args.append(toLine);
      }
      native.call('convert_indent', args);
  }
  public function createCodeRegion(): Void {
      var args = new ArrayList();
      native.call('create_code_region', args);
  }
  public function deleteLines(): Void {
      var args = new ArrayList();
      native.call('delete_lines', args);
  }
  public function doIndent(): Void {
      var args = new ArrayList();
      native.call('do_indent', args);
  }
  public function duplicateLines(): Void {
      var args = new ArrayList();
      native.call('duplicate_lines', args);
  }
  public function duplicateSelection(): Void {
      var args = new ArrayList();
      native.call('duplicate_selection', args);
  }
  public function foldAllLines(): Void {
      var args = new ArrayList();
      native.call('fold_all_lines', args);
  }
  public function foldLine(line: Int): Void {
      var args = new ArrayList();
      args.append(line);
      native.call('fold_line', args);
  }
  public function getAutoBraceCompletionCloseKey(openKey: String): String {
      var args = new ArrayList();
      args.append(openKey);
      return native.call('get_auto_brace_completion_close_key', args);
  }
  public function getBookmarkedLines(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_bookmarked_lines', args);
  }
  public function getBreakpointedLines(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_breakpointed_lines', args);
  }
  public function getCodeCompletionOption(index: Int): Dictionary {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_code_completion_option', args);
  }
  public function getCodeCompletionSelectedIndex(): Int {
      var args = new ArrayList();
      return native.call('get_code_completion_selected_index', args);
  }
  public function getCodeRegionEndTag(): String {
      var args = new ArrayList();
      return native.call('get_code_region_end_tag', args);
  }
  public function getCodeRegionStartTag(): String {
      var args = new ArrayList();
      return native.call('get_code_region_start_tag', args);
  }
  public function getDelimiterEndKey(delimiterIndex: Int): String {
      var args = new ArrayList();
      args.append(delimiterIndex);
      return native.call('get_delimiter_end_key', args);
  }
  public function getDelimiterEndPosition(line: Int, column: Int): Vector2 {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('get_delimiter_end_position', args);
  }
  public function getDelimiterStartKey(delimiterIndex: Int): String {
      var args = new ArrayList();
      args.append(delimiterIndex);
      return native.call('get_delimiter_start_key', args);
  }
  public function getDelimiterStartPosition(line: Int, column: Int): Vector2 {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('get_delimiter_start_position', args);
  }
  public function getExecutingLines(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_executing_lines', args);
  }
  public function getTextForCodeCompletion(): String {
      var args = new ArrayList();
      return native.call('get_text_for_code_completion', args);
  }
  public function getTextForSymbolLookup(): String {
      var args = new ArrayList();
      return native.call('get_text_for_symbol_lookup', args);
  }
  public function getTextWithCursorChar(line: Int, column: Int): String {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('get_text_with_cursor_char', args);
  }
  public function hasAutoBraceCompletionCloseKey(closeKey: String): Bool {
      var args = new ArrayList();
      args.append(closeKey);
      return native.call('has_auto_brace_completion_close_key', args);
  }
  public function hasAutoBraceCompletionOpenKey(openKey: String): Bool {
      var args = new ArrayList();
      args.append(openKey);
      return native.call('has_auto_brace_completion_open_key', args);
  }
  public function hasCommentDelimiter(startKey: String): Bool {
      var args = new ArrayList();
      args.append(startKey);
      return native.call('has_comment_delimiter', args);
  }
  public function hasStringDelimiter(startKey: String): Bool {
      var args = new ArrayList();
      args.append(startKey);
      return native.call('has_string_delimiter', args);
  }
  public function indentLines(): Void {
      var args = new ArrayList();
      native.call('indent_lines', args);
  }
  public function isInComment(line: Int, ?column: Int): Int {
      var args = new ArrayList();
      args.append(line);
      if (column != null) {
          args.append(column);
      }
      return native.call('is_in_comment', args);
  }
  public function isInString(line: Int, ?column: Int): Int {
      var args = new ArrayList();
      args.append(line);
      if (column != null) {
          args.append(column);
      }
      return native.call('is_in_string', args);
  }
  public function isLineBookmarked(line: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      return native.call('is_line_bookmarked', args);
  }
  public function isLineBreakpointed(line: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      return native.call('is_line_breakpointed', args);
  }
  public function isLineCodeRegionEnd(line: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      return native.call('is_line_code_region_end', args);
  }
  public function isLineCodeRegionStart(line: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      return native.call('is_line_code_region_start', args);
  }
  public function isLineExecuting(line: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      return native.call('is_line_executing', args);
  }
  public function isLineFolded(line: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      return native.call('is_line_folded', args);
  }
  public function moveLinesDown(): Void {
      var args = new ArrayList();
      native.call('move_lines_down', args);
  }
  public function moveLinesUp(): Void {
      var args = new ArrayList();
      native.call('move_lines_up', args);
  }
  public function removeCommentDelimiter(startKey: String): Void {
      var args = new ArrayList();
      args.append(startKey);
      native.call('remove_comment_delimiter', args);
  }
  public function removeStringDelimiter(startKey: String): Void {
      var args = new ArrayList();
      args.append(startKey);
      native.call('remove_string_delimiter', args);
  }
  public function requestCodeCompletion(?force: Bool): Void {
      var args = new ArrayList();
      if (force != null) {
          args.append(force);
      }
      native.call('request_code_completion', args);
  }
  public function setCodeCompletionSelectedIndex(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('set_code_completion_selected_index', args);
  }
  public function setCodeHint(codeHint: String): Void {
      var args = new ArrayList();
      args.append(codeHint);
      native.call('set_code_hint', args);
  }
  public function setCodeHintDrawBelow(drawBelow: Bool): Void {
      var args = new ArrayList();
      args.append(drawBelow);
      native.call('set_code_hint_draw_below', args);
  }
  public function setCodeRegionTags(?start: String, ?end: String): Void {
      var args = new ArrayList();
      if (start != null) {
          args.append(start);
      }
      if (end != null) {
          args.append(end);
      }
      native.call('set_code_region_tags', args);
  }
  public function setLineAsBookmarked(line: Int, bookmarked: Bool): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(bookmarked);
      native.call('set_line_as_bookmarked', args);
  }
  public function setLineAsBreakpoint(line: Int, breakpointed: Bool): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(breakpointed);
      native.call('set_line_as_breakpoint', args);
  }
  public function setLineAsExecuting(line: Int, executing: Bool): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(executing);
      native.call('set_line_as_executing', args);
  }
  public function setSymbolLookupWordAsValid(valid: Bool): Void {
      var args = new ArrayList();
      args.append(valid);
      native.call('set_symbol_lookup_word_as_valid', args);
  }
  public function toggleFoldableLine(line: Int): Void {
      var args = new ArrayList();
      args.append(line);
      native.call('toggle_foldable_line', args);
  }
  public function toggleFoldableLinesAtCarets(): Void {
      var args = new ArrayList();
      native.call('toggle_foldable_lines_at_carets', args);
  }
  public function unfoldAllLines(): Void {
      var args = new ArrayList();
      native.call('unfold_all_lines', args);
  }
  public function unfoldLine(line: Int): Void {
      var args = new ArrayList();
      args.append(line);
      native.call('unfold_line', args);
  }
  public function unindentLines(): Void {
      var args = new ArrayList();
      native.call('unindent_lines', args);
  }
  public function updateCodeCompletionOptions(force: Bool): Void {
      var args = new ArrayList();
      args.append(force);
      native.call('update_code_completion_options', args);
  }
}
