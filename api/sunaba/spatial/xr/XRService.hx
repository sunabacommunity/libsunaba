package sunaba.spatial.xr;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Dictionary;

class XRService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('XRService');
        }
        return _native;
    }

    public static var cameraLockedToOrigin(get, set): Bool;
    static function get_cameraLockedToOrigin(): Bool {
        return getNative().get('camera_locked_to_origin');
    }
    static function set_cameraLockedToOrigin(value: Bool): Bool {
      getNative().set('camera_locked_to_origin', value);
        return value;
    }
    public static var worldScale(get, set): Float;
    static function get_worldScale(): Float {
        return getNative().get('world_scale');
    }
    static function set_worldScale(value: Float): Float {
      getNative().set('world_scale', value);
        return value;
    }

	private static var _interfaceAdded: Signal;
	public static var interfaceAdded(get, default): Signal;
	static function get_interfaceAdded(): Signal {
	    if (_interfaceAdded == null) {
	        _interfaceAdded = Signal.createFromObject(getNative(), 'interface_added');
	    }
	    return _interfaceAdded;
	}
	private static var _interfaceRemoved: Signal;
	public static var interfaceRemoved(get, default): Signal;
	static function get_interfaceRemoved(): Signal {
	    if (_interfaceRemoved == null) {
	        _interfaceRemoved = Signal.createFromObject(getNative(), 'interface_removed');
	    }
	    return _interfaceRemoved;
	}
	private static var _referenceFrameChanged: Signal;
	public static var referenceFrameChanged(get, default): Signal;
	static function get_referenceFrameChanged(): Signal {
	    if (_referenceFrameChanged == null) {
	        _referenceFrameChanged = Signal.createFromObject(getNative(), 'reference_frame_changed');
	    }
	    return _referenceFrameChanged;
	}
	private static var _trackerAdded: Signal;
	public static var trackerAdded(get, default): Signal;
	static function get_trackerAdded(): Signal {
	    if (_trackerAdded == null) {
	        _trackerAdded = Signal.createFromObject(getNative(), 'tracker_added');
	    }
	    return _trackerAdded;
	}
	private static var _trackerRemoved: Signal;
	public static var trackerRemoved(get, default): Signal;
	static function get_trackerRemoved(): Signal {
	    if (_trackerRemoved == null) {
	        _trackerRemoved = Signal.createFromObject(getNative(), 'tracker_removed');
	    }
	    return _trackerRemoved;
	}
	private static var _trackerUpdated: Signal;
	public static var trackerUpdated(get, default): Signal;
	static function get_trackerUpdated(): Signal {
	    if (_trackerUpdated == null) {
	        _trackerUpdated = Signal.createFromObject(getNative(), 'tracker_updated');
	    }
	    return _trackerUpdated;
	}

  public function addInterface(pInterface: Variant): Void {
      var args = new ArrayList();
      args.append(pInterface);
      getNative().call('add_interface', args);
  }
  public function addTracker(tracker: Variant): Void {
      var args = new ArrayList();
      args.append(tracker);
      getNative().call('add_tracker', args);
  }
  public function centerOnHmd(rotationMode: Int, keepHeight: Bool): Void {
      var args = new ArrayList();
      args.append(rotationMode);
      args.append(keepHeight);
      getNative().call('center_on_hmd', args);
  }
  public function clearReferenceFrame(): Void {
      var args = new ArrayList();
      getNative().call('clear_reference_frame', args);
  }
  public function getInterfaceCount(): Int {
      var args = new ArrayList();
      return getNative().call('get_interface_count', args);
  }
  public function getTrackers(trackerTypes: Int): Dictionary {
      var args = new ArrayList();
      args.append(trackerTypes);
      return getNative().call('get_trackers', args);
  }
  public function removeInterface(pInterface: Variant): Void {
      var args = new ArrayList();
      args.append(pInterface);
      getNative().call('remove_interface', args);
  }
  public function removeTracker(tracker: Variant): Void {
      var args = new ArrayList();
      args.append(tracker);
      getNative().call('remove_tracker', args);
  }
}
