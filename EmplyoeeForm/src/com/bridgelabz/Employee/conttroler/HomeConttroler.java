package com.bridgelabz.Employee.conttroler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeConttroler extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse  response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher1=request.getRequestDispatcher("welcome.jsp");
		requestDispatcher1.include(request, response);
	}
}
