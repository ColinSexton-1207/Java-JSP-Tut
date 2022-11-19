<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<title>Split & Join Function Test</title>
</head>
<body>
	<c:set var="data" value="Tokyo, Beijing, London, Paris"/>
	
	<h3>Split Demo</h3>
	<c:set var="citiesArray" value="${fn:split(data, ',')}"/> <!-- Splits at the comma -->
	<!-- Print out array to ensure it's seperated properly -->
	<c:forEach var="tempCity" items="${citiesArray}">
		${tempCity}<br/>
	</c:forEach>

	<h3>Join Demo</h3>
	<c:set var="fun" value="${fn:join(citiesArray, ', ')}"/>
	Result of joining: ${fun}
</body>
</html>