using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using Godot;

namespace Sunaba.Bindgen;

public class ClassBuilder
{
    public List<String> ClassNames = new();
    public Dictionary<string, string> BaseClasses = new();
    public List<string> ClassMethods = new();
    public List<string> ClassMembers = new();

    public List<String> reservedWords = new List<string>
    {
        "abstract",
        "break",
        "case",
        "catch",
        "class",
        "continue",
        "default",
        "do",
        "dynamic",
        "else",
        "enum",
        "extends",
        "extern",
        "false",
        "for",
        "function",
        "if",
        "implement",
        "import",
        "in",
        "inline",
        "interface",
        "macro",
        "new",
        "null",
        "override",
        "package",
        "private",
        "public",
        "return",
        "static",
        "super",
        "switch",
        "this",
        "throw",
        "true",
        "try",
        "typedef",
        "untyped",
        "using",
        "var",
        "while"
    };

    public ClassBuilder() {}

    private string outputDir;

    private List<string> ResourceClasses = new();

    public List<string> GetFiles(string path)
    {
        List<string> files = new List<string>();

        foreach (var file in Directory.GetFiles(path))
        {
            if (file.EndsWith(".xml"))
                files.Add(file);
        }

        foreach (var dir in Directory.GetDirectories(path))
        {
            var moreFiles = GetFiles(dir);
            foreach (var f in moreFiles)
            {
                files.Add(f);
            }
        }

        return files;
    }

    private List<string> xmlFiles;

    private Dictionary<string, string> packageLocations = new();

    public void Build()
    {
        outputDir = Path.GetFullPath("../api/sunaba/");
        string resourceApiPath = Path.GetFullPath("../xmlgdapi/resource/");
        string nodeApiPath = Path.GetFullPath("../xmlgdapi/elements/");
        string otherApiPath = Path.GetFullPath("../xmlgdapi/other/");

        xmlFiles = GetFiles(resourceApiPath);
        xmlFiles.AddRange(GetFiles(nodeApiPath));
        xmlFiles.AddRange(GetFiles(otherApiPath));
        ClassNames.Add("Reference");
        BaseClasses.Add("Reference", "Object");
        foreach (var xmlFile in xmlFiles){
            var doc = XDocument.Load(xmlFile);
            var className = doc.Root?.Attribute("name")?.Value;

            if (!string.IsNullOrEmpty(className) && className != "float" && className != "String" && className != "int" && className != "@GlobalScope" && className != "bool" && className != "Array" && className != "Dictionary" && className != "Vector3" && className != "Vector2" && className != "Quaternion" && className != "Basis" && className != "Vector2i" && className != "Vector3i" && className != "Vector4" && className != "Vector4i")
            {
                var currentXmlPath = resourceApiPath;
                if (xmlFile.Contains(nodeApiPath))
                    currentXmlPath = nodeApiPath;
                else if (xmlFile.Contains(otherApiPath))
                    currentXmlPath = otherApiPath;

                if (ClassNames.Contains(className)) continue;
                ClassNames.Add(className);
                var xmlDir = xmlFile.GetBaseDir();
                var apiPath = xmlDir.Replace(currentXmlPath, "sunaba/");
                var packageName = apiPath.Replace("\\", "/").Replace("/", ".");
                if (packageName.EndsWith("."))
                {
                    packageName = packageName.Substring(0, packageName.Length - 1);
                }
                if (!packageLocations.ContainsKey(className))
                    packageLocations.Add(className, packageName);
                var inheritedClassName = doc.Root?.Attribute("inherits")?.Value;
                if (inheritedClassName == "RefCounted")
                {
                    inheritedClassName = "Reference";
                }

                // dumb hack
                if (currentXmlPath == resourceApiPath)
                    ResourceClasses.Add(className);

                BaseClasses.Add(className, inheritedClassName);
            }
        }
        foreach (var xmlFile in xmlFiles){
            var doc = XDocument.Load(xmlFile);
            var className = doc.Root?.Attribute("name")?.Value;

            if (!string.IsNullOrEmpty(className))
            {
                Console.WriteLine($"Processing class: {className}");
                var haxeClass = GenerateClass(doc, className);
                var packagePath = packageLocations[className];
                if (packagePath.Contains("sunaba.base"))
                {
	                File.WriteAllText(Path.Combine(outputDir, $"{className}.hx"), haxeClass.Replace("sunaba.base", "sunaba"));
	                continue;
                }

                if (Directory.Exists(packagePath.Replace("sunaba.", "").Replace(".", "/")))
                {
	                Directory.CreateDirectory(packagePath.Replace("sunaba.", "").Replace(".", "/"));
                }
                File.WriteAllText(Path.Combine(outputDir, Path.Combine(packagePath.Replace("sunaba.", "").Replace(".", "/").Replace("base/", "sunaba/"), $"{className}.hx")), haxeClass.Replace("sunaba.base", "sunaba"));
            }
        }
    }

