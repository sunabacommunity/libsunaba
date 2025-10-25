package sunaba;

enum abstract AccessibilityAction(Int) from Int to Int {
	var click = cast 0;
	var focus = cast 1;
	var blur = cast 2;
	var collapse = cast 3;
	var expand = cast 4;
	var decrement = cast 5;
	var increment = cast 6;
	var hideTooltip = cast 7;
	var showTooltip = cast 8;
	var setTextSelection = cast 9;
	var replaceSelectedText = cast 10;
	var scrollBackward = cast 11;
	var scrollDown = cast 12;
	var scrollForward = cast 13;
	var scrollLeft = cast 14;
	var scrollRight = cast 15;
	var scrollUp = cast 16;
	var scrollIntoView = cast 17;
	var scrollToPoint = cast 18;
	var setScrollOffset = cast 19;
	var setValue = cast 20;
	var showContextMenu = cast 21;
	var custom = cast 22;
	public static var values = [click, focus, blur, collapse, expand, decrement, increment, hideTooltip, showTooltip, setTextSelection, replaceSelectedText, scrollBackward, scrollDown, scrollForward, scrollLeft, scrollRight, scrollUp, scrollIntoView, scrollToPoint, setScrollOffset, setValue, showContextMenu, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "click": cast 0;
			case "focus": cast 1;
			case "blur": cast 2;
			case "collapse": cast 3;
			case "expand": cast 4;
			case "decrement": cast 5;
			case "increment": cast 6;
			case "hideTooltip": cast 7;
			case "showTooltip": cast 8;
			case "setTextSelection": cast 9;
			case "replaceSelectedText": cast 10;
			case "scrollBackward": cast 11;
			case "scrollDown": cast 12;
			case "scrollForward": cast 13;
			case "scrollLeft": cast 14;
			case "scrollRight": cast 15;
			case "scrollUp": cast 16;
			case "scrollIntoView": cast 17;
			case "scrollToPoint": cast 18;
			case "setScrollOffset": cast 19;
			case "setValue": cast 20;
			case "showContextMenu": cast 21;
			case "custom": cast 22;
			case _: null;
		}
	}
}
