<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.ResultSet"
	import="com.bridgelabz.Employee.model.EmployeeDeatails1"%>
	<%@page import="java.util.Iterator"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
					<%
					/*EmployeeDeatails1 employeeDeatails1=new EmployeeDeatails1(); */
					ArrayList<EmployeeDeatails1> arrayList=(ArrayList) request.getAttribute("arrayList");
					//out.print(arrayList);
					EmployeeDeatails1 employeeDeatails1;
					Iterator iterator=arrayList.iterator();
        			while (iterator.hasNext()) 
        			{
        					
        					String name=(String)request.getParameter("employeeNameSearch");
        					System.out.print(name);
        					employeeDeatails1=(EmployeeDeatails1)iterator.next();
        					String employeeName = employeeDeatails1.getEmployeeName();
        					
        					int id = employeeDeatails1.getId();
        					String gender = employeeDeatails1.getGender();
        					String emailId = employeeDeatails1.getEmailId();
        					String address = employeeDeatails1.getAddress();
        					String specialized = employeeDeatails1.getSpecialized();
        					String language = employeeDeatails1.getLanguage();
        					long contactNo = employeeDeatails1.getContactNo();
        					float salary = employeeDeatails1.getSalary();
        					int age = employeeDeatails1.getAge();
        		%>
					employeeName= <%= employeeName%><br>
					id = <%= employeeDeatails1.getId() %><br>
					gender = <%= employeeDeatails1.getGender() %><br>
					emailId = <%= employeeDeatails1.getEmailId() %><br>
					address = <%= employeeDeatails1.getAddress() %><br>
					specialized = <%= specialized %><br>
					language = <%= language %><br>
					contactNo = <%= contactNo %><br>
					salary = <%= salary %><br>
					age = <%= age %><br>
				<%
        					}
    			%>
</body>
</html>