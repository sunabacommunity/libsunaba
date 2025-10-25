using System;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using Godot;
using FileAccess = Godot.FileAccess;

namespace Sunaba.Bindgen;

public class HaxeExternGenerator
{
    public List<String> ClassNames;
    public Dictionary<string, string> BaseClasses;
    public List<string> ClassMethods;
    public List<string> ClassMembers;

    public void GenerateExterns(string subfolder)
    {
        string outputDir = Path.GetFullPath("../api/sunaba/godot/");
        string godotApiPath = Path.GetFullPath("../xmlgdapi/");

        // Ensure the output directory exists
        Directory.CreateDirectory(outputDir);
        Directory.CreateDirectory(godotApiPath);


        string xmlDirectory = godotApiPath + subfolder + "/";

        ClassNames = new List<string>();
        BaseClasses = new Dictionary<string, string>();
        ClassMethods = new List<string>();
        ClassMembers = new List<string>();

        // Read all XML files in the directory
        var xmlFiles = GetFiles(xmlDirectory);
        foreach (var xmlFile in xmlFiles){
            var doc = XDocument.Load(xmlFile);
            var className = doc.Root?.Attribute("name")?.Value;

            if (!string.IsNullOrEmpty(className) && className != "float" && className != "String" && className != "int" && className != "@GlobalScope" && className != "bool" && className != "Array" && className != "Dictionary" && className != "Vector3" && className != "Vector2" && className != "Quaternion" && className != "Basis" && className != "Vector2i" && className != "Vector3i" && className != "Vector4" && className != "Vector4i")
            {
                    ClassNames.Add(className);
                    var inheritedClassName = doc.Root?.Attribute("inherits")?.Value;
                    if (inheritedClassName == "RefCounted")
                    {
                        inheritedClassName = "Reference";
                    }
                    BaseClasses.Add(className, inheritedClassName);
            }
        }
        xmlFiles = GetFiles(xmlDirectory);
        foreach (var xmlFile in xmlFiles)
        {
            // Load and parse the XML file
            var doc = XDocument.Load(xmlFile); // XDocument.Load()
            var className = doc.Root?.Attribute("name")?.Value;

            if (!string.IsNullOrEmpty(className) && className != "float" && className != "String" && className != "int" && className != "@GlobalScope" && className != "bool" && className != "Array" && className != "Dictionary")
            {
                Console.WriteLine($"Processing class: {className}");
                var haxeExtern = GenerateHaxeExtern(doc, className);
                var ogClassName = className;
                if (className == "Vector3" || className == "Vector2" || className == "Quaternion" || className == "Basis" || className == "Vector2i" || className == "Vector3i" || className == "Vector4" || className == "Vector4i")
                    className = "Gd" + className;
                File.WriteAllText(Path.Combine(outputDir, $"{className}.hx"), haxeExtern);
            }
        }

        Directory.Delete(godotApiPath, recursive: true);
        Console.WriteLine("Haxe externs generated!");
    }

    public string[] GetFiles(string path)
    {
        List<string> files = new List<string>();

        foreach (var file in Directory.GetFiles(path))
        {
            if (file.EndsWith(".xml"))
                files.Add(file);
        }

        foreach (var dir in Directory.GetDirectories(path))
        {
            var moreFiles = GetFiles(path);
            foreach (var f in moreFiles)
            {
                files.Add(f);
            }
        }

        return files.ToArray();
    }

    string GenerateHaxeExtern(XDocument doc, string className)
    {
        var sb = new StringBuilder();

        // Package declaration
        sb.AppendLine("package sunaba.godot;");
        sb.AppendLine();

        sb.AppendLine("import sunaba.core.NativeEvent;");

        var inheritedClassName = doc.Root?.Attribute("inherits")?.Value;

        if (string.IsNullOrEmpty(inheritedClassName))
        {
            inheritedClassName = "NativeObject";
            sb.AppendLine("import sunaba.core.NativeObject;");
        }

        sb.AppendLine();

        AppendEnums(sb, doc);

        var ogClassName = className;
        if (className == "Vector3" || className == "Vector2" || className == "Quaternion" || className == "Basis" || className == "Vector2i" || className == "Vector3i" || className == "Vector4i" || className == "Vector4")
            className = "Gd" + className;
        // Class definition
        sb.AppendLine($"@:native(\"godot.{ogClassName}\")");
        sb.AppendLine($"extern class {className} extends {inheritedClassName} {{");

        // Process fields (members)
        AppendFields(sb, doc);

        // Process constructors
        AppendConstructors(sb, doc);

        // Process methods
        AppendMethods(sb, doc);

        // Process signals
        AppendSignals(sb, doc);

        sb.AppendLine("}");
        var str = sb.ToString();



        return str;
    }

