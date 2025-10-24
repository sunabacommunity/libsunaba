package newhaven.ui;
import newhaven.io.IoInterface;
import newhaven.core.native.NativeReference;
import newhaven.io.IoManager;
import newhaven.core.ArrayList;
import newhaven.core.native.ScriptType;
import Type;
import newhaven.core.Vector2;
import newhaven.core.Vector3;
import newhaven.core.Vector4;
import newhaven.core.Vector2i;
import newhaven.core.Vector3i;
import newhaven.core.Vector4i;
import newhaven.core.Color;
import newhaven.core.Variant;
import newhaven.desktop.PopupMenu;

class Widget extends Control {
	public var io: IoInterface;
	public var keepChildren: Bool = false;

	public function new(?_io: IoInterface) {
		super();
		initializeProxy();
		var ioNative: NativeReference = untyped __lua__("_G.__ioManager");
		io = new IoManager(ioNative);
		if (_io != null)
			io = _io;

		var defaultThemes = new NativeReference("res://Engine/DefaultThemes.gd", new ArrayList(), ScriptType.gdscript);
		var defaultThemeNative = defaultThemes.call("get_system_theme", new ArrayList());
		theme = new Theme(defaultThemeNative);
		init();
	}

	public function init() {

	}

	public function load(path: String): Void {
		var file = io.loadText(path);
		if (file != null && file.length > 0) {
			try {
				//
			}
			catch (e: Dynamic) {
				Sys.println("Error parsing markup: " + e);
				throw e;
			}
		}
		else {
			Sys.println("Failed to load file: " + path);
			throw "Failed to load file: " + path;
		}
	}

	public function parseMarkup(markup: String): Void {
		var xml = Xml.parse(markup);
		instantiate(xml);
	}

	private function instantiate(xml: Xml): Void {
		if (!keepChildren) {
			for (i in 0...getChildCount()) {
				var child = getChild(i);
				if (child != null) {
					if (child.name == "Proxy")
						continue;
					child.queueFree();
				}
			}
		}

		var firstElement = xml.firstElement();
		if (!firstElement != null) {
			if (firstElement.nodeName == "nxml") {
				var fullScreenAtt = firstElement.get("fullscreen");
				if (fullScreenAtt == "true") {
					setAnchorsAndOffsetsPreset(LayoutPreset.fullRect, LayoutPresetMode.keepSize, 0);
					sizeFlagsHorizontal = SizeFlags.fill;
					sizeFlagsVertical = SizeFlags.fill;
				}
				else {
					var anchorTopAtt = firstElement.get("anchorTop");
					if (anchorTopAtt != null) {
						anchorTop = Std.parseFloat(anchorTopAtt);
					}
					var anchorLeftAtt = firstElement.get("anchorLeft");
					if (anchorLeftAtt != null) {
						anchorLeft = Std.parseFloat(anchorLeftAtt);
					}
					var anchorBottomAtt = firstElement.get("anchorBottom");
					if (anchorBottomAtt != null) {
						anchorBottom = Std.parseFloat(anchorBottomAtt);
					}
					var anchorRightAtt = firstElement.get("anchorRight");
					if (anchorRightAtt != null) {
						anchorRight = Std.parseFloat(anchorRightAtt);
					}

					var offsetTopAtt = firstElement.get("offsetTop");
					if (offsetTopAtt != null) {
						offsetTop = Std.parseFloat(offsetTopAtt);
					}
					var offsetLeftAtt = firstElement.get("offsetLeft");
					if (offsetLeftAtt != null) {
						offsetLeft = Std.parseFloat(offsetLeftAtt);
					}
					var offsetBottomAtt = firstElement.get("offsetBottom");
					if (offsetBottomAtt != null) {
						offsetBottom = Std.parseFloat(offsetBottomAtt);
					}
					var offsetRightAtt = firstElement.get("offsetRight");
					if (offsetRightAtt != null) {
						offsetRight = Std.parseFloat(offsetRightAtt);
					}
				}

				var nameAtt = firstElement.get("name");
				if (nameAtt != null) {
					name = nameAtt;
				}

				var children = firstElement.elements();
				for (child in children) {
					if (child.nodeName == "head") {
						for (headCHild in child.elements()) {
							// stub
						}
					}
					else if (child.nodeName == "body") {
						constructNodes(child.elements());
					}
				}
			}
			else {
				throw "Invalid root element: " + firstElement.nodeName;
			}
		}
	}

