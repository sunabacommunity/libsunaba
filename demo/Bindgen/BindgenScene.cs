using Godot;
using System;

namespace Newhaven.Bindgen;

public partial class BindgenScene : Node
{
	public override void _Ready()
	{
		//var enumBind = new EnumBind();
		//enumBind.Build();
		//var enumBuilder = new EnumBuilder();
		//enumBuilder.Build();
		var resourceClassBuilder = new ClassBuilder();
		resourceClassBuilder.Build();
		GetTree().Quit();
	}
}
