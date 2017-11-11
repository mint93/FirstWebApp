<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

	<div class="container">
		<H1>Welcome ${name}</H1>
			<!-- parametr name bedzie widoczny caly czas, nawet po odswierzeniu strony,
				 poniewaz jest on przechowywany w sesji, a nie w requescie -->
	<table class="table table-striped">
		<caption>Your todos are:</caption>
		<thead>
			<th>Description</th>
			<th>Category</th>
			<th>Actions</th>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.getName()}</td>
				<td>${todo.getCategory()}</td>
				<td><a class="btn btn-danger" href="/delete-todo.do?todo=${todo.getId()}">Delete</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<a class="btn btn-success" href="/add-todo.do">Add New Todo</a>
	
	</div>

<%@ include file="../common/footer.jspf"%>


