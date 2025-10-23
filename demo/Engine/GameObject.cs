using System;
using System.Collections.Generic;
using GDExtensionBindgen;
using Godot;
using Godot.Collections;
using Array = Godot.Collections.Array;

namespace Newhaven.Engine;

[GlobalClass]
public partial class GameObject : GodotObject
{
	private Node _node = null;
	private bool _started = false;
	private bool _isPrefab = false;
	private string _prefabPath = "";
	private bool _freed = false;

	public string Name;
	private List<Component> _components = new();
	private List<GameObject> _children = new();
	protected GameObject _parent = null;

	private Scene _scene = null;

	public Scene Scene
	{
		get
		{
			if (Parent != null)
			{
				return Parent.Scene;
			}
			else
			{
				return _scene;
			}
		}
	}

	public GameObject Parent => _parent;

	internal void CleanupNode()
	{
		if (_node != null)
		{
			_node.QueueFree();
			_node = null;
		}
	}

	public Node Node
	{
		get => _node;
		set
		{
			if (_node == value) return;

			if (_node != null)
			{
				if (!_freed && value != null)
				{
					List<Node> c = new();
					for (int i = 0; i < _node.GetChildCount(); i++)
					{
						var child = _node.GetChild(i);
						if (child != null)
						{
							c.Add(child);
							_node.RemoveChild(child);
						}
					}

					foreach (var child in c)
					{
						if (child != null)
						{
							value.AddChild(child);
						}
					}
				}

				_node.QueueFree();
			}

			_parent?.Node.AddChild(value);

			_node = value;
			if (value != null)
			{
				value.Name = Name;
			}
		}
	}

	public bool IsPrefab => _isPrefab;

	public string PrefabPath
	{
		get => _prefabPath;
		set
		{
			if ((value != String.Empty) && !(value.Contains("://") && value.Contains(".vpfb")))
			{
				GD.PrintErr("Invalid prefab path", value);
				return;
			}

			if (value != String.Empty)
				_isPrefab = true;

			_prefabPath = value;
		}
	}

	internal GameObject FindObj(string[] path, int index)
	{
		if (index == path.Length - 1) return this;

		foreach (var child in _children)
		{
			if (child.Name == path[index])
			{
				return child.FindObj(path, index + 1);
			}
		}
		return null;
	}

	internal void SetScene(Scene scene)
	{
		_scene = scene;
	}

	public void AddComponent(Component component)
	{
		component.GameObject = this;
		component.OnInit();
		_components.Add(component);
		if (Parent != null) component.OnEnterTree();
		if (_started) component.OnReady();
	}

	public void RemoveComponent(Component component)
	{
		if (Parent != null) component.OnExitTree();
		component.OnRemove();
		_components.Remove(component);
		component.Script = null;
	}

	internal void EnterTree()
	{
		if (_hasEnteredTree) return;
		foreach (var component in _components)
		{
			component.OnEnterTree();
		}

		foreach (var child in _children)
		{
			child.EnterTree();
		}

		_hasEnteredTree = true;
	}

	internal void ExitTree()
	{
		foreach (var component in _components)
		{
			component.OnExitTree();
		}

		foreach (var child in _children)
		{
			child.ExitTree();
		}

		_hasEnteredTree = false;
	}

	public RefCounted GetComponentByName(String name)
	{
		foreach (var component in _components)
			if (component.Name == name)
				return component;

		return null;
	}

	public void RemoveComponentByName(String name)
	{
		foreach (var component in _components)
			if (component.Name == name)
				RemoveComponent(component);
	}

	public bool HasComponentByName(String name)
	{
		foreach (var component in _components)
			if (component.Name == name)
				return true;

		return false;
	}

	public Array GetComponents()
	{
		Array components = new();
		foreach (var component in _components)
		{
			components.Add(component.Script);
		}

		return components;
	}

	public string[] GetComponentNames()
	{
		List<string> conponentNames = new();
		foreach (var component in _components)
		{
			conponentNames.Add(component.Name);
		}

		return conponentNames.ToArray();
	}

	private bool _hasEnteredTree = false;

	public void AddChild(GameObject gameObject)
	{
		gameObject._parent = this;
		_children.Add(gameObject);
		if (Node != null && gameObject.Node != null)
			Node.AddChild(gameObject.Node);
		if (Scene != null)
			gameObject.EnterTree();
		if (_started)
			gameObject.Ready();
	}

	public void RemoveChild(GameObject child)
	{
		if (child == null)
			return;

		if (_children.Contains(child))
		{
			_children.Remove(child);

			child._parent = null;

			if (Node != null && child.Node != null)
			{
				Node.RemoveChild(child.Node);
			}

			if (Scene != null)
			{
				child.ExitTree();
			}
		}
	}

	public bool HasChild(GameObject obj, bool recursive = false)
	{
		bool isChild = _children.Contains(obj);
		if (isChild == false && recursive)
		{
			foreach (var child in _children)
			{
				if (child.HasChild(obj, true))
				{
					isChild = true;
				}
			}
		}

		return isChild;
	}

	GameObject Find(string path)
	{
		string[] split = path.Split("/");
		return FindObj(split, 0);
	}

	int GetChildCount()
	{
		return _children.Count;
	}

	GameObject GetChild(int index)
	{
		if (index < 0 || index >= _children.Count)
			return null;
		return _children[index];
	}

	public Array Children => GetChildern();

	public Array GetChildern()
	{
		Array children = new();
		foreach (var child in _children)
		{
			children.Add(child);
		}

		return children;
	}

	internal void Ready()
	{
		if (_started) return;
		foreach (var component in _components)
		{
			component.OnReady();
		}

		foreach (var child in _children)
		{
			child.Ready();
		}
		_started = true;
	}

	internal void Update(double deltaTime)
	{
		foreach (var component in _components)
		{
			component.OnUpdate(deltaTime);
		}

		foreach (var child in _children)
		{
			child.Update(deltaTime);
		}
	}

	internal void PhysicsUpdate(double deltaTime)
	{
		foreach (var component in _components)
		{
			component.OnPhysicsUpdate(deltaTime);
		}

		foreach (var child in _children)
		{
			child.PhysicsUpdate(deltaTime);
		}
	}

	internal void Input(InputEvent @event)
	{
		foreach (var component in _components)
		{
			component.OnInput(@event);
		}

		foreach (var child in _children)
		{
			child.Input(@event);
		}
	}

	internal void UnhandledInput(InputEvent @event)
	{
		foreach (var component in _components)
		{
			component.OnUnhandledInput(@event);
		}

		foreach (var child in _children)
		{
			child.UnhandledInput(@event);
		}
	}

	internal void UnhandledKeyInput(InputEvent @event)
	{
		foreach (var component in _components)
		{
			component.OnUnhandledKeyInput(@event);
		}

		foreach (var child in _children)
		{
			child.UnhandledKeyInput(@event);
		}
	}

	internal void ShortcutInput(InputEvent @event)
	{
		foreach (var component in _components)
		{
			component.OnShortcutInput(@event);
		}

		foreach (var child in _children)
		{
			child.ShortcutInput(@event);
		}
	}

	public void Destroy()
	{
		_freed = true;

		GameObject parent = Parent;
		Scene scene = Scene;

		if (parent != null)
		{
			parent.RemoveChild(this);
		}

		if (Scene != null)
		{
			//todo: ??
		}

		foreach (var child in _children)
		{
			if (!child._freed)
			{
				child.Destroy();
			}
		}

		foreach (var component in _components)
		{
			RemoveComponent(component);
		}

		if (Node != null)
		{
			Node.QueueFree();
			Node = null;
		}

		Free();
	}
}
