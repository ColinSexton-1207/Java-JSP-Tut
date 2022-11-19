package com.valtest.WebServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestParamServlet")
public class TestParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestParamServlet() { super(); }
    public void destroy() { super.destroy(); }
    public void init() throws ServletException {}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		ServletContext context = getServletContext(); // Inherits from HTTPServlet
		String maxCartSize = context.getInitParameter("maxShoppingCartSize");
		String teamName = context.getInitParameter("teamName");
		
		out.println("<html><body>");
		
		out.println("Max Cart: " + maxCartSize + "<br/>");
		out.println("Team Name: " + teamName + "<br/>");
		
		out.println("</body></html>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