    public string GenerateClass(XDocument doc, string className)
    {
        var sb = new StringBuilder();

        sb.AppendLine("package " + packageLocations[className] + ";");
        sb.AppendLine();

        var importSb = new StringBuilder();
        List<string> importList = new();
        importList.Add("sunaba.core.native.NativeReference");
        importList.Add("sunaba.core.native.NativeObject");
        importList.Add("sunaba.core.Variant");
        if (packageLocations[className] != "sunaba.core")
        {
            importList.Add("sunaba.core.Reference");
            importList.Add("sunaba.core.Object");
        }


        var inheritedClassName = doc.Root?.Attribute("inherits")?.Value;
        if (inheritedClassName == "RefCounted")
        {
            inheritedClassName = "Reference";
        }
        if (packageLocations.ContainsKey(inheritedClassName))
        {
            if (packageLocations[inheritedClassName] != packageLocations[className])
            {
                importList.Add(packageLocations[inheritedClassName] + "." + inheritedClassName);
            }
        }

        var classSb = new StringBuilder();
        classSb.AppendLine("class " + className + " extends " + inheritedClassName + " {");

        classSb.AppendLine($"    public function new(?_native: {GetNativeObject(className)}) {'{'}");
        classSb.AppendLine("        super();");
        classSb.AppendLine("        if (_native == null) {");
        classSb.AppendLine($"            _native = new {GetNativeObject(className)}('" + className + "');");
        classSb.AppendLine("        }");
        classSb.AppendLine("        native = _native;");
        classSb.AppendLine("    }");

        if (className == "Node")
        {
            importList.Add("sunaba.input.InputEvent");
            AppendNodeBoilerplate(classSb);
        }
        classSb.AppendLine();
        BuildMembers(classSb, doc, className, importList);
        classSb.AppendLine();
        BuildSignals(classSb, doc, className, importList);
        classSb.AppendLine();
        BuildMethods(classSb, doc, className, importList);

        foreach (var _import in importList)
        {
            var import = _import;
            if (import == "sunaba.core.String") continue;
            if (import == "sunaba.core.Int") continue;
            if (import == "sunaba.core.Float") continue;
            if (import == "sunaba.core.Bool") continue;
            if (import == "sunaba.core.Void") continue;
            if (import.Contains("TypedArray"))
            {
                var importstrar = import.Split("<");
                var subtype = importstrar[1];
                subtype = subtype.Substring(0, subtype.Length - 1);
                if   ( subtype != "String"
                    && subtype != "Int"
                    && subtype != "Float"
                    && subtype != "Bool"
                    && subtype != "Void")
                    if (!importList.Contains(subtype))
                        importSb.AppendLine($"import sunaba.core.{subtype};");
                import = "sunaba.core.TypedArray";
                if (importSb.ToString().Contains(import))
                    continue;
            }
            if (import.Contains(packageLocations[className]))
                continue;
            importSb.AppendLine($"import {import};");
        }
        importSb.AppendLine();
        sb.Append(importSb);
        classSb.AppendLine("}");
        sb.Append(classSb);
        return sb.ToString();
    }

