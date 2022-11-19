<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<title>JSTL Function Tests</title>
</head>
<body>
	<c:set var="data" value="kill me"/>
	Length of the string <b>${data}</b>: ${fn:length(data)}
	<br/>
	<br/>
	Upper case version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
	<br/>
	<br/>
	Does the string <b>${data}</b> start with <b>C</b>: ${fn:startsWith(data, "C")}
</body>
</html>