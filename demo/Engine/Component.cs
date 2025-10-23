using System.Reflection;
using Godot;
using GDExtensionBindgen;
using Godot.Collections;

namespace Newhaven.Engine;

[GlobalClass]
public partial class Component : RefCounted
{
	public string Name = "";

	public RefCounted Script = null;

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
				if (Script.Call("has_var", "editorIconPath").AsBool())
				{
					var icon = Script.Call("get_var", "editorIconPath");
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

		return Script.Call("call_function", name, args);
	}

	public bool ScriptHasFunction(string funcName)
	{
		return Script.Call("has_function", funcName).AsBool();
	}

	public void OnInit()
	{
		if (Script == null) return;
		if (!ScriptHasFunction("onInit")) return;
		CallScript("onInit");
	}

	public void OnEnterTree()
	{
		if (Script == null) return;
		if (!ScriptHasFunction("onEnterTree")) return;
		CallScript("onEnterTree");
	}

	public void OnExitTree()
	{
		if (Script == null) return;
		if (!ScriptHasFunction("onExitTree")) return;
		CallScript("onExitTree");
	}

	public void OnReady()
	{
		if (Script == null) return;
		if (!ScriptHasFunction("onReady")) return;
		CallScript("onReady");
	}

	public void OnUpdate(double deltaTime)
	{
		if (Script == null) return;
		if (!ScriptHasFunction("onUpdate")) return;
		CallScript("onUpdate", deltaTime);
	}

	public void OnPhysicsUpdate(double deltaTime)
	{
		if (Script == null) return;
		if (!ScriptHasFunction("onPhysicsUpdate")) return;
		CallScript("onPhysicsUpdate", deltaTime);
	}

	public void OnInput(InputEvent @event)
	{
		if (Script == null) return;
		if (!ScriptHasFunction("_onInput")) return;
		CallScript("_onInput", @event);
	}

	public void OnUnhandledInput(InputEvent @event)
	{
		if (Script == null) return;
		if (!ScriptHasFunction("_onUnhandledInput")) return;
		CallScript("_onUnhandledInput", @event);
	}

	public void OnUnhandledKeyInput(InputEvent @event)
	{
		if (Script == null) return;
		if (!ScriptHasFunction("_onUnhandledKeyInput")) return;
		CallScript("_onUnhandledKeyInput", @event);
	}

	public void OnShortcutInput(InputEvent @event)
	{
		if (Script == null) return;
		if (!ScriptHasFunction("_onShortcutInput")) return;
		CallScript("_onShortcutInput", @event);
	}

	public Dictionary GetData()
	{
		if (Script == null) return new Dictionary();
		if (!ScriptHasFunction("getData")) return new Dictionary();
		return CallScript("getData").AsGodotDictionary();
	}

	public void OnRemove()
	{
		if (Script == null) return;
		if (!ScriptHasFunction("onRemove")) return;
		CallScript("onRemove");
	}

	public void SetData(Dictionary data)
	{
		if (Script == null) return;
		if (!ScriptHasFunction("setData")) return;
		CallScript("setData", data);
	}
}
