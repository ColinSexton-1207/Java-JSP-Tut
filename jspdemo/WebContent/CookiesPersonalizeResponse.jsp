<%@page import="java.net.URLEncoder" %>
<html>
<head>
	<title>Confirmation</title>
</head>
	<%
		// Read form data
		String favLang = request.getParameter("favoriteLanguage");
	
		// Encode cookie data (handles case of whitespace)
		favLang = URLEncoder.encode(favLang, "UTF-8");
	
		// Create the cookie
		Cookie cookie = new Cookie("myApp.favoriteLanguage", favLang);
		
		// Set the life span of the cookie (total number of seconds)
		cookie.setMaxAge(60*5);
		
		// Send cookie to the browser
		response.addCookie(cookie);
	%>
	
<body>
	Thanks! We set your favorite language to: ${ param.favoriteLanguage }
	<br/>
	<br/>
	<a href="CookiesHomepage.jsp">Return to Homepage</a>
</body>
</html>