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
<body>
	<table border="1" class="table table-hover">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Delete</th>
			<th>ViewTasks</th>
		</tr>
		<c:forEach items="${plist}" var="p">
			<tr>
				<td>${p.id }</td>
				<td>${p.projectName }</td>
				<td><button>
						<a href="projectdelete${p.id }">Delete</a>
					</button></td>
				<td><button>
						<a href="viewtask${p.id }">ViewTasks</a>
					</button>
			</tr>
		</c:forEach>

	</table>
	<br>
	<button>
	<a href="projectadd">Add</a>
	</button>

</body>
</html>