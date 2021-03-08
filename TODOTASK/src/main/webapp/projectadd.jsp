<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style>


html,body {
  height:100%;
  width:100%;
  margin:0;
}
body {
  display:flex;
}
form {
    margin:auto;
}
</style>

</head>
<body>

	<form:form method="GET" action="projectsave" modelAttribute="project">
		<div class="form-group">
			ID :
			<form:input path="id" />
			<br> ProjectName :
			<form:input path="projectName" placeholder="Project Name" />
			<br>
		</div>
		<button type="submit" class="btn btn-primary value="Save">Submit</button>

	</form:form>

</body>
</html>