    void AppendNodeBoilerplate(StringBuilder sb)
    {
		sb.AppendLine();
        sb.AppendLine("    public function onReady() {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onEnterTree() {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onExitTree() {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onProcess(delta: Float) {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onPhysicsProcess(delta: Float) {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onNotification(what: Int) {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onInput(event: InputEvent) {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onUnhandledInput(event: InputEvent) {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onUnhandledKeyInput(event: InputEvent) {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function onShortcutInput(event: InputEvent) {");
        sb.AppendLine("        ");
        sb.AppendLine("    }");
        sb.AppendLine("    public function _onInput(event: NativeReference) {");
        sb.AppendLine("        onInput(new InputEvent(event));");
        sb.AppendLine("    }");
        sb.AppendLine("    public function _onUnhandledInput(event: NativeReference) {");
        sb.AppendLine("        onUnhandledInput(new InputEvent(event));");
        sb.AppendLine("    }");
        sb.AppendLine("    public function _onUnhandledKeyInput(event: NativeReference) {");
        sb.AppendLine("        onUnhandledKeyInput(new InputEvent(event));");
        sb.AppendLine("    }");
        sb.AppendLine("    public function _onShortcutInput(event: NativeReference) {");
        sb.AppendLine("        onShortcutInput(new InputEvent(event));");
        sb.AppendLine("    }");
    }

    public void BuildMembers(StringBuilder sb, XDocument doc, string className, List<string> importList)
    {
        var members = doc.Descendants("member");
        foreach (var member in members)
        {
            var memberName = member.Attribute("name")?.Value;
            var memberType = member.Attribute("type")?.Value ?? "Variant";

            if (memberName.Contains("/"))
                memberName = memberName.Replace("/", "__");

            if (!MemberExists(memberName, className))
            {
                ClassMembers.Add(className + ":" + memberName);

                if (!string.IsNullOrEmpty(memberName))
                {
                    bool isOverride = member.Attribute("overrides") != null;
                    if (isOverride) continue;
                    var memberSb = new StringBuilder();

                    var newMemberName = memberName;
                    if (reservedWords.Contains(memberName))
                        newMemberName = "_" + newMemberName;
                    memberSb.AppendLine($"    public var {newMemberName.ToCamelCase()}(get, set): {MapReturnType(memberType)};");
                    memberSb.AppendLine($"    function get_{newMemberName.ToCamelCase()}(): {MapReturnType(memberType)} {'{'}");
                    if (isVariantType(memberType))
                    {
                        memberSb.AppendLine($"        return native.get('{memberName}');");
                        var importName = $"sunaba.core.{MapReturnType(memberType)}";
                        if (!importList.Contains(importName) && (packageLocations[className] != "sunaba.core"))
                            importList.Add(importName);
                    }
                    else if (ClassNames.Contains(memberType))
                    {
                        memberSb.AppendLine($"        var ref: {GetNativeObject(memberType)} = native.get('{memberName}');");
                        memberSb.AppendLine($"        return new {memberType}(ref);");
                        if (packageLocations[className] != packageLocations[memberType])
                        {
                            var importName = $"{packageLocations[memberType]}.{memberType}";
                            if (!importList.Contains(importName))
                                importList.Add(importName);
                        }
                    }

                    memberSb.AppendLine($"    {'}'}");
                    memberSb.AppendLine($"    function set_{newMemberName.ToCamelCase()}(value: {MapReturnType(memberType)}): {MapReturnType(memberType)} {'{'}");
                    if (isVariantType(memberType))
                    {
                        memberSb.AppendLine($"      native.set('{memberName}', value);");
                    }
                    else if (ClassNames.Contains(memberType))
                    {
                        memberSb.AppendLine($"      native.set('{memberName}', value.native);");
                    }
                    else
                    {
                        continue;
                    }
                    memberSb.AppendLine($"        return value;");
                    memberSb.AppendLine($"    {'}'}");
                    sb.Append(memberSb);
                }
            }
        }
    }

