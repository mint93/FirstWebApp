<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

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
<%@ include file="../common/footer.jspf"%>