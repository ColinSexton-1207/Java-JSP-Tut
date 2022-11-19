package com.valtest.WebServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MVCDemoServlet")
public class MVCDemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MVCDemoServlet() { super(); }
    public void destroy() { super.destroy(); }
    public void init() throws ServletException {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Add Data
		String[] students = {"Colin", "Trinity", "Brooke", "Shay"};
		request.setAttribute("studentList", students); // Ties into c:forEach on JSP
		
		// Get Request Disp
		RequestDispatcher disp = request.getRequestDispatcher("/ViewStudents.jsp");
		
		// Forward request to JSP
		disp.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
