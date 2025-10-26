package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Dictionary;

class TimeService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('Time');
        }
        return _native;
    }



  public function getDateDictFromSystem(?utc: Bool): Dictionary {
      var args = new ArrayList();
      if (utc != null) {
          args.append(utc);
      }
      return getNative().call('get_date_dict_from_system', args);
  }
  public function getDateDictFromUnixTime(unixTimeVal: Int): Dictionary {
      var args = new ArrayList();
      args.append(unixTimeVal);
      return getNative().call('get_date_dict_from_unix_time', args);
  }
  public function getDateStringFromSystem(?utc: Bool): String {
      var args = new ArrayList();
      if (utc != null) {
          args.append(utc);
      }
      return getNative().call('get_date_string_from_system', args);
  }
  public function getDateStringFromUnixTime(unixTimeVal: Int): String {
      var args = new ArrayList();
      args.append(unixTimeVal);
      return getNative().call('get_date_string_from_unix_time', args);
  }
  public function getDatetimeDictFromDatetimeString(datetime: String, weekday: Bool): Dictionary {
      var args = new ArrayList();
      args.append(datetime);
      args.append(weekday);
      return getNative().call('get_datetime_dict_from_datetime_string', args);
  }
  public function getDatetimeDictFromSystem(?utc: Bool): Dictionary {
      var args = new ArrayList();
      if (utc != null) {
          args.append(utc);
      }
      return getNative().call('get_datetime_dict_from_system', args);
  }
  public function getDatetimeDictFromUnixTime(unixTimeVal: Int): Dictionary {
      var args = new ArrayList();
      args.append(unixTimeVal);
      return getNative().call('get_datetime_dict_from_unix_time', args);
  }
  public function getDatetimeStringFromDatetimeDict(datetime: Dictionary, useSpace: Bool): String {
      var args = new ArrayList();
      args.append(datetime);
      args.append(useSpace);
      return getNative().call('get_datetime_string_from_datetime_dict', args);
  }
  public function getDatetimeStringFromSystem(?utc: Bool, ?useSpace: Bool): String {
      var args = new ArrayList();
      if (utc != null) {
          args.append(utc);
      }
      if (useSpace != null) {
          args.append(useSpace);
      }
      return getNative().call('get_datetime_string_from_system', args);
  }
  public function getDatetimeStringFromUnixTime(unixTimeVal: Int, ?useSpace: Bool): String {
      var args = new ArrayList();
      args.append(unixTimeVal);
      if (useSpace != null) {
          args.append(useSpace);
      }
      return getNative().call('get_datetime_string_from_unix_time', args);
  }
  public function getOffsetStringFromOffsetMinutes(offsetMinutes: Int): String {
      var args = new ArrayList();
      args.append(offsetMinutes);
      return getNative().call('get_offset_string_from_offset_minutes', args);
  }
  public function getTicksMsec(): Int {
      var args = new ArrayList();
      return getNative().call('get_ticks_msec', args);
  }
  public function getTicksUsec(): Int {
      var args = new ArrayList();
      return getNative().call('get_ticks_usec', args);
  }
  public function getTimeDictFromSystem(?utc: Bool): Dictionary {
      var args = new ArrayList();
      if (utc != null) {
          args.append(utc);
      }
      return getNative().call('get_time_dict_from_system', args);
  }
  public function getTimeDictFromUnixTime(unixTimeVal: Int): Dictionary {
      var args = new ArrayList();
      args.append(unixTimeVal);
      return getNative().call('get_time_dict_from_unix_time', args);
  }
  public function getTimeStringFromSystem(?utc: Bool): String {
      var args = new ArrayList();
      if (utc != null) {
          args.append(utc);
      }
      return getNative().call('get_time_string_from_system', args);
  }
  public function getTimeStringFromUnixTime(unixTimeVal: Int): String {
      var args = new ArrayList();
      args.append(unixTimeVal);
      return getNative().call('get_time_string_from_unix_time', args);
  }
  public function getTimeZoneFromSystem(): Dictionary {
      var args = new ArrayList();
      return getNative().call('get_time_zone_from_system', args);
  }
  public function getUnixTimeFromDatetimeDict(datetime: Dictionary): Int {
      var args = new ArrayList();
      args.append(datetime);
      return getNative().call('get_unix_time_from_datetime_dict', args);
  }
  public function getUnixTimeFromDatetimeString(datetime: String): Int {
      var args = new ArrayList();
      args.append(datetime);
      return getNative().call('get_unix_time_from_datetime_string', args);
  }
  public function getUnixTimeFromSystem(): Float {
      var args = new ArrayList();
      return getNative().call('get_unix_time_from_system', args);
  }
}
