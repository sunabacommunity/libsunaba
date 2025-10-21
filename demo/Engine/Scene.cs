using System.Collections.Generic;
using Godot;
using Godot.Collections;

namespace Newhaven.Engine;

[GlobalClass]
public partial class Scene : Node
{
	private List<GameObject> _gameObjects = new();

	private GameObject _findObj(string[] path, int index)
	{
		foreach (var gameObject in _gameObjects)
		{
			if (gameObject.Name == path[index])
			{
				return gameObject.FindObj(path, index + 1);
			}
		}

		return null;
	}

	private bool _started = false;

	public Array GameObjects => GetObjects();

	public Array GetObjects()
	{
		Array gameObjects = new();
		foreach (var gameObject in _gameObjects)
		{
			gameObjects.Add(gameObject);
		}

		return gameObjects;
	}

	public void AddObject(GameObject obj)
	{
		obj.SetScene(this);
		_gameObjects.Add(obj);
		if (_started)
			obj.Ready();
	}

	public void RemoveObject(GameObject obj)
	{
		if (obj == null) return;

		obj.ExitTree();
		obj.SetScene(null);
		_gameObjects.Remove(obj);
	}

	public bool HasObject(GameObject obj)
	{
		return _gameObjects.Contains(obj);
	}

	public GameObject Find(string path)
	{
		string[] split = path.Split("/");
		return _findObj(split, 0);
	}

	int GetObjectCount()
	{
		return _gameObjects.Count;
	}

	GameObject GetObject(int index)
	{
		if (index < 0 || index >= _gameObjects.Count)
			return null;
		return _gameObjects[index];
	}

	public override void _EnterTree()
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.EnterTree();
		}
	}

	public override void _ExitTree()
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.ExitTree();
		}
	}

	public override void _Ready()
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.Ready();
		}

		_started = true;
	}

	public override void _Process(double delta)
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.Update(delta);
		}
	}

	public override void _PhysicsProcess(double delta)
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.PhysicsUpdate(delta);
		}
	}

	public override void _Input(InputEvent @event)
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.Input(@event);
		}
	}

	public override void _UnhandledInput(InputEvent @event)
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.UnhandledInput(@event);
		}
	}

	public override void _UnhandledKeyInput(InputEvent @event)
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.UnhandledKeyInput(@event);
		}
	}

	public override void _ShortcutInput(InputEvent @event)
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.ShortcutInput(@event);
		}
	}

	public void Destroy()
	{
		QueueFree();
	}

	~Scene()
	{
		foreach (var gameObject in _gameObjects)
		{
			gameObject.Destroy();
		}
	}
}
