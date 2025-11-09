package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class PerformanceService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('Performance');
        }
        return _native;
    }



  public static function addCustomMonitor(id: String, callable: Variant, ?arguments: ArrayList): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(callable);
      if (arguments != null) {
          args.append(arguments);
      }
      getNative().call('add_custom_monitor', args);
  }
  public static function getCustomMonitor(id: String): Variant {
      var args = new ArrayList();
      args.append(id);
      return getNative().call('get_custom_monitor', args);
  }
  public static function getMonitor(monitor: Int): Float {
      var args = new ArrayList();
      args.append(monitor);
      return getNative().call('get_monitor', args);
  }
  public static function getMonitorModificationTime(): Int {
      var args = new ArrayList();
      return getNative().call('get_monitor_modification_time', args);
  }
  public static function hasCustomMonitor(id: String): Bool {
      var args = new ArrayList();
      args.append(id);
      return getNative().call('has_custom_monitor', args);
  }
  public static function removeCustomMonitor(id: String): Void {
      var args = new ArrayList();
      args.append(id);
      getNative().call('remove_custom_monitor', args);
  }
}