    public void BuildSignals(StringBuilder sb, XDocument doc, string className, List<string> importList)
    {
	    if (!importList.Contains("sunaba.core.Signal"))
		    importList.Add("sunaba.core.Signal");

	    var signals = doc.Descendants("signal");
	    foreach (var signal in signals)
	    {
		    var signalName = signal.Attribute("name")?.Value;
		    if (signalName == null) continue;
		    var signalMethod = "createFromObject";
		    if (IsReferenceCounted(className))
			    signalMethod = "createFromReference";

		    var signalSb = new StringBuilder();
		    signalSb.AppendLine($"	private var _{signalName.ToCamelCase()}: Signal;");
		    signalSb.AppendLine($"	public var {signalName.ToCamelCase()}(get, default): Signal;");
		    signalSb.AppendLine($"	function get_{signalName.ToCamelCase()}(): Signal {'{'}");
		    signalSb.AppendLine($"	    if (_{signalName.ToCamelCase()} == null) {'{'}");
		    signalSb.AppendLine($"	        _{signalName.ToCamelCase()} = Signal.{signalMethod}(native, '{signalName}');");
		    signalSb.AppendLine($"	    {'}'}");
		    signalSb.AppendLine($"	    return _{signalName.ToCamelCase()};");
		    signalSb.AppendLine($"	{'}'}");
		    sb.Append(signalSb);
	    }
    }

