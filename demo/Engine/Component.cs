using System.Reflection;
using Godot;
using GDExtensionBindgen;
using Godot.Collections;

namespace Newhaven.Engine;

[GlobalClass]
public partial class Component : RefCounted
{
	public string Name = "";

	public ScriptObject Script = null;

	public GameObject GameObject;

	public Scene Scene
	{
		get
		{
			return GameObject.Scene;
		}
	}

	private string _editorIconPath = "studio://icons/16/lightning.png";

	public Component() {}

	public string EditorIconPath
	{
		get
		{
			if (Script != null)
			{
				if (Script.HasVar("editorIconPath"))
				{
					var icon = Script.GetVar("editorIconPath");
					if (icon.VariantType == Variant.Type.String)
					{
						return icon.AsString();
					}
				}
			}
			return _editorIconPath;
		}
		set => _editorIconPath = value;
	}

	public Variant CallScript(string name, params Variant[] variantArgs)
	{
		Array args = new Array();
		args.Add(Script);
		for (int i = 0; i < variantArgs.Length; i++)
		{
			args.Add(variantArgs[i]);
		}

		return Script.CallFunction(name, args);
	}

	public void OnInit()
	{
		if (Script == null) return;
		if (!Script.HasFunction("onInit")) return;
		CallScript("onInit");
	}

	public void OnEnterTree()
	{
		if (Script == null) return;
		if (!Script.HasFunction("onEnterTree")) return;
		CallScript("onEnterTree");
	}

	public void OnExitTree()
	{
		if (Script == null) return;
		if (!Script.HasFunction("onExitTree")) return;
		CallScript("onExitTree");
	}

	public void OnReady()
	{
		if (Script == null) return;
		if (!Script.HasFunction("onReady")) return;
		CallScript("onReady");
	}

	public void OnUpdate(double deltaTime)
	{
		if (Script == null) return;
		if (!Script.HasFunction("onUpdate")) return;
		CallScript("onUpdate", deltaTime);
	}

	public void OnPhysicsUpdate(double deltaTime)
	{
		if (Script == null) return;
		if (!Script.HasFunction("onPhysicsUpdate")) return;
		CallScript("onPhysicsUpdate", deltaTime);
	}

	public void OnInput(InputEvent @event)
	{
		if (Script == null) return;
		if (!Script.HasFunction("_onInput")) return;
		CallScript("_onInput", @event);
	}

	public void OnUnhandledInput(InputEvent @event)
	{
		if (Script == null) return;
		if (!Script.HasFunction("_onUnhandledInput")) return;
		CallScript("_onUnhandledInput", @event);
	}

	public void OnUnhandledKeyInput(InputEvent @event)
	{
		if (Script == null) return;
		if (!Script.HasFunction("_onUnhandledKeyInput")) return;
		CallScript("_onUnhandledKeyInput", @event);
	}

	public void OnShortcutInput(InputEvent @event)
	{
		if (Script == null) return;
		if (!Script.HasFunction("_onShortcutInput")) return;
		CallScript("_onShortcutInput", @event);
	}

	public Dictionary GetData()
	{
		if (Script == null) return new Dictionary();
		if (!Script.HasFunction("getData")) return new Dictionary();
		return CallScript("getData").AsGodotDictionary();
	}

	public void OnRemove()
	{
		if (Script == null) return;
		if (!Script.HasFunction("onRemove")) return;
		CallScript("onRemove");
	}

	public void SetData(Dictionary data)
	{
		if (Script == null) return;
		if (!Script.HasFunction("setData")) return;
		CallScript("setData", data);
	}
}
