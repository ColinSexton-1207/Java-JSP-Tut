package com.valtest.Student;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentMVCServlet")
public class StudentMVCServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public StudentMVCServlet() { super(); }
    public void destroy() { super.destroy(); }
    public void init() throws ServletException {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get data from helper class
		ArrayList<Student> students = StudentDataUtil.getStudents();
		
		// Add students list to request object
		request.setAttribute("studentList", students);
		
		// Get request disp
		RequestDispatcher disp = request.getRequestDispatcher("/ViewStudentsTwo.jsp");
		
		// Forward to JSP page
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
