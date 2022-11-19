<html>

<body>
	<%!
		String makeLowerCase(String data) {
			return data.toLowerCase();		
		}
	%>
	
	<p>Lowercase "Hello World": <%= makeLowerCase("Hello World") %></p>
</body>
</html>