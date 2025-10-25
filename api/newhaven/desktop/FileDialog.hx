package sunaba.desktop;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.TypedArray;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.ui.LineEdit;
import sunaba.core.Dictionary;
import sunaba.ui.VBoxContainer;

class FileDialog extends ConfirmationDialog {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('FileDialog');
        }
        native = _native;
    }

    public var access(get, set): Int;
    function get_access(): Int {
        return native.get('access');
    }
    function set_access(value: Int): Int {
      native.set('access', value);
        return value;
    }
    public var currentDir(get, set): String;
    function get_currentDir(): String {
        return native.get('current_dir');
    }
    function set_currentDir(value: String): String {
      native.set('current_dir', value);
        return value;
    }
    public var currentFile(get, set): String;
    function get_currentFile(): String {
        return native.get('current_file');
    }
    function set_currentFile(value: String): String {
      native.set('current_file', value);
        return value;
    }
    public var currentPath(get, set): String;
    function get_currentPath(): String {
        return native.get('current_path');
    }
    function set_currentPath(value: String): String {
      native.set('current_path', value);
        return value;
    }
    public var displayMode(get, set): Int;
    function get_displayMode(): Int {
        return native.get('display_mode');
    }
    function set_displayMode(value: Int): Int {
      native.set('display_mode', value);
        return value;
    }
    public var favoritesEnabled(get, set): Bool;
    function get_favoritesEnabled(): Bool {
        return native.get('favorites_enabled');
    }
    function set_favoritesEnabled(value: Bool): Bool {
      native.set('favorites_enabled', value);
        return value;
    }
    public var fileFilterToggleEnabled(get, set): Bool;
    function get_fileFilterToggleEnabled(): Bool {
        return native.get('file_filter_toggle_enabled');
    }
    function set_fileFilterToggleEnabled(value: Bool): Bool {
      native.set('file_filter_toggle_enabled', value);
        return value;
    }
    public var fileMode(get, set): Int;
    function get_fileMode(): Int {
        return native.get('file_mode');
    }
    function set_fileMode(value: Int): Int {
      native.set('file_mode', value);
        return value;
    }
    public var fileSortOptionsEnabled(get, set): Bool;
    function get_fileSortOptionsEnabled(): Bool {
        return native.get('file_sort_options_enabled');
    }
    function set_fileSortOptionsEnabled(value: Bool): Bool {
      native.set('file_sort_options_enabled', value);
        return value;
    }
    public var filenameFilter(get, set): String;
    function get_filenameFilter(): String {
        return native.get('filename_filter');
    }
    function set_filenameFilter(value: String): String {
      native.set('filename_filter', value);
        return value;
    }
    public var filters(get, set): TypedArray<String>;
    function get_filters(): TypedArray<String> {
        return native.get('filters');
    }
    function set_filters(value: TypedArray<String>): TypedArray<String> {
      native.set('filters', value);
        return value;
    }
    public var folderCreationEnabled(get, set): Bool;
    function get_folderCreationEnabled(): Bool {
        return native.get('folder_creation_enabled');
    }
    function set_folderCreationEnabled(value: Bool): Bool {
      native.set('folder_creation_enabled', value);
        return value;
    }
    public var hiddenFilesToggleEnabled(get, set): Bool;
    function get_hiddenFilesToggleEnabled(): Bool {
        return native.get('hidden_files_toggle_enabled');
    }
    function set_hiddenFilesToggleEnabled(value: Bool): Bool {
      native.set('hidden_files_toggle_enabled', value);
        return value;
    }
    public var layoutToggleEnabled(get, set): Bool;
    function get_layoutToggleEnabled(): Bool {
        return native.get('layout_toggle_enabled');
    }
    function set_layoutToggleEnabled(value: Bool): Bool {
      native.set('layout_toggle_enabled', value);
        return value;
    }
    public var modeOverridesTitle(get, set): Bool;
    function get_modeOverridesTitle(): Bool {
        return native.get('mode_overrides_title');
    }
    function set_modeOverridesTitle(value: Bool): Bool {
      native.set('mode_overrides_title', value);
        return value;
    }
    public var optionCount(get, set): Int;
    function get_optionCount(): Int {
        return native.get('option_count');
    }
    function set_optionCount(value: Int): Int {
      native.set('option_count', value);
        return value;
    }
    public var recentListEnabled(get, set): Bool;
    function get_recentListEnabled(): Bool {
        return native.get('recent_list_enabled');
    }
    function set_recentListEnabled(value: Bool): Bool {
      native.set('recent_list_enabled', value);
        return value;
    }
    public var rootSubfolder(get, set): String;
    function get_rootSubfolder(): String {
        return native.get('root_subfolder');
    }
    function set_rootSubfolder(value: String): String {
      native.set('root_subfolder', value);
        return value;
    }
    public var showHiddenFiles(get, set): Bool;
    function get_showHiddenFiles(): Bool {
        return native.get('show_hidden_files');
    }
    function set_showHiddenFiles(value: Bool): Bool {
      native.set('show_hidden_files', value);
        return value;
    }
    public var useNativeDialog(get, set): Bool;
    function get_useNativeDialog(): Bool {
        return native.get('use_native_dialog');
    }
    function set_useNativeDialog(value: Bool): Bool {
      native.set('use_native_dialog', value);
        return value;
    }

	private var _dirSelected: Signal;
	public var dirSelected(get, default): Signal;
	function get_dirSelected(): Signal {
	    if (_dirSelected == null) {
	        _dirSelected = Signal.createFromObject(native, 'dir_selected');
	    }
	    return _dirSelected;
	}
	private var _fileSelected: Signal;
	public var fileSelected(get, default): Signal;
	function get_fileSelected(): Signal {
	    if (_fileSelected == null) {
	        _fileSelected = Signal.createFromObject(native, 'file_selected');
	    }
	    return _fileSelected;
	}
	private var _filenameFilterChanged: Signal;
	public var filenameFilterChanged(get, default): Signal;
	function get_filenameFilterChanged(): Signal {
	    if (_filenameFilterChanged == null) {
	        _filenameFilterChanged = Signal.createFromObject(native, 'filename_filter_changed');
	    }
	    return _filenameFilterChanged;
	}
	private var _filesSelected: Signal;
	public var filesSelected(get, default): Signal;
	function get_filesSelected(): Signal {
	    if (_filesSelected == null) {
	        _filesSelected = Signal.createFromObject(native, 'files_selected');
	    }
	    return _filesSelected;
	}

  public function addFilter(filter: String, ?description: String): Void {
      var args = new ArrayList();
      args.append(filter);
      if (description != null) {
          args.append(description);
      }
      native.call('add_filter', args);
  }
  public function addOption(name: String, values: TypedArray<String>, defaultValueIndex: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(values);
      args.append(defaultValueIndex);
      native.call('add_option', args);
  }
  public function clearFilenameFilter(): Void {
      var args = new ArrayList();
      native.call('clear_filename_filter', args);
  }
  public function clearFilters(): Void {
      var args = new ArrayList();
      native.call('clear_filters', args);
  }
  public function deselectAll(): Void {
      var args = new ArrayList();
      native.call('deselect_all', args);
  }
  public function getLineEdit(): LineEdit {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_line_edit', args);
      return new LineEdit(ref);
  }
  public function getOptionDefault(option: Int): Int {
      var args = new ArrayList();
      args.append(option);
      return native.call('get_option_default', args);
  }
  public function getOptionName(option: Int): String {
      var args = new ArrayList();
      args.append(option);
      return native.call('get_option_name', args);
  }
  public function getOptionValues(option: Int): TypedArray<String> {
      var args = new ArrayList();
      args.append(option);
      return native.call('get_option_values', args);
  }
  public function getSelectedOptions(): Dictionary {
      var args = new ArrayList();
      return native.call('get_selected_options', args);
  }
  public function getVbox(): VBoxContainer {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_vbox', args);
      return new VBoxContainer(ref);
  }
  public function invalidate(): Void {
      var args = new ArrayList();
      native.call('invalidate', args);
  }
  public function isCustomizationFlagEnabled(flag: Int): Bool {
      var args = new ArrayList();
      args.append(flag);
      return native.call('is_customization_flag_enabled', args);
  }
  public function setCustomizationFlagEnabled(flag: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(flag);
      args.append(enabled);
      native.call('set_customization_flag_enabled', args);
  }
  public function setOptionDefault(option: Int, defaultValueIndex: Int): Void {
      var args = new ArrayList();
      args.append(option);
      args.append(defaultValueIndex);
      native.call('set_option_default', args);
  }
  public function setOptionName(option: Int, name: String): Void {
      var args = new ArrayList();
      args.append(option);
      args.append(name);
      native.call('set_option_name', args);
  }
  public function setOptionValues(option: Int, values: TypedArray<String>): Void {
      var args = new ArrayList();
      args.append(option);
      args.append(values);
      native.call('set_option_values', args);
  }
}
