<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px;
	background-color: #f5f5f5;
}
</style>
</head>

<body>

	<nav class="navbar navbar-default">

		<a href="/" class="navbar-brand">Brand</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/list-todo.do">Todos</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/login.do">Login</a></li>
		</ul>

	</nav>

	<div class="container">
		<form action="/login.do" method="post">
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			Enter your name <input type="text" name="name" /> Enter your password
			<input type="password" name="pass" /> <input type="submit"
				value="login" />
		</form>
	</div>

	<footer class="footer">
		<div>footer content</div>
	</footer>

	<script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/1.11.1/jquery.min.js"></script>

</body>

</html>