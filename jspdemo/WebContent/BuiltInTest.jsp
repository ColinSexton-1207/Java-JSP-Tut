<html>

<body>
	<h3>JSP Built-In Objects</h3>
	<p>Request user agent: <%= request.getHeader("User-Agent") %></p>
	<br/><br/>
	<p>Request language: <%= request.getLocale() %></p>
</body>
</html>