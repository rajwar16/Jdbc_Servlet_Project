package com.bridgelabz.Employee.conttroler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DetailsController extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse  response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher1=request.getRequestDispatcher("EmployeeDetails.jsp");
		requestDispatcher1.include(request, response);
	}
}
