<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>ForEach JSTL Tag Test</title>
</head>
<%
	// Sample data (bootstrap) instead of using database
	String[] cities = {"Chicago", "New York City", "Philadelphia", "Austin", "Silicon Valley"};

	pageContext.setAttribute("myCities", cities);
%>
<body>
	<c:forEach var="tempCity" items="${myCities}">
		${tempCity} <br/>
	</c:forEach>
</body>
</html>