<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.bridgelabz.Employee.model.EmployeeDeatails1"
						 import="java.util.ArrayList"
						 import="java.sql.ResultSet"
						 import="java.util.Iterator"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!String gender;
	String emailId;
	String address;
	String specialized;
	String language;
	long contactNo;
	float salary;
	int age;
	String employeeName;
	int id;
	int tid;
	EmployeeDeatails1 employeeDeatails1;%>
	
				<%
					System.out.println("pooja rajwar");
					ArrayList<EmployeeDeatails1> arrayList = (ArrayList<EmployeeDeatails1>) request.getAttribute("arrayList2");
									
					Iterator iterator = arrayList.iterator();
					while (iterator.hasNext()) {
						EmployeeDeatails1 employeeDeatails1 = (EmployeeDeatails1) iterator.next();

						employeeName = employeeDeatails1.getEmployeeName();
						id = employeeDeatails1.getId();
						gender = employeeDeatails1.getGender();
						emailId = employeeDeatails1.getEmailId();
						address = employeeDeatails1.getAddress();
						specialized = employeeDeatails1.getSpecialized();
						language = employeeDeatails1.getLanguage();
						contactNo = employeeDeatails1.getContactNo();
						salary = employeeDeatails1.getSalary();
						age = employeeDeatails1.getAge();
					}
				%>

	<div style=''>
		<table class='table table-striped'>
			<tr>
				<td>employee Name:</td>
				<td><%=employeeName%></td>
			</tr>
			<tr>
				<td>employee id:</td>
				<td><%=id%></td>
			</tr>
			<tr>
				<td>Gender :</td>
				<td><%=gender%></td>
			</tr>
			<tr>
				<td>age :</td>
				<td><%=age%></td>
			</tr>
			<tr>
				<td>email Id :</td>
				<td><%=emailId%></td>
			</tr>
			<tr>
				<td>address :</td>
				<td><%=address%></td>
			</tr>
			<tr>
				<td>contactNo :</td>
				<td><%=contactNo%></td>
			</tr>
			<tr>
				<td>salary :</td>
				<td><%=salary%></td>
			</tr>
		</table>
	</div>
</body>
</html>