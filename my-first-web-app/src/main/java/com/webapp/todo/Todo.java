package com.webapp.todo;

public class Todo {
	public String name;

	public Todo(String name) {
		super();
		this.name = name;
	}
	
	@Override
	public String toString() {
		return String.format("Todo [name=%s]", name);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
