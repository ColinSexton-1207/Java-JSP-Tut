package com.valtest.Student;

import java.util.ArrayList;

public class StudentDataUtil {
	public static ArrayList<Student> getStudents() {
		// Create empty list
		ArrayList<Student> students = new ArrayList<>();
		
		// Add sample data
		students.add(new Student("Colin", "Sexton", "colin.sexton@outlook.com"));
		students.add(new Student("Trinity", "Sexton", "trinity.sexton@outlook.com"));
		students.add(new Student("Lincoln", "Garza", "lincoln.garza@outlook.com"));
		
		// Return the list
		return students;
	}
}
