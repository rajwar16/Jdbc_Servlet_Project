package com.bridgelabz.Employee.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EmployeeLogout extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 response.setContentType("text/html");  
         PrintWriter out=response.getWriter();  
         String logoutmessage="You are successfully logged out!";
         //out.print("<body><h1 style='color:red;margin-left:150px'>You are successfully logged out!</h1></body>");   
         request.setAttribute("logoutMessage", logoutmessage);
        
         
         HttpSession session=request.getSession(); 
         System.out.println("before user id"+session.getAttribute("UserId"));
         session.removeAttribute("UserId");
         System.out.println("before"+session);
         
         session.invalidate();
         
         RequestDispatcher requestDispatcher= request.getRequestDispatcher("LoginController");
         requestDispatcher.include(request, response);
         
        /* session=request.getSession();  
         System.out.println(session);*/
         out.close();  
	}
}
