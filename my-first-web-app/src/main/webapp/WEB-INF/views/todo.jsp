<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<title>Welcome</title>
</head>
<body>
<p>Welcome ${name}</p>	<!-- parametr name bedzie widoczny caly czas, nawet po odswierzeniu strony,
							 poniewaz jest on przechowywany w sesji, a nie w requescie -->
<p>Your todos are:</p>
<ol>
	<c:forEach items="${todos}" var="todo">
		<li>${todo.getName()} &nbsp; &nbsp; <a href="/delete-todo.do?todo=${todo.getId()}">Delete</a></li>
	</c:forEach>
</ol>
<form action="/todo.do" method="post">
	<input type="text" name="todo"/> <input type="submit" value="add"/>
</form>

<script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.11.1/jquery.min.js"></script>
</body>
</html>

