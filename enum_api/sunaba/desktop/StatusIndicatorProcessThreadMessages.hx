package sunaba.desktop;

enum abstract StatusIndicatorProcessThreadMessages(Int) from Int to Int {
	var messages = cast 1;
	var messagesPhysics = cast 2;
	var messagesAll = cast 3;
	public static var values = [messages, messagesPhysics, messagesAll];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "messages": cast 1;
			case "messagesPhysics": cast 2;
			case "messagesAll": cast 3;
			case _: null;
		}
	}
}
