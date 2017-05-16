package com.bridgelabz.Employee.validationForm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class updateServlet2 extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection connection=null;
		PreparedStatement preparedStatemnt=null;

		HttpSession httpSession = request.getSession(false);

		int uid =(int) httpSession.getAttribute("UserId");

		String query="insert into StudentData.EmployeeFormData values(?,?,?,?,?,?,?,?,?,?,?)";

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
			preparedStatemnt.setString(6, "computer");
			preparedStatemnt.setString(7, "java");
			preparedStatemnt.setLong(8, contactNo);
			preparedStatemnt.setInt(9, age);
			preparedStatemnt.setFloat(10, salary);
			preparedStatemnt.setInt(11, 2);
			preparedStatemnt.execute();
			System.out.println("Query updated successfully.....");

			response.getWriter().write("updated successfully...");
		} 
		catch (ClassNotFoundException | SQLException e) {
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

