package com.bridgelabz.Employee.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegistrationForm extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection connection=null;
		PreparedStatement preparedStatemnt=null;
		String query="UPDATE Customers SET Employee_ID = ?, Employee_Name = ? , Gender = ? , Email_ID= ? WHERE CustomerID = 1;";
		//ServletContext servletContext=getServletContext();
		HttpSession httpSession = request.getSession(false);
		
		int uid =(int) httpSession.getAttribute("UserId");
		
		String id1=request.getParameter("employeeid");
		int id=Integer.parseInt(id1);
		String employeeName=request.getParameter("employeeName");
		String gender=request.getParameter("gender");
		String emailId=request.getParameter("emailId");
		String address=request.getParameter("address");
		String specialized=request.getParameter("specialized");
		String language=request.getParameter("language");
		String contactNo1=request.getParameter("contactNo");
		long contactNo=Long.parseLong(contactNo1);
		String age1=request.getParameter("age");
		int age=Integer.parseInt(age1);
		String salary1=request.getParameter("salary");
		float salary=Float.parseFloat(salary1);
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=pooja");
			System.out.println("Connection establish...");
			preparedStatemnt=connection.prepareStatement(query);

			preparedStatemnt.setInt(1, id);
			preparedStatemnt.setString(2, employeeName);
			preparedStatemnt.setString(3, gender);
			preparedStatemnt.setString(4, emailId);
			preparedStatemnt.setString(5, address);
			preparedStatemnt.setString(6, specialized);
			preparedStatemnt.setString(7, language);
			preparedStatemnt.setLong(8, contactNo);
			preparedStatemnt.setInt(9, age);
			preparedStatemnt.setFloat(10, salary);
			preparedStatemnt.setInt(11, uid);
			preparedStatemnt.execute();

			System.out.println("Query Executed successfully.....");
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("EmployeeDetails");
			requestDispatcher.forward(request, response);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if(connection!=null)
			{
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (preparedStatemnt!=null) 
			{
				try {
					preparedStatemnt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
