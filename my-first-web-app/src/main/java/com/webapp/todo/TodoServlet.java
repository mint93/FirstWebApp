package com.webapp.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//
@WebServlet(urlPatterns = "/todo.do")
public class TodoServlet extends HttpServlet {
	private TodoService TodoService = new TodoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("todos", TodoService.retrieveTodos());
		request.getRequestDispatcher("/WEB-INF/views/todo.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String newTodo = request.getParameter("todo");
		TodoService.addTodo(new Todo(newTodo));
		response.sendRedirect("/todo.do");
	}
	
}
