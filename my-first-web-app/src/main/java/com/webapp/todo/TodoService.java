package com.webapp.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {
	private static List<Todo> todos = new ArrayList<>();
	
	static {
		todos.add(new Todo("Lear Wepp Application development"));
		todos.add(new Todo("Lear Spring MVC"));
		todos.add(new Todo("Lear Spring Rest Services"));
	}
	
	public List<Todo> retrieveTodos() {
		return todos;
	}
}
