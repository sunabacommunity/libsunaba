package .Users.Shared.libsunaba.xmlgdapi.service.base;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class CameraService extends BaseClass {
     private static var _native: NativeObject
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('CameraService');
        }
        return _native;
    }

    public static var monitoringFeeds(get, set): Bool;
    static function get_monitoringFeeds(): Bool {
        return getNative().get('monitoring_feeds');
    }
    static function set_monitoringFeeds(value: Bool): Bool {
      getNative().set('monitoring_feeds', value);
        return value;
    }

	private static var _cameraFeedAdded: Signal;
	public static var cameraFeedAdded(get, default): Signal;
	static function get_cameraFeedAdded(): Signal {
	    if (_cameraFeedAdded == null) {
	        _cameraFeedAdded = Signal.createFromObject(getNative(), 'camera_feed_added');
	    }
	    return _cameraFeedAdded;
	}
	private static var _cameraFeedRemoved: Signal;
	public static var cameraFeedRemoved(get, default): Signal;
	static function get_cameraFeedRemoved(): Signal {
	    if (_cameraFeedRemoved == null) {
	        _cameraFeedRemoved = Signal.createFromObject(getNative(), 'camera_feed_removed');
	    }
	    return _cameraFeedRemoved;
	}
	private static var _cameraFeedsUpdated: Signal;
	public static var cameraFeedsUpdated(get, default): Signal;
	static function get_cameraFeedsUpdated(): Signal {
	    if (_cameraFeedsUpdated == null) {
	        _cameraFeedsUpdated = Signal.createFromObject(getNative(), 'camera_feeds_updated');
	    }
	    return _cameraFeedsUpdated;
	}

  public function addFeed(feed: Variant): Void {
      var args = new ArrayList();
      args.append(feed);
      getNative().call('add_feed', args);
  }
  public function getFeedCount(): Int {
      var args = new ArrayList();
      return getNative().call('get_feed_count', args);
  }
  public function removeFeed(feed: Variant): Void {
      var args = new ArrayList();
      args.append(feed);
      getNative().call('remove_feed', args);
  }
}
