using Godot;
using System;
using System.IO;

namespace Sunaba.Bindgen;

public partial class BindgenScene : Node
{
	public override void _Ready()
	{
		var enumBind = new EnumBind();
		enumBind.Build();
		foreach (var file in Directory.GetFiles("../enum_api/sunaba/"))
			if (file.GetFile().Contains("_") && file.GetFile() != ".DS_Store")
				File.Delete(file);
		var enumBuilder = new EnumBuilder();
		enumBuilder.Build();
		foreach (var file in Directory.GetFiles("../api/sunaba/"))
			if (file.GetFile().Contains("_") && file.GetFile() != ".DS_Store")
				File.Delete(file);

		var resourceClassBuilder = new ClassBuilder();
		resourceClassBuilder.Build();
		GetTree().Quit();
	}
}
