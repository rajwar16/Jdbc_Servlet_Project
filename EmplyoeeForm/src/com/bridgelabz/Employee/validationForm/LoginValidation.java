package com.bridgelabz.Employee.validationForm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bridgelabz.Employee.model.LoginForm;

public class LoginValidation extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("password");
		
		System.out.println(userName);
		System.out.println(passWord);
		
		if(userName==null || userName.length()==0 || passWord==null || passWord.length()==0)
		{
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("LoginController");
			requestDispatcher.forward(request, response);
		}
		else
		{
			request.setAttribute("userName", userName);
			request.setAttribute("passWord", passWord);
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("LoginForm?username=userName&password=password");
			requestDispatcher.forward(request, response);
		}
	}
}
