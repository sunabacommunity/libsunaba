package sunaba;

enum abstract MidiMessage(Int) from Int to Int {
	var none = cast 0;
	var noteOff = cast 8;
	var noteOn = cast 9;
	var aftertouch = cast 10;
	var controlChange = cast 11;
	var programChange = cast 12;
	var channelPressure = cast 13;
	var pitchBend = cast 14;
	var systemExclusive = cast 240;
	var quarterFrame = cast 241;
	var songPositionPointer = cast 242;
	var songSelect = cast 243;
	var tuneRequest = cast 246;
	var timingClock = cast 248;
	var start = cast 250;
	var _continue = cast 251;
	var stop = cast 252;
	var activeSensing = cast 254;
	var systemReset = cast 255;
	public static var values = [none, noteOff, noteOn, aftertouch, controlChange, programChange, channelPressure, pitchBend, systemExclusive, quarterFrame, songPositionPointer, songSelect, tuneRequest, timingClock, start, _continue, stop, activeSensing, systemReset];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "noteOff": cast 8;
			case "noteOn": cast 9;
			case "aftertouch": cast 10;
			case "controlChange": cast 11;
			case "programChange": cast 12;
			case "channelPressure": cast 13;
			case "pitchBend": cast 14;
			case "systemExclusive": cast 240;
			case "quarterFrame": cast 241;
			case "songPositionPointer": cast 242;
			case "songSelect": cast 243;
			case "tuneRequest": cast 246;
			case "timingClock": cast 248;
			case "start": cast 250;
			case "_continue": cast 251;
			case "stop": cast 252;
			case "activeSensing": cast 254;
			case "systemReset": cast 255;
			case _: null;
		}
	}
}