    public static void AppendEnums(StringBuilder sb, XDocument doc)
    {
        var godotAssembly = typeof(Godot.Node).Assembly;
        var className = doc.Root?.Attribute("name")?.Value;

        Type[] types = godotAssembly.GetTypes();

        Type type = null;

        foreach (Type t in types)
        {
            if (t.Name == className)
            {
                type = t;
                break;
            }
        }

        if (type != null)
        {
            var enumNames = type.GetProperties();

            foreach (var propertyInfo in enumNames)
            {
                if (IsPropertyUniqueToType(type, propertyInfo.Name))
                {
                    if (propertyInfo.PropertyType.IsEnum)
                    {

                        var enumName = className + propertyInfo.Name;
                        sb.AppendLine($"class {enumName} {{");

                        List<string> valNames = new();
                        foreach (var value in Enum.GetValues(propertyInfo.PropertyType))
                        {
                            var valName = Enum.GetName(propertyInfo.PropertyType, value);
                            var valValue = Convert.ToInt32(value);
                            if(valNames.Contains(valName))
                                continue;
                            else
                                valNames.Add(valName);
                            sb.AppendLine($"    public static var {valName}: Int = {valValue};");
                        }

                        sb.AppendLine("}");
                        sb.AppendLine();
                    }
                }

            }
        }
    }

    public static bool IsPropertyUniqueToType(Type type, string propertyName, bool recursive = false)
    {
        Type inheritedType = type.BaseType;
        while (inheritedType != null)
        {
            type = inheritedType;
            inheritedType = type.BaseType;
            if (IsPropertyUniqueToType(type, propertyName, true))
            {
                if (recursive)
                {
                    return true;
                }
                return false;
            }
            else
            {
                var properties = type.GetProperties();
                foreach (var propertyInfo in properties)
                {
                    if (propertyInfo.Name == propertyName)
                    {
                        return true;
                    }
                }
            }
        }

        return false;
    }

    void AppendSignals(StringBuilder sb, XDocument doc)
    {
        var signals = doc.Descendants("signal");
        foreach (var signal in signals)
        {
            var signalName = signal.Attribute("name")?.Value;

            if (!string.IsNullOrEmpty(signalName))
            {
                sb.AppendLine($"    public var {ToCamelCase(signalName)}: NativeEvent;");
            }
        }
    }

    void AppendFields(StringBuilder sb, XDocument doc)
    {
        var fields = doc.Descendants("member");
        foreach (var field in fields)
        {
            var fieldName = field.Attribute("name")?.Value;
            var fieldType = field.Attribute("type")?.Value ?? "Dynamic";

            if (fieldName.Contains("/"))
                fieldName = fieldName.Replace("/", "__");

            var className = doc.Root?.Attribute("name")?.Value;

            if (!MemberExists(fieldName, className))
            {
                ClassMembers.Add(className + ":"  + fieldName);

                if (!string.IsNullOrEmpty(fieldName))
                {
                    //bool isStatic = field.Attribute("static") != null;
                    bool isOverride = field.Attribute("overrides") != null;
                    if (isOverride){
                    }
                    else if (className == "OS" || className == "Input" || className == "InputMap")
                        sb.AppendLine($"    public static var {ToCamelCase(fieldName)}: {MapReturnType(fieldType)};");
                    else
                        sb.AppendLine($"    public var {ToCamelCase(fieldName)}: {MapReturnType(fieldType)};");
                }
            }
        }
    }

