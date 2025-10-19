using Godot;
using System;

public partial class Main : Node
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
