<%@page import="java.util.ArrayList" %>

<html>

<body>
	<!-- Create HTML form -->
	<form action="ToDoDemo.jsp">
		Add new item: <input type="text" name="item"/>
		<input type="submit" value="Submit"/>
	</form>
	
	<!--  Add new item to "To Do" list -->
	<%
		// Get the ToDo items from the session
		ArrayList<String> items = (ArrayList<String>) session.getAttribute("myToDoList");
		
		// If the ToDo items doesn't exist, then create a new one
		if(items == null) {
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items);
		}
		
		// See if there is form data to add
		String item = request.getParameter("item");
		
		if((item != null) && (!item.trim().equals("")) && (!items.contains(item))) { 
			items.add(item.trim());
		} 
	%>
	
	<!--  Display all "To Do" items from session -->
	<hr>
	<b>To Do List Items:</b>
	<br/>
	<ol>
		<%
			for(String temp : items) {
				out.println("<li>" + temp + "</li>");
			}
		%>
	</ol>
</body>
</html>