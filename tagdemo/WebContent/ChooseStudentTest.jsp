<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList, com.valTest.TagDemo.Student" %>
<html>
<head>
	<title>Student Test</title>
</head>
<%
	// Create sample data (usually provided by MVC)
	ArrayList<Student> data = new ArrayList<>();

	data.add(new Student("Colin", "Sexton", true));
	data.add(new Student("Trinity", "Sexton", true));
	data.add(new Student("Brooke", "Marx", false));
	
	pageContext.setAttribute("myStudents", data);
%>
<body>
	<table border="1">
		<tr>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Gold Customer</td>
		</tr>
		<c:forEach var="tempStudent" items="${myStudents}">
			<tr>
				<td>${tempStudent.firstName}</td>
				<td>${tempStudent.lastName}</td>
				<td>
					<c:choose>
						<c:when test="${tempStudent.goldCustomer}">
							Special Discount
						</c:when>
						<c:otherwise>
							---
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>