    void AppendConstructors(StringBuilder sb, XDocument doc)
    {
        var constructorElements = doc.Descendants("constructors") ?? null;
        if (constructorElements != null && constructorElements.Count() != 0)
        {
            var constructorElelment = constructorElements.First() ?? null;
            if (constructorElelment != null)
            {
                var methods = constructorElements.Descendants("constructor");
                if (methods != null)
                {
                    var methodNames = new List<string>();
                    var className = doc.Root?.Attribute("name")?.Value;
                    bool firstConstructor = true;
                    foreach (var method in methods)
                    {
                        var methodName = "new";
                        XElement? returnAtrib = method.Descendants("return").First();
                        var returnType = returnAtrib.Attribute("type")?.Value ?? "Void";

                        if (className == "Vector2" || className == "Vector3" || className == "Vector2i" ||
                            className == "Vector3i" || className == "Vector4" || className == "Vector4i")
                        {
                            if (!method.Descendants("param").Any(arg => arg.Attribute("name")?.Value == "x"))
                            {
                                firstConstructor = false;
                            }
                            else
                            {
                                firstConstructor = true;
                            }
                        }
                        else if (className == "Quaternion")
                        {
                            if (!method.Descendants("param").Any(arg => arg.Attribute("name")?.Value == "w"))
                            {
                                firstConstructor = false;
                            }
                            else
                            {
                                firstConstructor = true;
                            }
                        }
                        else if (className == "Basis")
                        {
                            if (!method.Descendants("param").Any(arg => arg.Attribute("name")?.Value == "x_axis"))
                            {
                                firstConstructor = false;
                            }
                            else
                            {
                                firstConstructor = true;
                            }
                        }

                        var paramElements = method.Descendants("param");

                        var parameters = paramElements.Select(arg =>
                        {
                            var paramName = arg.Attribute("name")?.Value;
                            var paramType = arg.Attribute("type")?.Value ?? "Dynamic";
                            var paramDefault = arg.Attribute("default")?.Value;
                            if (paramName == "default" || paramName == "class" || paramName == "var")
                                paramName = "_" + paramName;
                            if (paramType == "string" || paramType == "int" || paramType == "float" || paramType == "bool")
                            {
                                if (paramDefault != null)
                                    return $"{ToCamelCase(paramName)}: {MapType(paramType)} = {paramDefault}";
                            }
                            else if (paramDefault != null)
                                return $"?{ToCamelCase(paramName)}: {MapType(paramType)}";
                            return $"{ToCamelCase(paramName)}: {MapType(paramType)}";
                        });

                        ClassMethods.Add(className + ":" + methodName);

                        if (!string.IsNullOrEmpty(methodName))
                        {
                            sb.AppendLine($"    @:native(\"__new\")");
                            if (firstConstructor)
                            {
                                sb.AppendLine($"    public function new({string.Join(", ", parameters)});");
                                firstConstructor = false;
                            }
                            else
                            {
                                var paramNames = method.Descendants("param").Select(arg =>
                                {
                                    var paramName = arg.Attribute("name")?.Value;
                                    return $"{paramName}";
                                });
                                methodName = string.Join("_", paramNames);
                                if (methodNames.Contains(methodName))
                                {
                                    paramNames = method.Descendants("param").Select(arg =>
                                    {
                                        var paramName = arg.Attribute("name")?.Value;
                                        var paramType = arg.Attribute("type")?.Value ?? "Dynamic";
                                        return $"{paramName}_{MapType(paramType)}";
                                    });
                                    methodName = string.Join("_", paramNames);
                                }
                                if (parameters.Count() == 0)
                                {
                                    sb.AppendLine(
                                        $"    public static function newNoParams{ToCamelCase(methodName)}(): {MapReturnType(returnType)};");
                                }
                                else
                                {


                                    sb.AppendLine(
                                        $"    public static function {ToCamelCase(methodName)}({string.Join(", ", parameters)}): {MapReturnType(returnType)};");
                                }
                            }

                            methodNames.Add(methodName);
                        }
                    }
                }
            }
        }
        else {
            sb.AppendLine($"    @:native(\"__new\")");
            sb.AppendLine($"    public function new();");
        }
    }

