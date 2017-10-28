<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello from JSP</title>
</head>
<body>
	<form method="post">
	<p><font color="red">${errorMessage}</font></p>
	Enter your name <input type="text" name="name"/> Enter your password <input type="password" name="pass"/> <input type="submit" value="login"/>
	</form>
</body>
</html>