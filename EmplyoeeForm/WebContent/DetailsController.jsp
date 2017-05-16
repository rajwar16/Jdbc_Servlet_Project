<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.bridgelabz.Employee.model.EmployeeDeatails1"
						 import="java.util.ArrayList"
						 import="java.sql.ResultSet"
						 import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
.ui-page-theme-a 
{  background-color: #ededed;
    border-color: #ddd;
    color: #333;
    text-shadow: 0 1px 0 #f3f3f3;
    }

.ui-btn:hover{  background-color: #ededed;
    border-color: #ddd;
    color: #333;
    text-shadow: 0 1px 0 #f3f3f3;
    }
    
td[value]{
    text-align: center; 
}
  
</style>
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
					ArrayList<EmployeeDeatails1> arrayList = (ArrayList<EmployeeDeatails1>) request.getAttribute("arrayList1");
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


	<form
		action="updateServlet2" method="get" name="registration">

		<table
			style="height: 450px; width: 400px;margin-left: 30px;text-align: center;">

			<tr>
				<th colspan="2"><h3>Update Employee Details</h3></th>
			</tr>

			<tr>
				<td>Employee ID :</td>
				<td><input type='number' id="empId" name='employeeid' value="<%=id%>"
					onblur="return validId()"><br>
					<p id="p1" style="color: red; font-size: 13px"></p></td>
			</tr>

			<tr>
				<td>Employee Name:</td>
				<td><input type='text' name='employeeName' value="<%=employeeName%>"
					onblur="return validEmpName()" id="empName"><br>
					<p id="p2" style="color: red; font-size: 13px"></p></td>
			</tr>

			<tr>
				<td>Gender :</td>
				<td><input type='text' name='gender' value="<%=gender%>">
					<p id="p4" style="color: red; font-size: 13px"></p></td>
			</tr>

			<tr>
				<td>Age</td>
				<td><input type='text' name='age' value="<%=age%>"
					onblur="return validEmpAge()" id="age"><br>
					<p id="p5" style="color: red; font-size: 13px"></p></td>
			</tr>

			<tr>
				<td>Email Id :</td>
				<td><input type='email' name='emailId' onblur="return validEmail()" id="emialId" value="<%=emailId%>"><br>
					<p id="p6" style="color: red; font-size: 13px"></p></td>
			</tr>


			<tr>
				<td>Address :</td>
				<td><textarea name="address"
						style="width: 238px; height: 40px;" placeholder="Enter Address" value=""
						onblur="return validAddress()" id="address"><%=address%></textarea><br>
					<p id="p7" style="color: red; font-size: 13px"></p></td>
			</tr>

			<tr>
				<td>Contact No :</td>
				<td><input type='text' name='contactNo' value="<%=contactNo%>"
					onblur="return validContactNo()" id="contactNo"><br>
					<p id="p9" style="color: red; font-size: 13px"></p></td>
			</tr>

			<tr>
				<td>Salary :</td>
				<td><input type='text' name='salary' value="<%=salary%>"
					onblur="return validSalary()" id="salary"><br>
					<p id="p10" style="color: red; font-size: 13px"></p></td>
			</tr>

			<tr>
				<td>
					<!-- <button type="submit" formaction="RegisterForm.html">Reset</button> -->
				</td>
				<td><input type="submit" value="Update" style="padding: 7px 47px; " id="update123" ></td>
			</tr>
		</table>
	</form>

</body>
</html>