    public void BuildMethods(StringBuilder sb, XDocument doc, string className, List<string> importList)
    {
        var methods = doc.Descendants("method");
        foreach (var method in methods)
        {
            var methodName = method.Attribute("name")?.Value;
            var returnType = method.Element("return")?.Attribute("type")?.Value ?? "void";

            var paramNames = new List<String>();
            var paramTypes = new List<String>();
            var isOptional = new List<bool>();

            var parameters = method.Descendants("param").Select(arg =>
            {
                var paramName = arg.Attribute("name")?.Value;
                var paramType = arg.Attribute("type")?.Value ?? "Dynamic";
                var paramDefault = arg.Attribute("default")?.Value;

                if (!isVariantType(paramType) && !ClassNames.Contains(paramType))
                {
                    paramType = "Variant";
                }

                if (reservedWords.Contains(paramName))
                    paramName = "p_" + paramName;
                if (isVariantType(paramType) || ClassNames.Contains(paramType))
                {
                    paramNames.Add(paramName);
                    paramTypes.Add(paramType);
                    if (isVariantType(paramType))
                    {
                        var importName = $"sunaba.core.{MapReturnType(paramType)}";
                        if (packageLocations[className] != "sunaba.core")
                            if (!importList.Contains(importName))
                                importList.Add(importName);
                    }
                    else
                    {
                        if (packageLocations[className] != packageLocations[paramType])
                        {
                            var importName = $"{packageLocations[paramType]}.{paramType}";
                            if (!importList.Contains(importName))
                                importList.Add(importName);
                        }
                    }
                }
                else
                {
                    paramNames.Add("");
                    paramTypes.Add("");
                }

                isOptional.Add(paramDefault != null);

                if (paramDefault != null)
                    return $"?{paramName.ToCamelCase()}: {MapType(paramType)}";
                return $"{paramName.ToCamelCase()}: {MapType(paramType)}";
            });

            if (paramNames.Contains("") && paramTypes.Contains("")) continue;

            if (!MethodExists(methodName, className))
            {
                ClassMethods.Add(className + ":" + methodName.ToCamelCase());

                if (!string.IsNullOrEmpty(methodName))
                {
                    var qualifiers = method.Attribute("qualifiers")?.Value;
                    bool? isVirtual = false;
                    if (qualifiers != null)
                        if (qualifiers.Contains("virtual"))
                            isVirtual = true;
                    if (isVirtual == true) continue;
                    StringBuilder methodSb = new();
                    bool? isStatic = false;
                    if (qualifiers != null)
                        if (qualifiers.Contains("static"))
                            isStatic = true;

                    if (isStatic == true)
                    {
                        methodSb.AppendLine(
                            $"  public static function {methodName.ToCamelCase()}({string.Join(", ", parameters)}): {MapReturnType(returnType)} {'{'}");
                        if (!importList.Contains("sunaba.core.ArrayList"))
                            importList.Add("sunaba.core.ArrayList");
                        methodSb.AppendLine($"      var args = new ArrayList();");
                        for (int i = 0; i < paramNames.Count; i++)
                        {
                            string extraWhiteSpace = "";
                            var argAppendSb = new StringBuilder();
                            if (isOptional[i] == true)
                            {
                                extraWhiteSpace = "    ";
                                argAppendSb.AppendLine($"      if ({paramNames[i].ToCamelCase()} != null) {'{'}");
                            }
                            if (isVariantType(paramTypes[i]))
                            {
                                var importName = $"sunaba.core.{MapReturnType(paramTypes[i])}";
                                if (!importList.Contains(importName))
                                    importList.Add(importName);
                                argAppendSb.AppendLine(extraWhiteSpace + $"      args.append({paramNames[i].ToCamelCase()});");
                            }
                            else if (ClassNames.Contains(paramTypes[i]))
                            {
                                var importName = $"{packageLocations[paramTypes[i]]}.{paramTypes[i]}";
                                if (!importList.Contains(importName))
                                    importList.Add(importName);
                                argAppendSb.AppendLine(extraWhiteSpace + $"      args.append({paramNames[i].ToCamelCase()}.native);");
                            }
                            if (isOptional[i] == true)
                                argAppendSb.AppendLine("      }");
                            if (isVariantType(paramTypes[i]) || ClassNames.Contains(paramTypes[i]))
                            {
                                methodSb.Append(argAppendSb);
                            }
                        }
                        if (isVariantType(returnType))
                        {
                            if (returnType != "void" && returnType != "Void")
                                methodSb.AppendLine($"      return NativeObject.callStatic('{className}', '{methodName}', args);");
                            else
                                methodSb.AppendLine($"      NativeObject.callStatic('{className}', '{methodName}', args);");
                            var importName = $"sunaba.core.{MapReturnType(returnType)}";
                            if (!importList.Contains(importName) && packageLocations[className] != "sunaba.core")
                                importList.Add(importName);
                        }
                        else if (ClassNames.Contains(returnType))
                        {
                            methodSb.AppendLine($"      var ref: {GetNativeObject(returnType)} = NativeObject.callStatic('{className}', '{methodName}', args);");
                            methodSb.AppendLine($"      return new {returnType}(ref);");
                            if (packageLocations[className] != packageLocations[returnType])
                            {
                                var importName = $"{packageLocations[returnType]}.{returnType}";
                                if (!importList.Contains(importName))
                                    importList.Add(importName);
                            }
                        }
                        else
                        {
                            continue;
                        }
                    }
                    else if (isStatic == false)
                    {
                        methodSb.AppendLine(
                            $"  public function {methodName.ToCamelCase()}({string.Join(", ", parameters)}): {MapReturnType(returnType)} {'{'}");
                        if (!importList.Contains("sunaba.core.ArrayList"))
                            importList.Add("sunaba.core.ArrayList");
                        methodSb.AppendLine($"      var args = new ArrayList();");
                        for (int i = 0; i < paramNames.Count; i++)
                        {
                            string extraWhiteSpace = "";
                            var argAppendSb = new StringBuilder();
                            if (isOptional[i] == true)
                            {
                                extraWhiteSpace = "    ";
                                argAppendSb.AppendLine($"      if ({paramNames[i].ToCamelCase()} != null) {'{'}");
                            }
                            if (isVariantType(paramTypes[i]))
                            {
                                var importName = $"sunaba.core.{MapReturnType(paramTypes[i])}";
                                if (!importList.Contains(importName))
                                    importList.Add(importName);
                                argAppendSb.AppendLine(extraWhiteSpace + $"      args.append({paramNames[i].ToCamelCase()});");
                            }
                            else if (ClassNames.Contains(paramTypes[i]))
                            {
                                var importName = $"{packageLocations[paramTypes[i]]}.{paramTypes[i]}";
                                if (!importList.Contains(importName))
                                    importList.Add(importName);
                                argAppendSb.AppendLine(extraWhiteSpace + $"      args.append({paramNames[i].ToCamelCase()}.native);");
                            }
                            if (isOptional[i] == true)
                                argAppendSb.AppendLine("      }");
                            if (isVariantType(paramTypes[i]) || ClassNames.Contains(paramTypes[i]))
                            {
                                methodSb.Append(argAppendSb);
                            }
                        }
                        if (isVariantType(returnType))
                        {
                            if (returnType != "void" && returnType != "Void")
                                methodSb.AppendLine($"      return native.call('{methodName}', args);");
                            else
                                methodSb.AppendLine($"      native.call('{methodName}', args);");
                            var importName = $"sunaba.core.{MapReturnType(returnType)}";
                            if (!importList.Contains(importName) && packageLocations[className] != "sunaba.core")
                                importList.Add(importName);
                        }
                        else if (ClassNames.Contains(returnType))
                        {
                            methodSb.AppendLine($"      var ref: {GetNativeObject(returnType)} = native.call('{methodName}', args);");
                            methodSb.AppendLine($"      return new {returnType}(ref);");
                            if (packageLocations[className] != packageLocations[returnType])
                            {
                                var importName = $"{packageLocations[returnType]}.{returnType}";
                                if (!importList.Contains(importName))
                                    importList.Add(importName);
                            }
                        }
                        else
                        {
                            continue;
                        }
                    }
                    else
                        continue;

                    methodSb.AppendLine($"  {'}'}");
                    sb.Append(methodSb);
                }
            }
        }
    }

