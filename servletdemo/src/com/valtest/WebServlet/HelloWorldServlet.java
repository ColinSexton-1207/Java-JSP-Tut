package com.valtest.WebServlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloWorldServlet")
public class HelloWorldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public HelloWorldServlet() { super(); }
    public void destroy() { super.destroy(); }
    public void init() throws ServletException {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Set Content Type
		response.setContentType("text/html");
		
		// Get printWriter
		PrintWriter out = response.getWriter();
		
		// Generate HTML content
		out.println("<html><body>");
		
		out.println("<h2>Hello World!</h2>");
		out.println("<hr/>");
		out.println("<p>Time on the server is: " + new java.util.Date() + "</p>");
		
		out.println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
