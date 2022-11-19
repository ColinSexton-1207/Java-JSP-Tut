<html>
<head>
	<title>Student Confirmation Title</title>
</head>
<body>
	<p>The student is confirmed: ${ param.firstName } ${ param.lastName }</p>
	<br/>
	<p>The student's country: ${ param.country}</p>
	<br/>
	<!-- Display list of favorite languages ("favoriteLanguage") -->
	<p>
		The student's favorite language(s): <br/>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
			
			if(langs != null) {
				for(String tempLang : langs) {
					out.println("<li>" + tempLang + "</li>");
				}
			}
			else
				out.println("No languages selected...");
		%>
	</p>
</body> 
</html>