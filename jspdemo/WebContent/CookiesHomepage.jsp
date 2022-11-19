<%@page import="java.net.URLDecoder" %>
<html>
<head>
	<title>Personalized Page</title>
</head>
<body>
	<h3>Training Portal</h3>
	<!-- Read the favorite programming language cookie -->
	<%
		// Default (no cookies present)
		String favLang = "Java";
	
		// Get cookies from browser request
		Cookie[] usrCookies = request.getCookies();
		
		// Find our favorite language cookie
		if(usrCookies != null) {
			for(Cookie tempCookie : usrCookies) {
				if("myApp.favoriteLanguage".equals(tempCookie.getName())) {
					favLang = URLDecoder.decode(tempCookie.getValue());
					break;
				}
			}
		}
	%>
	
	<!--  Now show a personalize page using "favLang" variable -->
	<h4>New Books for <%= favLang %></h4>
	<ul>
		<li>Blah, blah, blah</li>
		<li>Blah, blah, blah v2</li>
	</ul>
	<h4>Latest News Reports for <%= favLang %></h4>
	<ul>
		<li>Blah, blah, blah</li>
		<li>Blah, blah, blah v2</li>
	</ul>
	<h4>Hot Jobs for <%= favLang %></h4>
	<ul>
		<li>Blah, blah, blah</li>
		<li>Blah, blah, blah v2</li>
	</ul>
	
	<!-- Re-personalize Page -->
	<a href="CookiesPersonalizeForm.html">Personalize this page</a>
</body>
</html>