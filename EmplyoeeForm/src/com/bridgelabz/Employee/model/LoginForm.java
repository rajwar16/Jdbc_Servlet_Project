package com.bridgelabz.Employee.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginForm extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection connection = null;
		PreparedStatement preparedStatemnt = null;
		// PrintWriter printWriter=response.getWriter();
		boolean flag = false;

		String username=(String) request.getAttribute("userName");
		String password=(String) request.getAttribute("passWord");
		
		System.out.println(username);
		System.out.println(password);
		// ServletContext servletContext=getServletContext();
		String query = "select * from StudentData.User_info where UserName='" + username + "' and password='" + password
				+ "'";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=pooja");
			preparedStatemnt = connection.prepareStatement(query);
			ResultSet resultSet = preparedStatemnt.executeQuery();
			while (resultSet.next()) {
				int uid = resultSet.getInt(1);
				String userName1 = resultSet.getString(2);
				String password1 = resultSet.getString(3);

				if (userName1.equals(username) && password1.equals(password)) {
					// sservletContext.setAttribute("UserId", uid);
					HttpSession httpSession = request.getSession();
					httpSession.setAttribute("UserId", uid);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("HomeConttroler");
					flag = true;
					requestDispatcher.forward(request, response);
					System.out.println("login sucessfully....");
				}
			}
			if (flag == false) {
				System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
				request.setAttribute("incorrectMassage", "Sorry incorrect userName and password...");
				// printWriter.println("Sorry incorrect userName and
				// password...");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("LoginController");
				requestDispatcher.forward(request, response);
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (preparedStatemnt != null) {
				try {
					preparedStatemnt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

	}
}
