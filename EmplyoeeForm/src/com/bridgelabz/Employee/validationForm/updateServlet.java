package com.bridgelabz.Employee.validationForm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bridgelabz.Employee.model.EmployeeDeatails1;

public class updateServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		Connection connection=null;
		PreparedStatement preparedStatemnt=null;
		PrintWriter printWriter=response.getWriter();
		
		String employeeName=request.getParameter("n1");
		System.out.println(employeeName);
	
		ArrayList<EmployeeDeatails1> arrayList=new ArrayList<>();

		String query="select * from StudentData.EmployeeFormData where Employee_Name='"+employeeName+"'";

		//String query="UPDATE StudentData.EmployeeFormData SET Employee_Name = '"+employeeName1+"' WHERE Employee_ID = 7";
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=pooja");
			System.out.println("Connection establish...");
			preparedStatemnt=connection.prepareStatement(query);
			ResultSet resultSet=preparedStatemnt.executeQuery();

			while(resultSet.next())
			{
				EmployeeDeatails1 employeeDeatails1=new EmployeeDeatails1();
				employeeDeatails1.setId(resultSet.getInt("Employee_ID"));
				employeeDeatails1.setEmployeeName(resultSet.getString("Employee_Name"));
				employeeDeatails1.setGender(resultSet.getString("Gender"));
				employeeDeatails1.setEmailId(resultSet.getString("Email_ID"));
				employeeDeatails1.setAddress(resultSet.getString("Address"));
				employeeDeatails1.setSpecialized(resultSet.getString("Specialized"));
				employeeDeatails1.setLanguage(resultSet.getString("Language"));
				employeeDeatails1.setContactNo(resultSet.getInt("Contact_No"));
				employeeDeatails1.setSalary(resultSet.getFloat("Salary"));
				employeeDeatails1.setAge(resultSet.getInt("Age"));

				arrayList.add(employeeDeatails1);
			}
			
			request.setAttribute("arrayList1", arrayList);
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("DetailsController.jsp");
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





/*response.setContentType("text/html;charset=UTF-8");
			Connection connection=null;
			PreparedStatement preparedStatemnt=null;
			PrintWriter printWriter=response.getWriter();
			String employeeName1=request.getParameter("n1");
			ArrayList<EmployeeDeatails1> arrayList=new ArrayList<>();

			String query="select * from StudentData.EmployeeFormData where Employee_Name='"+employeeName1+"'";

			//String query="UPDATE StudentData.EmployeeFormData SET Employee_Name = '"+employeeName1+"' WHERE Employee_ID = 7";
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=pooja");
				System.out.println("Connection establish...");
				preparedStatemnt=connection.prepareStatement(query);
				ResultSet resultSet=preparedStatemnt.executeQuery();

				while(resultSet.next())
				{
					EmployeeDeatails1 employeeDeatails1=new EmployeeDeatails1();
					employeeDeatails1.setId(resultSet.getInt("Employee_ID"));
					employeeDeatails1.setEmployeeName(resultSet.getString("Employee_Name"));
					employeeDeatails1.setGender(resultSet.getString("Gender"));
					employeeDeatails1.setEmailId(resultSet.getString("Email_ID"));
					employeeDeatails1.setAddress(resultSet.getString("Address"));
					employeeDeatails1.setSpecialized(resultSet.getString("Specialized"));
					employeeDeatails1.setLanguage(resultSet.getString("Language"));
					employeeDeatails1.setContactNo(resultSet.getInt("Contact_No"));
					employeeDeatails1.setSalary(resultSet.getFloat("Salary"));
					employeeDeatails1.setAge(resultSet.getInt("Age"));

					arrayList.add(employeeDeatails1);
				}*/

//request.setAttribute("arrayList1", arrayList);

//response.getWriter().write(employeeName1);
/*	
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
		}*/