    void AppendMethods(StringBuilder sb, XDocument doc)
    {
        var methods = doc.Descendants("method");
        var methodNames = new List<string>();
        var className = doc.Root?.Attribute("name")?.Value;
        foreach (var method in methods)
        {
            var methodName = method.Attribute("name")?.Value;
            var returnType = method.Element("return")?.Attribute("type")?.Value ?? "Void";

        var parameters = method.Descendants("param").Select(arg =>
        {
            var paramName = arg.Attribute("name")?.Value;
            var paramType = arg.Attribute("type")?.Value ?? "Dynamic";
            var paramDefault = arg.Attribute("default")?.Value;
            if (paramName == "default" || paramName == "class" || paramName == "var")
                paramName = "_" + paramName;
            if (paramDefault == "4294967295")
                paramDefault = "cast 4294967295";
            if (paramType == "string" || paramType == "int" || paramType == "float" || paramType == "bool")
            {
                if (paramDefault != null)
                    return $"{ToCamelCase(paramName)}: {MapType(paramType)} = {paramDefault}";
            }
            else if (paramDefault != null)
                return $"?{ToCamelCase(paramName)}: {MapType(paramType)}";
            return $"{ToCamelCase(paramName)}: {MapType(paramType)}";
        });

            if (!MethodExists(methodName, className))
            {
                ClassMethods.Add(className + ":" + methodName);

                if (!string.IsNullOrEmpty(methodName))
                {
                    if (methodName == "to_string")
                        methodName = "toString";

                    bool? isStatic = method.Attribute("qualifiers")?.Value.Contains("static");
                    bool? isVirtual = method.Attribute("qualifiers")?.Value.Contains("virtual");
                    if (isStatic == true || className.EndsWith("Server") || className == "OS" || className == "Input" || className == "InputMap")
                        sb.AppendLine(
                            $"    public static function {ToCamelCase(methodName)}({string.Join(", ", parameters)}): {MapReturnType(returnType)};");
                    else if (isVirtual == true)
                    {
                    }
                    else
                        sb.AppendLine(
                            $"    public function {ToCamelCase(methodName)}({string.Join(", ", parameters)}): {MapReturnType(returnType)};");

                    methodNames.Add(methodName);
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
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
    }

    bool MethodExists(string methodName, string className){
        if (ClassMembers.Contains(className + ":" + methodName)){
            return true;
        }
        else {
            if (BaseClasses.ContainsKey(className)){
                var baseClass = BaseClasses[className];
                if (MethodExists(methodName, baseClass)){
                    return true;
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
    }

    string MapReturnType(string godotType){
        if (godotType == "Vector3" || godotType == "Vector2" || godotType == "Quaternion" || godotType == "Basis" ||
            godotType == "Color" || godotType == "Vector2i" || godotType == "Vector3i" || godotType == "Vector2I" ||
            godotType == "Vector3I" || godotType == "Rect2" || godotType == "Vector4" || godotType == "Vector4I" ||
            godotType == "Vector4i")
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
                return "GdVector3";
            case "Vector2":
                return "GdVector2";
            case "Basis":
                return "GdBasis";
            case "Quaternion":
                return "GdQuaternion";
            case "RID":
            case "Variant":
                return "Dynamic";
            case "Color":
                return "Color";
            case "Vector2i":
                return "GdVector2i";
            case "Vector3i":
                return "GdVector3i";
            case "Vector4i":
                return "GdVector4i";
            case "Rect2":
                return "GdRect2";
            case "Vector4":
                return "GdVector4";
            case "void":
                return "Void";
            case "Array":
                return "Array<Dynamic>";
            case "Dictionary":
                return "Map<Dynamic, Dynamic>";
            case "NodePath":
                return "String";
            case "StringName":
                return "String";
            case "PackedByteArray":
                return "lua.Table<Int, Int>";
            case "PackedInt32Array":
                return "lua.Table<Int, Int>";
            case "PackedInt64Array":
                return "lua.Table<Int, Int>";
            case "PackedFloat32Array":
                return "lua.Table<Int, Float>";
            case "PackedFloat64Array":
                return "lua.Table<Int, Float>";
            case "PackedStringArray":
                return "lua.Table<Int, String>";
            case "PackedVector2Array":
                return "lua.Table<Int, GdVector2>";
            case "PackedVector3Array":
                return "lua.Table<Int, GdVector3>";
            case "PackedColorArray":
                return "lua.Table<Int, Color>";
        }

        return "Dynamic";
    }

    string ToCamelCase(string snakeCase)
    {
        if (string.IsNullOrEmpty(snakeCase))
            return snakeCase;

        var parts = snakeCase.Split('_');
        for (int i = 1; i < parts.Length; i++) // Start at 1 to skip the first part
        {
            if (parts[i].Length > 0)
            {
                parts[i] = char.ToUpper(parts[i][0], CultureInfo.InvariantCulture) + parts[i].Substring(1);
            }
        }

        return string.Join(string.Empty, parts);
    }

    string ToPascalCase(string snakeCase)
    {
        if (string.IsNullOrEmpty(snakeCase))
            return snakeCase;

        var parts = snakeCase.Split('_');
        for (int i = 0; i < parts.Length; i++)
        {
            if (parts[i].Length > 0)
            {
                parts[i] = char.ToUpper(parts[i][0], CultureInfo.InvariantCulture) + parts[i].Substring(1);
            }
        }

        return string.Join(string.Empty, parts);
    }
}