    bool MemberExists(string memberName, string className){

        if (ClassMembers.Contains(className + ":" + memberName)){
            return true;
        }
        else {
            if (BaseClasses.ContainsKey(className)) {
                var baseClass = BaseClasses[className];
                if (MemberExists(memberName, baseClass)){
                    return true;
                }
            }
        }
        return false;
    }

    bool MethodExists(string methodName, string className){
        if (ClassMembers.Contains(className + ":" + methodName.ToCamelCase())){
            return true;
        }
        else {
            if (BaseClasses.ContainsKey(className)){
                var baseClass = BaseClasses[className];
                if (MethodExists(methodName, baseClass)){
                    return true;
                }
            }
        }
        return false;
    }

    bool IsReferenceCounted(string className)
    {
        if (className == "Object")
            return false;
        if (ResourceClasses.Contains(className))
            return true;
        if (InheritsClass(className, "Resource"))
            return true;
        if (InheritsClass(className, "Reference"))
            return true;
        if (InheritsClass(className, "RefCounted"))
            return true;
        if (BaseClasses.ContainsKey(className) && BaseClasses[className] != null)
        {
            if (IsReferenceCounted(BaseClasses[className]))
                return true;
        }

        return false;
    }

    string GetNativeObject(string classname)
    {
        if (IsReferenceCounted(classname))
            return "NativeReference";

        return "NativeObject";
    }

    bool InheritsClass(string className, string baseClassName)
    {
        if (BaseClasses.ContainsKey(className))
            if (BaseClasses[className] == baseClassName)
                return true;
            else
                if (InheritsClass(BaseClasses[className], baseClassName))
                    return true;

        return false;
    }

    bool classBeginsWithTwoCapitalLeters(string classname)
    {
        // Check if the first two letters are capital letters
        if (classname.Length >= 2)
        {
            return char.IsUpper(classname[0]) && char.IsUpper(classname[1]);
        }
        return false;
    }

