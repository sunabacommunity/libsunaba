using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using Godot;

namespace Sunaba.Bindgen;

public class ResourceExtensionBuilder
{
	public ResourceExtensionBuilder() {}

	public void Build()
	{
		var classes = GetClasses();

		foreach (string @class in classes)
		{
			GenerateClass(@class);
		}
	}

	public void GenerateClass(string name)
	{
		var extendedClassName = name + "AssetExtension";

		var extendedClassBuilder = new StringBuilder();

		extendedClassBuilder.AppendLine($"extends {name}");
		extendedClassBuilder.AppendLine($"class_name {extendedClassBuilder}");
		extendedClassBuilder.AppendLine($"");
		extendedClassBuilder.AppendLine($"@export var asset_path: String = ''");

		var extendedClass = extendedClassBuilder.ToString();

		var extendedClassPath = ProjectSettings.GlobalizePath($"res://Engine/AssetExtensions/{extendedClassName}.gd");
		File.WriteAllText(extendedClassPath, extendedClass);
	}

	public static List<string> GetClasses()
	{
		List<string> classes = new();

		classes.Add("Resource");

		var types = GetTypesInheritedFrom(typeof(Resource));

		foreach (var type in types)
		{
			var name = type.Name;
			classes.Add(name);
		}

		return classes;
	}

	public static Type[] GetTypesInheritedFrom(Type baseType)
	{
		Assembly assembly = baseType.Assembly;
		Type[] types = assembly.GetTypes();
		Type[] inheritedTypes = types.Where(t => t.IsSubclassOf(baseType)).ToArray();
		return inheritedTypes;
	}
}
