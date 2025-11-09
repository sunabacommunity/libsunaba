package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;
import sunaba.core.Dictionary;
import sunaba.core.ByteArray;

class OSService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('OSService');
        }
        return _native;
    }

    public static var deltaSmoothing(get, set): Bool;
    static function get_deltaSmoothing(): Bool {
        return getNative().get('delta_smoothing');
    }
    static function set_deltaSmoothing(value: Bool): Bool {
      getNative().set('delta_smoothing', value);
        return value;
    }
    public static var lowProcessorUsageMode(get, set): Bool;
    static function get_lowProcessorUsageMode(): Bool {
        return getNative().get('low_processor_usage_mode');
    }
    static function set_lowProcessorUsageMode(value: Bool): Bool {
      getNative().set('low_processor_usage_mode', value);
        return value;
    }
    public static var lowProcessorUsageModeSleepUsec(get, set): Int;
    static function get_lowProcessorUsageModeSleepUsec(): Int {
        return getNative().get('low_processor_usage_mode_sleep_usec');
    }
    static function set_lowProcessorUsageModeSleepUsec(value: Int): Int {
      getNative().set('low_processor_usage_mode_sleep_usec', value);
        return value;
    }


  public static function addLogger(logger: Variant): Void {
      var args = new ArrayList();
      args.append(logger);
      getNative().call('add_logger', args);
  }
  public static function alert(text: String, ?title: String): Void {
      var args = new ArrayList();
      args.append(text);
      if (title != null) {
          args.append(title);
      }
      getNative().call('alert', args);
  }
  public static function closeMidiInputs(): Void {
      var args = new ArrayList();
      getNative().call('close_midi_inputs', args);
  }
  public static function crash(message: String): Void {
      var args = new ArrayList();
      args.append(message);
      getNative().call('crash', args);
  }
  public static function createInstance(arguments: TypedArray<String>): Int {
      var args = new ArrayList();
      args.append(arguments);
      return getNative().call('create_instance', args);
  }
  public static function createProcess(path: String, arguments: TypedArray<String>, ?openConsole: Bool): Int {
      var args = new ArrayList();
      args.append(path);
      args.append(arguments);
      if (openConsole != null) {
          args.append(openConsole);
      }
      return getNative().call('create_process', args);
  }
  public static function delayMsec(msec: Int): Void {
      var args = new ArrayList();
      args.append(msec);
      getNative().call('delay_msec', args);
  }
  public static function delayUsec(usec: Int): Void {
      var args = new ArrayList();
      args.append(usec);
      getNative().call('delay_usec', args);
  }
  public static function execute(path: String, arguments: TypedArray<String>, ?output: ArrayList, ?readStderr: Bool, ?openConsole: Bool): Int {
      var args = new ArrayList();
      args.append(path);
      args.append(arguments);
      if (output != null) {
          args.append(output);
      }
      if (readStderr != null) {
          args.append(readStderr);
      }
      if (openConsole != null) {
          args.append(openConsole);
      }
      return getNative().call('execute', args);
  }
  public static function executeWithPipe(path: String, arguments: TypedArray<String>, ?blocking: Bool): Dictionary {
      var args = new ArrayList();
      args.append(path);
      args.append(arguments);
      if (blocking != null) {
          args.append(blocking);
      }
      return getNative().call('execute_with_pipe', args);
  }
  public static function findKeycodeFromString(string: String): Int {
      var args = new ArrayList();
      args.append(string);
      return getNative().call('find_keycode_from_string', args);
  }
  public static function getCacheDir(): String {
      var args = new ArrayList();
      return getNative().call('get_cache_dir', args);
  }
  public static function getCmdlineArgs(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_cmdline_args', args);
  }
  public static function getCmdlineUserArgs(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_cmdline_user_args', args);
  }
  public static function getConfigDir(): String {
      var args = new ArrayList();
      return getNative().call('get_config_dir', args);
  }
  public static function getConnectedMidiInputs(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_connected_midi_inputs', args);
  }
  public static function getDataDir(): String {
      var args = new ArrayList();
      return getNative().call('get_data_dir', args);
  }
  public static function getDistributionName(): String {
      var args = new ArrayList();
      return getNative().call('get_distribution_name', args);
  }
  public static function getEntropy(size: Int): ByteArray {
      var args = new ArrayList();
      args.append(size);
      return getNative().call('get_entropy', args);
  }
  public static function getEnvironment(variable: String): String {
      var args = new ArrayList();
      args.append(variable);
      return getNative().call('get_environment', args);
  }
  public static function getExecutablePath(): String {
      var args = new ArrayList();
      return getNative().call('get_executable_path', args);
  }
  public static function getGrantedPermissions(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_granted_permissions', args);
  }
  public static function getKeycodeString(code: Int): String {
      var args = new ArrayList();
      args.append(code);
      return getNative().call('get_keycode_string', args);
  }
  public static function getLocale(): String {
      var args = new ArrayList();
      return getNative().call('get_locale', args);
  }
  public static function getLocaleLanguage(): String {
      var args = new ArrayList();
      return getNative().call('get_locale_language', args);
  }
  public static function getMainThreadId(): Int {
      var args = new ArrayList();
      return getNative().call('get_main_thread_id', args);
  }
  public static function getMemoryInfo(): Dictionary {
      var args = new ArrayList();
      return getNative().call('get_memory_info', args);
  }
  public static function getModelName(): String {
      var args = new ArrayList();
      return getNative().call('get_model_name', args);
  }
  public static function getName(): String {
      var args = new ArrayList();
      return getNative().call('get_name', args);
  }
  public static function getProcessExitCode(pid: Int): Int {
      var args = new ArrayList();
      args.append(pid);
      return getNative().call('get_process_exit_code', args);
  }
  public static function getProcessId(): Int {
      var args = new ArrayList();
      return getNative().call('get_process_id', args);
  }
  public static function getProcessorCount(): Int {
      var args = new ArrayList();
      return getNative().call('get_processor_count', args);
  }
  public static function getProcessorName(): String {
      var args = new ArrayList();
      return getNative().call('get_processor_name', args);
  }
  public static function getRestartOnExitArguments(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_restart_on_exit_arguments', args);
  }
  public static function getStaticMemoryPeakUsage(): Int {
      var args = new ArrayList();
      return getNative().call('get_static_memory_peak_usage', args);
  }
  public static function getStaticMemoryUsage(): Int {
      var args = new ArrayList();
      return getNative().call('get_static_memory_usage', args);
  }
  public static function getStderrType(): Int {
      var args = new ArrayList();
      return getNative().call('get_stderr_type', args);
  }
  public static function getStdinType(): Int {
      var args = new ArrayList();
      return getNative().call('get_stdin_type', args);
  }
  public static function getStdoutType(): Int {
      var args = new ArrayList();
      return getNative().call('get_stdout_type', args);
  }
  public static function getSystemCaCertificates(): String {
      var args = new ArrayList();
      return getNative().call('get_system_ca_certificates', args);
  }
  public static function getSystemDir(dir: Int, ?sharedStorage: Bool): String {
      var args = new ArrayList();
      args.append(dir);
      if (sharedStorage != null) {
          args.append(sharedStorage);
      }
      return getNative().call('get_system_dir', args);
  }
  public static function getSystemFontPath(fontName: String, ?weight: Int, ?stretch: Int, ?italic: Bool): String {
      var args = new ArrayList();
      args.append(fontName);
      if (weight != null) {
          args.append(weight);
      }
      if (stretch != null) {
          args.append(stretch);
      }
      if (italic != null) {
          args.append(italic);
      }
      return getNative().call('get_system_font_path', args);
  }
  public static function getSystemFontPathForText(fontName: String, text: String, ?locale: String, ?script: String, ?weight: Int, ?stretch: Int, ?italic: Bool): TypedArray<String> {
      var args = new ArrayList();
      args.append(fontName);
      args.append(text);
      if (locale != null) {
          args.append(locale);
      }
      if (script != null) {
          args.append(script);
      }
      if (weight != null) {
          args.append(weight);
      }
      if (stretch != null) {
          args.append(stretch);
      }
      if (italic != null) {
          args.append(italic);
      }
      return getNative().call('get_system_font_path_for_text', args);
  }
  public static function getSystemFonts(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_system_fonts', args);
  }
  public static function getTempDir(): String {
      var args = new ArrayList();
      return getNative().call('get_temp_dir', args);
  }
  public static function getThreadCallerId(): Int {
      var args = new ArrayList();
      return getNative().call('get_thread_caller_id', args);
  }
  public static function getUniqueId(): String {
      var args = new ArrayList();
      return getNative().call('get_unique_id', args);
  }
  public static function getUserDataDir(): String {
      var args = new ArrayList();
      return getNative().call('get_user_data_dir', args);
  }
  public static function getVersion(): String {
      var args = new ArrayList();
      return getNative().call('get_version', args);
  }
  public static function getVersionAlias(): String {
      var args = new ArrayList();
      return getNative().call('get_version_alias', args);
  }
  public static function getVideoAdapterDriverInfo(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_video_adapter_driver_info', args);
  }
  public static function hasEnvironment(variable: String): Bool {
      var args = new ArrayList();
      args.append(variable);
      return getNative().call('has_environment', args);
  }
  public static function hasFeature(tagName: String): Bool {
      var args = new ArrayList();
      args.append(tagName);
      return getNative().call('has_feature', args);
  }
  public static function isDebugBuild(): Bool {
      var args = new ArrayList();
      return getNative().call('is_debug_build', args);
  }
  public static function isKeycodeUnicode(code: Int): Bool {
      var args = new ArrayList();
      args.append(code);
      return getNative().call('is_keycode_unicode', args);
  }
  public static function isProcessRunning(pid: Int): Bool {
      var args = new ArrayList();
      args.append(pid);
      return getNative().call('is_process_running', args);
  }
  public static function isRestartOnExitSet(): Bool {
      var args = new ArrayList();
      return getNative().call('is_restart_on_exit_set', args);
  }
  public static function isSandboxed(): Bool {
      var args = new ArrayList();
      return getNative().call('is_sandboxed', args);
  }
  public static function isStdoutVerbose(): Bool {
      var args = new ArrayList();
      return getNative().call('is_stdout_verbose', args);
  }
  public static function isUserfsPersistent(): Bool {
      var args = new ArrayList();
      return getNative().call('is_userfs_persistent', args);
  }
  public static function kill(pid: Int): Int {
      var args = new ArrayList();
      args.append(pid);
      return getNative().call('kill', args);
  }
  public static function moveToTrash(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return getNative().call('move_to_trash', args);
  }
  public static function openMidiInputs(): Void {
      var args = new ArrayList();
      getNative().call('open_midi_inputs', args);
  }
  public static function openWithProgram(programPath: String, paths: TypedArray<String>): Int {
      var args = new ArrayList();
      args.append(programPath);
      args.append(paths);
      return getNative().call('open_with_program', args);
  }
  public static function readBufferFromStdin(?bufferSize: Int): ByteArray {
      var args = new ArrayList();
      if (bufferSize != null) {
          args.append(bufferSize);
      }
      return getNative().call('read_buffer_from_stdin', args);
  }
  public static function readStringFromStdin(?bufferSize: Int): String {
      var args = new ArrayList();
      if (bufferSize != null) {
          args.append(bufferSize);
      }
      return getNative().call('read_string_from_stdin', args);
  }
  public static function removeLogger(logger: Variant): Void {
      var args = new ArrayList();
      args.append(logger);
      getNative().call('remove_logger', args);
  }
  public static function requestPermission(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return getNative().call('request_permission', args);
  }
  public static function requestPermissions(): Bool {
      var args = new ArrayList();
      return getNative().call('request_permissions', args);
  }
  public static function revokeGrantedPermissions(): Void {
      var args = new ArrayList();
      getNative().call('revoke_granted_permissions', args);
  }
  public static function setEnvironment(variable: String, value: String): Void {
      var args = new ArrayList();
      args.append(variable);
      args.append(value);
      getNative().call('set_environment', args);
  }
  public static function setRestartOnExit(restart: Bool, ?arguments: TypedArray<String>): Void {
      var args = new ArrayList();
      args.append(restart);
      if (arguments != null) {
          args.append(arguments);
      }
      getNative().call('set_restart_on_exit', args);
  }
  public static function setThreadName(name: String): Int {
      var args = new ArrayList();
      args.append(name);
      return getNative().call('set_thread_name', args);
  }
  public static function setUseFileAccessSaveAndSwap(enabled: Bool): Void {
      var args = new ArrayList();
      args.append(enabled);
      getNative().call('set_use_file_access_save_and_swap', args);
  }
  public static function shellOpen(uri: String): Int {
      var args = new ArrayList();
      args.append(uri);
      return getNative().call('shell_open', args);
  }
  public static function shellShowInFileManager(fileOrDirPath: String, ?openFolder: Bool): Int {
      var args = new ArrayList();
      args.append(fileOrDirPath);
      if (openFolder != null) {
          args.append(openFolder);
      }
      return getNative().call('shell_show_in_file_manager', args);
  }
  public static function unsetEnvironment(variable: String): Void {
      var args = new ArrayList();
      args.append(variable);
      getNative().call('unset_environment', args);
  }
}