	private function constructNodes(elements: Iterator<Xml>): Void {
		for (element in elements) {
			var node: Node = construct(element);
			if (node != null) {
				if (node.native != null) {
					if (!node.native.isNull()) {
						addChild(node);
						continue;
					}
				}
			}
			throw "Unknown node: " + element.nodeName;
		}
	}

	private function construct(xml: Xml): Node {
		var className = xml.nodeName;
		var classType = Type.resolveClass(className);
		if (classType != null) {
			var instance = Type.createEmptyInstance(classType);
			if (instance != null) {
				var node: Node = cast instance;
				setObjectValues(node, xml);
				if (node.native.isClass("PopupMenu")) {
					constructMenu(cast instance, xml);
				}
				else if (node.native.isClass("MenuButton")) {
					var menuButton: MenuButton = cast instance;
					constructMenu(menuButton.getPopup(), xml);
				}
				else {
					constructChildren(node, xml);
				}
				var _name = xml.get("name");
				if (_name != null) {
					node.name = _name;
				}
				return node;
			}
		}

		throw "Unknown node class: " + className;
		return null;
	}

	private function setObjectValues(node: Node, xml: Xml) {
		var attributes = xml.attributes();
		for (attribute in attributes) {
			var attributeName = attribute;
			var attributeValue = xml.get(attributeName);
			if (attributeName == name) {
				node.name = attributeValue;
			}
			else if (attributeName == "fullRect") {
				if (node.native.isClass("Control")) {
					var control: Control = cast node;
					if (attributeValue == "true") {
						control.setAnchorsPreset(LayoutPreset.fullRect, true);
					}
				}
			}
			else {
				if (Reflect.hasField(node, attributeName)) {
					var currentValue = Reflect.field(node, attributeName);
					if (Std.isOfType(currentValue, Bool)) {
						var b : Bool = false;
						if (attributeValue == "true") {
							b = true;
						}
						else if (attributeValue == "false") {
							b = false;
						}
						else {
							throw "Invalid boolean value for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
						}
						Reflect.setProperty(node, attributeName, b);
					}
					else if (Std.isOfType(currentValue, Int)) {
						var attrArr = attributeValue.split(".");
						var value = attrArr[attrArr.length - 1];
						attrArr.resize(attrArr.length - 1);
						var ename = attrArr[attrArr.length - 1];
						var enumName = attrArr.join(".");
						if (enumName != "") {
							var enum_ = Type.resolveEnum(enumName);
							if (enum_ != null) {
								var enumValue: Int = Reflect.field(enum_, value);
								if (enumValue != null) {
									Reflect.setProperty(node, attributeName, enumValue);
								}
								else {
									throw "Invalid enum value '" + value + "' for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
								}
							}
							else {
								var class_ = Type.resolveClass(enumName);
								if (class_ != null) {
									var enumTableName = "__";
									enumTableName += StringTools.replace(enumName, ".", "__") +  "_" + ename + "_Impl_";

									var enumTable = untyped __lua__("_G[enumTableName]");
									if (enumTable != null) {
										var enumValue: Int = cast field(enumTable, value);
										if (enumValue != null) {
											Reflect.setProperty(node, attributeName, enumValue);
										}
										else {
											throw "Invalid enum value '" + value + "' for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
										}
									}
									else {
										throw "Unkown enum: " + enumName;
									}
								}
								else {
									var enumValue : Int = cast field(class_, value);
									if (enumValue != null) {
										Reflect.setProperty(node, attributeName, enumValue);
									}
									else {
										throw "Invalid enum value '" + value + "' for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
									}
								}
							}
						}
						else {
							Reflect.setProperty(node, attributeName, Std.parseInt(attributeValue));
						}
					}
					else if (Std.isOfType(currentValue, Float)) {
						Reflect.setProperty(node, attributeValue, Std.parseFloat(attributeValue));
					}
					else if (Std.isOfType(currentValue, String)) {
						Reflect.setProperty(node, attributeName, attributeValue);
					}
					else if (getUsertypeName(currentValue) == "sol.godot::Vector2") {
						var xy = attributeValue.split(", ");
						if (xy.length == 2) {
							var x = Std.parseFloat(xy[0]);
							var y = Std.parseFloat(xy[1]);
							Reflect.setProperty(node, attributeName, new Vector2(x, y));
						}
						else {
							xy = attributeValue.split(",");
							if (xy.length == 2) {
								var x = Std.parseFloat(xy[0]);
								var y = Std.parseFloat(xy[1]);
								Reflect.setProperty(node, attributeName, new Vector2(x, y));
							}
							else {
								throw "Invalid Vector2 value for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
							}
						}
					}
					else if (getUsertypeName(currentValue) == "sol.godot::Vector3") {
						var xyz = attributeValue.split(", ");
						if (xyz.length == 3) {
							var x = Std.parseFloat(xyz[0]);
							var y = Std.parseFloat(xyz[1]);
							var z = Std.parseFloat(xyz[2]);
							Reflect.setProperty(node, attributeName, new Vector3(x, y, z));
						}
						else {
							xyz = attributeValue.split(",");
							if (xyz.length == 3) {
								var x = Std.parseFloat(xyz[0]);
								var y = Std.parseFloat(xyz[1]);
								var z = Std.parseFloat(xyz[2]);
								Reflect.setProperty(node, attributeName, new Vector3(x, y, z));
							}
							else {
								throw "Invalid Vector2 value for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
							}
						}
					}
					else if (getUsertypeName(currentValue) == "sol.godot::Vector4") {
						var xyzw = attributeValue.split(", ");
						if (xyzw.length == 4) {
							var x = Std.parseFloat(xyzw[0]);
							var y = Std.parseFloat(xyzw[1]);
							var z = Std.parseFloat(xyzw[2]);
							var w = Std.parseFloat(xyzw[4]);
							Reflect.setProperty(node, attributeName, new Vector4(x, y, z, w));
						}
						else {
							var xyzw = attributeValue.split(",");
							if (xyzw.length == 4) {
								var x = Std.parseFloat(xyzw[0]);
								var y = Std.parseFloat(xyzw[1]);
								var z = Std.parseFloat(xyzw[2]);
								var w = Std.parseFloat(xyzw[4]);
								Reflect.setProperty(node, attributeName, new Vector4(x, y, z, w));
							}
							else {
								throw "Invalid Vector4 value for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
							}
						}
					}
					else if (getUsertypeName(currentValue) == "sol.godot::Vector2i") {
						var xy = attributeValue.split(", ");
						if (xy.length == 2) {
							var x = Std.parseInt(xy[0]);
							var y = Std.parseInt(xy[1]);
							Reflect.setProperty(node, attributeName, new Vector2i(x, y));
						}
						else {
							xy = attributeValue.split(",");
							if (xy.length == 2) {
								var x = Std.parseInt(xy[0]);
								var y = Std.parseInt(xy[1]);
								Reflect.setProperty(node, attributeName, new Vector2i(x, y));
							}
							else {
								throw "Invalid Vector2 value for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
							}
						}
					}
					else if (getUsertypeName(currentValue) == "sol.godot::Vector3i") {
						var xyz = attributeValue.split(", ");
						if (xyz.length == 3) {
							var x = Std.parseInt(xyz[0]);
							var y = Std.parseInt(xyz[1]);
							var z = Std.parseInt(xyz[2]);
							Reflect.setProperty(node, attributeName, new Vector3i(x, y, z));
						}
						else {
							xyz = attributeValue.split(",");
							if (xyz.length == 3) {
								var x = Std.parseInt(xyz[0]);
								var y = Std.parseInt(xyz[1]);
								var z = Std.parseInt(xyz[2]);
								Reflect.setProperty(node, attributeName, new Vector3i(x, y, z));
							}
							else {
								throw "Invalid Vector2 value for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
							}
						}
					}
					else if (getUsertypeName(currentValue) == "sol.godot::Vector4i") {
						var xyzw = attributeValue.split(", ");
						if (xyzw.length == 4) {
							var x = Std.parseInt(xyzw[0]);
							var y = Std.parseInt(xyzw[1]);
							var z = Std.parseInt(xyzw[2]);
							var w = Std.parseInt(xyzw[4]);
							Reflect.setProperty(node, attributeName, new Vector4i(x, y, z, w));
						}
						else {
							var xyzw = attributeValue.split(",");
							if (xyzw.length == 4) {
								var x = Std.parseInt(xyzw[0]);
								var y = Std.parseInt(xyzw[1]);
								var z = Std.parseInt(xyzw[2]);
								var w = Std.parseInt(xyzw[4]);
								Reflect.setProperty(node, attributeName, new Vector4i(x, y, z, w));
							}
							else {
								throw "Invalid Vector4 value for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
							}
						}
					}
					else if (getUsertypeName(currentValue) == "sol.godot::Color") {
						var color = Color.html(attributeValue);
						if (color != null) {
							Reflect.setProperty(node, attributeName, color);
						}
						else {
							throw "Invalid Color value for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
						}
					}
					else if (Std.isOfType(currentValue, Texture2D) || Std.isOfType(currentValue, Texture)) {
						if (io.fileExists(attributeValue)) {
							var image = new Image();
							var imageBytes = io.loadBytes(attributeValue);
							if (StringTools.endsWith(attributeValue, ".bmp")) {
								image.loadBmpFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".dds")) {
								image.loadDdsFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".jpg")
								|| StringTools.endsWith(attributeValue, ".jpeg")) {
								image.loadJpgFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".ktx")) {
								image.loadKtxFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".png")) {
								image.loadPngFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".svg")) {
								image.loadSvgFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".tga")) {
								image.loadTgaFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".webp")) {
								image.loadWebpFromBuffer(imageBytes);
							}
							else {
								throw "Invalid image path '" + attributeValue + "' for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
							}
							var texture = ImageTexture.createFromImage(image);
							if (texture != null) {
								if (texture.native != null) {
									if (!texture.native.isNull()) {
										Reflect.setProperty(node, attributeName, texture);
									}
								}
							}
						}
					}
				}
				else if (Std.isOfType(node, Control)) {
					var control: Control = cast node;
					var snakeCaseName = camelToSnake(attributeName);
					if (control.hasThemeConstant(snakeCaseName)) {
						control.addThemeConstantOverride(snakeCaseName, Variant.fromInt(Std.parseInt(attributeValue)));
						continue;
					}
					else if (control.hasThemeFontSize(snakeCaseName)) {
						// todo, implement font loading
						continue;
					}
					else if (control.hasThemeColor(snakeCaseName)) {
						var color = Color.html(attributeValue);
						if (color != null) {
							control.addThemeColorOverride(snakeCaseName, color);
							continue;
						}
					}
					else if (control.hasThemeIcon(snakeCaseName)) {
						if (io.fileExists(attributeValue)) {
							var image = new Image();
							var imageBytes = io.loadBytes(attributeValue);
							if (StringTools.endsWith(attributeValue, ".bmp")) {
								image.loadBmpFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".dds")) {
								image.loadDdsFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".jpg")
							|| StringTools.endsWith(attributeValue, ".jpeg")) {
								image.loadJpgFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".ktx")) {
								image.loadKtxFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".png")) {
								image.loadPngFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".svg")) {
								image.loadSvgFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".tga")) {
								image.loadTgaFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".webp")) {
								image.loadWebpFromBuffer(imageBytes);
							}
							else {
								throw "Invalid image path '" + attributeValue + "' for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
							}
							var texture = ImageTexture.createFromImage(image);
							if (texture != null) {
								if (texture.native != null) {
									if (!texture.native.isNull()) {
										control.addThemeIconOverride(snakeCaseName, texture);
									}
								}
							}
						}
					}
				}
				else {
					throw "Unsupported type for field '" + attributeName + "' in node '" + Type.getClassName(Type.getClass(node)) + "'";
				}
			}
		}
	}

	private function constructMenu(menu: PopupMenu, xml: Xml) {
		var children = xml.elements();
		for (child in children) {
			if (child.nodeName == "menuItem") {
				var attributes = child.attributes();
				var label = child.get("label");
				var id = menu.itemCount;
				menu.addItem(label, id, 0);
				for (attrib in attributes) {
					var attributeName = attrib;
					var attributeValue = child.get(attrib);
					if (attributeName == "icon") {
						if (io.fileExists(attributeValue)) {
							var image = new Image();
							var imageBytes = io.loadBytes(attributeValue);
							if (StringTools.endsWith(attributeValue, ".bmp")) {
								image.loadBmpFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".dds")) {
								image.loadDdsFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".jpg")
							|| StringTools.endsWith(attributeValue, ".jpeg")) {
								image.loadJpgFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".ktx")) {
								image.loadKtxFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".png")) {
								image.loadPngFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".svg")) {
								image.loadSvgFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".tga")) {
								image.loadTgaFromBuffer(imageBytes);
							}
							else if (StringTools.endsWith(attributeValue, ".webp")) {
								image.loadWebpFromBuffer(imageBytes);
							}
							else {
								throw "Invalid image path '" + attributeValue + "' for field '" + attributeName + "' in child menu node '" + child.nodeName + "'";
							}
							var texture = ImageTexture.createFromImage(image);
							if (texture != null) {
								if (texture.native != null) {
									if (!texture.native.isNull()) {
										menu.setItemIcon(id, texture);
									}
								}
							}
						}
					}
					else if (attributeName == "checkable") {
						var checkable : Bool = false;
						if (attributeValue == "true") {
							checkable = true;
						}
						else if (attributeValue == "false") {
							checkable = false;
						}
						else {
							throw "Invalid boolean value for field '" + attributeName + "' in menuItem";
						}
						menu.setItemAsCheckable(id, checkable);
					}
					else if (attributeName == "radioCheckable") {
						var radioCheckable : Bool = false;
						if (attributeValue == "true") {
							radioCheckable = true;
						}
						else if (attributeValue == "false") {
							radioCheckable = false;
						}
						else {
							throw "Invalid boolean value for field '" + attributeName + "' in menuItem";
						}
						menu.setItemAsRadioCheckable(id, radioCheckable);
					}
					else if (attributeName == "separator") {
						var separator : Bool = false;
						if (attributeValue == "true") {
							separator = true;
						}
						else if (attributeValue == "false") {
							separator = false;
						}
						else {
							throw "Invalid boolean value for field '" + attributeName + "' in menuItem";
						}
						menu.setItemAsSeparator(id, separator);
					}
					else if (attributeName == "checked") {
						var checked : Bool = false;
						if (attributeValue == "true") {
							checked = true;
						}
						else if (attributeValue == "false") {
							checked = false;
						}
						else {
							throw "Invalid boolean value for field '" + attributeName + "' in menuItem";
						}
						menu.setItemChecked(id, checked);
					}
					else if (attributeName == 'disabled') {
						var disabled : Bool = false;
						if (attributeValue == "true") {
							disabled = true;
						}
						else if (attributeValue == "false") {
							disabled = false;
						}
						else {
							throw "Invalid boolean value for field '" + attributeName + "' in menuItem";
						}
						menu.setItemDisabled(id, disabled);
					}
				}
			}
		}
	}

	private function constructChildren(node: Node, xml: Xml) {
		var children = xml.elements();
		for (child in children) {
			var childNode = construct(child);
			if (childNode != null) {
				node.addChild(node);
			}
			else {
				throw "Unknown child node: " + child.nodeName;
			}
		}
	}

	private function getUsertypeName(obj: Any) : String {
		var metatable = untyped __lua__("getmetatable(obj)");
		if (metatable != null) {
			var name : String = untyped __lua__("metatable.__name");
			if (name != null) {
				return name;
			}
		}
		return "";
	}

	private function camelToSnake(input: String): String {
		var result = "";
		for (i in 0...input.length) {
			var c = input.charAt(i);
			if (i > 0 && c >= "A" && c <= "Z") {
				result += "_";
			}
			result += c.toLowerCase();
		}
		return result;
	}

	private function field(obj: Any, field: String): Dynamic {
		if (untyped __lua__("obj[field] ~= nil")) {
			return untyped __lua__("obj[field]");
		}
		return Reflect.field(obj, field);
	}
}
