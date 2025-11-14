using System;
using System.Collections.Generic;
using Godot;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Platforms;
using LuaScript = MoonSharp.Interpreter.Script;

namespace Sunaba.Engine;

[GlobalClass]
public partial class ShellConsole : RefCounted
{
	private LuaScript Script;

	private Dictionary<string, Callable> commands = new();

	private IoInterface _ioInterface;

	[Signal]
	public delegate void PrintEventHandler(string content);

	public IoInterface IoInterface
	{
		get => _ioInterface;
		set
		{
			_ioInterface = value;
			Script.Options.ScriptLoader = new IoInterfaceScriptLoader(_ioInterface);
		}
	}

	public ShellConsole()
	{
		Script = new LuaScript();
		IoInterface = new IoManager();
		LuaScript.GlobalOptions.Platform = new LimitedPlatformAccessor();
		Script.Options.DebugPrint = EmitSignalPrint;
		Script.Globals["__command"] = CallCommand;
	}

	public void AddCommand(string name, Callable callable)
	{
		commands[name] = callable;
		Script.Globals[name] = (List<string> args) =>
		{
			CallCommand(name, args);
		};
	}

	public Variant DoCode(string code)
	{
		if (code.Contains('$'))
			code = code.Replace("$", "_G[\"$\"");

		try
		{
			Script.DoString(code);
		}
		catch (Exception e)
		{
			return e.ToString();
		}

		return new Variant();
	}

	public int CallCommand(string name, List<string> args)
	{

		if (!commands.ContainsKey(name))
		{
			throw new Exception("Invalid command: " + name);
		}
		Callable callable = commands[name];
		return callable.Call(args.ToArray()).AsInt32();
	}
}
