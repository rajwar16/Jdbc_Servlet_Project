package com.bridgelabz.Employee.model;

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

public class UserRegistration extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection connection=null;
		PreparedStatement preparedStatemnt=null;
		String query="insert into StudentData.User_info values(?,?,?)";
		
		String id1=request.getParameter("userId");
		int id=Integer.parseInt(id1);
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=pooja");
			System.out.println("Connection establish...");
			preparedStatemnt=connection.prepareStatement(query);

			preparedStatemnt.setInt(1, id);
			preparedStatemnt.setString(2, userName);
			preparedStatemnt.setString(3, password);
			
			preparedStatemnt.execute();

			System.out.println("Query Executed successfully.....");
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("LoginController");
			requestDispatcher.forward(request, response);
		}catch (ClassNotFoundException | SQLException e) {
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
