package com.webapp.todo;

import java.util.concurrent.atomic.AtomicInteger;

public class Todo {
	private String name;
	private String category;
	static AtomicInteger nextId = new AtomicInteger();
	private final long ID;

	public Todo(String name, String category) {
		super();
		this.name = name;
		this.category = category;
		ID = nextId.incrementAndGet();
	}

	@Override
	public String toString() {
		return String.format("Todo [name=%s, category=%s, ID=%s]", name, category, ID);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getId() {
		return ID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Todo other = (Todo) obj;
		if (ID != other.ID)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}

}
