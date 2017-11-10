package com.webapp.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {
	private static List<Todo> todos = new ArrayList<>();
	
	static {
		todos.add(new Todo("Lear Wepp Application development", "Study"));
		todos.add(new Todo("Lear Spring MVC", "Study"));
		todos.add(new Todo("Lear Spring Rest Services", "Study"));
	}
	
	public List<Todo> retrieveTodos() {
		return todos;
	}
	
	public void addTodo(Todo todo) {
		todos.add(todo);
	}
	
	public void deleteTodo(String id) {
		todos.removeIf(obj -> obj.getId() == Long.valueOf(id).longValue());
	}
}