    string MapReturnType(string godotType){
        if (godotType == "Vector3" || godotType == "Vector2" || godotType == "Quaternion" || godotType == "Basis" ||
            godotType == "Color" || godotType == "Vector2i" || godotType == "Vector3i" || godotType == "Vector2I" ||
            godotType == "Vector3I" || godotType == "Rect2" || godotType == "Rect2I" || godotType == "Rect2i" ||
            godotType == "Vector4" || godotType == "Vector4I" || godotType == "Vector4i")
        {
            if (godotType.EndsWith('I'))
            {
                if (godotType.Contains("3"))
                    return "Vector3i";
                else if (godotType.Contains("2"))
                    return "Vector2i";
                else if (godotType.Contains("4"))
                    return "Vector4i";
            }
            return godotType;
        }
        else
            return MapType(godotType);
    }

    string MapType(string godotType)
    {
        if (ClassNames.Contains(godotType))
            return godotType;

        switch (godotType)
        {
            case "int":
                return "Int";
            case "float":
                return "Float";
            case "String":
                return "String";
            case "bool":
                return "Bool";
            case "Vector3":
                return "Vector3";
            case "Vector2":
                return "Vector2";
            case "Basis":
                return "Basis";
            case "Quaternion":
                return "Quaternion";
            case "RID":
                return "Int";
            case "Variant":
                return "Variant";
            case "Color":
                return "Color";
            case "Vector2i":
                return "Vector2i";
            case "Vector3i":
                return "Vector3i";
            case "Vector4I":
                return "Vector4i";
            case "Vector2I":
                return "Vector2i";
            case "Vector3I":
                return "Vector3i";
            case "Vector4i":
                return "Vector4i";
            case "Rect2":
                return "Rect2";
            case "Rect2I":
                return "Rect2i";
            case "Rect2i":
                return "Rect2i";
            case "Vector4":
                return "Vector4";
            case "void":
                return "Void";
            case "Array":
                return "ArrayList";
            case "Dictionary":
                return "Dictionary";
            case "NodePath":
                return "String";
            case "StringName":
                return "String";
            case "PackedByteArray":
                return "ByteArray";
            case "PackedInt32Array":
                return "TypedArray<Int>";
            case "PackedInt64Array":
                return "TypedArray<Int>";
            case "PackedFloat32Array":
                return "TypedArray<Float>";
            case "PackedFloat64Array":
                return "TypedArray<Float>";
            case "PackedStringArray":
                return "TypedArray<String>";
            case "PackedVector2Array":
                return "TypedArray<Vector2>";
            case "PackedVector3Array":
                return "TypedArray<Vector3>";
            case "PackedColorArray":
                return "TypedArray<Color>";
        }

        return "Variant";
    }

    bool isVariantType(string godotType)
    {
        switch (godotType)
        {
            case "int":
                return true;
            case "float":
                return true;
            case "String":
                return true;
            case "bool":
                return true;
            case "Vector3":
                return true;
            case "Vector2":
                return true;
            case "Basis":
                return true;
            case "Quaternion":
                return true;
            case "RID":
                return true;
            case "Variant":
                return true;
            case "Color":
                return true;
            case "Vector2i":
                return true;
            case "Vector3i":
                return true;
            case "Vector4I":
                return true;
            case "Vector2I":
                return true;
            case "Vector3I":
                return true;
            case "Vector4i":
                return true;
            case "Rect2":
                return true;
            case "Rect2I":
                return true;
            case "Rect2i":
                return true;
            case "Vector4":
                return true;
            case "void":
                return true;
            case "Array":
                return true;
            case "Dictionary":
                return true;
            case "NodePath":
                return true;
            case "StringName":
                return true;
            case "PackedByteArray":
                return true;
            case "PackedInt32Array":
                return true;
            case "PackedInt64Array":
                return true;
            case "PackedFloat32Array":
                return true;
            case "PackedFloat64Array":
                return true;
            case "PackedStringArray":
                return true;
            case "PackedVector2Array":
                return true;
            case "PackedVector3Array":
                return true;
            case "PackedColorArray":
                return true;
        }

        return false;
    }
}
