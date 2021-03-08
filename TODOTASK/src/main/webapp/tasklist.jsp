<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
button:hover {
        transform: scale(1.05);
    }

</style>
</head>
<br>Open Tasks
<br>
<body>
	<table border="1" class="table table-hover">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Status</th>
			<th>CloseTask</th>
		</tr>
		<c:forEach items="${project.tasks }" var="t">
			<tr>
				<td>${t.id }</td>
				<td>${t.taskName }</td>
				<td>${t.status }</td>
				<td><button>
						<a href="task${t.id}delete${project.id}">Delete</a>
					</button></td>
				<td><button>
						<a href="task${t.id}close${project.id}">Completed</a>
					</button>
			</tr>
		</c:forEach>

	</table>
	<button>
		<a href="addtask${project.id}">Add</a>
	</button>
	<br>
	<br>Closed Tasks
	<br>
	<table border="1">
		<tr>
			<th>ID</th>
			<td>Name</td>
			<th>Status</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${project.tasks }" var="t">
			<c:if test="${t.status==false}">
				<tr>
					<td>${t.id }</td>
					<td>${t.taskName }</td>
					<td>${t.status }</td>
					<td><button>
							<a href="task${t.id }delete${project.id }">Delete</a>
						</button></td>
				</tr>
			</c:if>
		</c:forEach>
	</table>

</body>
</html>