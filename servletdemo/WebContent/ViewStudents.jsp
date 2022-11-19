<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>MVC Demo</title>
</head>
<body>
	<c:forEach var="tempStudent" items="${studentList}">
		${tempStudent} <br/>
	</c:forEach>
</body>
</html>