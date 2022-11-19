<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Student MVC Example</title>
</head>
<body>
	<h2>Student Table Demo</h2>
	<hr/>
	<br/>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email Addr.</th>
		</tr>
		<c:forEach var="tempStudent" items="${studentList}">
			<tr>
				<td>${tempStudent.firstName}</td>
				<td>${tempStudent.lastName}</td>
				<td>${tempStudent.emailAddress}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>