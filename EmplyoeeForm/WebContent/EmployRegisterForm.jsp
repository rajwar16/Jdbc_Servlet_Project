<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/design" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/header-basic.css">
<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
<style type="text/css">
button 
{
	border: none;
	border-radius: 8px;
	color: white;
	padding: 13px 30px;
	text-align: center;
	text-decoration: none;
	background-color: #292c2f;
	display: inline-block;
	font-size: 16px;
}

input, input[type="number"], input[type="password"], input[type="email"],
	input[type="text"] {
	-webkit-rtl-ordering: logical;
	user-select: text;
	cursor: auto;
}

input[type=submit], input[type=reset] {
	margin-left: 00px;
	border: none;
	border-radius: 8px;
	color: white;
	padding: 13px 130px;
	text-align: center;
	text-decoration: none;
	background-color: #292c2f;
	display: inline-block;
	font-size: 16px;
}

/* tr:hover
{
 	background-color: #1E90FF
}
 */
tr {
	text-align: left;
	
	font-size: 18px;
}

td {
	
	text-align: left;
	font-size: 18px;
}

#errorBox {
	color: #F00;
}
</style>

<script type="text/javascript">
	function validId() {
		var empId = document.getElementById("empId").value;
		if (empId == "") {
			var message = "*User Id should not be empty";
			document.getElementById("p1").innerHTML = message;
			document.getElementById("empId").style.borderColor = "red";
			return false;
		} else {
			document.getElementById("p1").innerHTML = "";
			document.getElementById("empId").style.borderColor = "green";
			return true;
		}
		return true;
	}

	function validEmpName() {
		var empName = document.getElementById("empName").value;
		if (empName == "") {
			var message = "*Name should not be empty";
			document.getElementById("p2").innerHTML = message;
			document.getElementById("empName").style.borderColor = "red";
			return false;
		} else {
			document.getElementById("p2").innerHTML = "";
			document.getElementById("empName").style.borderColor = "green";
			return true;
		}
		return true;
	}

	function validPassword() {
		var password = document.getElementById("Password").value;

		if (password == "") {

			var message = "*Password should not be empty";
			document.getElementById("p3").innerHTML = message;
			document.getElementById("Password").style.borderColor = "red";
			return false;
		} else if (password.length < 6) {
			var message = "*Password should be greater than 6";
			document.getElementById("p3").innerHTML = message;
			document.getElementById("Password").style.borderColor = "red";
			return false;
		} else {
			document.getElementById("p3").innerHTML = "";
			document.getElementById("Password").style.borderColor = "green";
			return true;
		}
		return true;
	}
	
	
	function validGender() {
		var password = document.getElementById("Password").value;

		if (password == "")
		{
			var message = "*Please choose your Gender: Male or Female";
			document.getElementById("p4").innerHTML = message;
			document.getElementById("Password").style.borderColor = "red";
			return false;
		}
		else {
			document.getElementById("p4").innerHTML = "";
			document.getElementById("Password").style.borderColor = "green";
			return true;
		}
		return true;
	}
	
	function validEmpAge() {
		var age = document.getElementById("age").value;

		if (age == "")
		{
			var message = "*Age should not be empty";
			document.getElementById("p5").innerHTML = message;
			document.getElementById("age").style.borderColor = "red";
			return false;
		}
		else {
			document.getElementById("p5").innerHTML = "";
			document.getElementById("age").style.borderColor = "green";
			return true;
		}
		return true;
	}
	
	function validEmail() {
		var emailId = document.getElementById("emialId").value;

		if (emailId == "")
		{
			var message = "*Email Id should not be empty";
			document.getElementById("p6").innerHTML = message;
			document.getElementById("emialId").style.borderColor = "red";
			return false;
		}
		else {
			document.getElementById("p6").innerHTML = "";
			document.getElementById("emialId").style.borderColor = "green";
			return true;
		}
		return true;
	}
	
	function validAddress() {
		var address = document.getElementById("address").value;

		if (address == "")
		{
			var message = "*Address Field should not be empty";
			document.getElementById("p7").innerHTML = message;
			document.getElementById("address").style.borderColor = "red";
			return false;
		}
		else {
			document.getElementById("p7").innerHTML = "";
			document.getElementById("address").style.borderColor = "green";
			return true;
		}
		return true;
	}
	
	function validContactNo() {
		var contactNo = document.getElementById("contactNo").value;

		if (contactNo == "")
		{
			var message = "*contact Number should not be empty";
			document.getElementById("p9").innerHTML = message;
			document.getElementById("contactNo").style.borderColor = "red";
			return false;
		}
		else {
			document.getElementById("p9").innerHTML = "";
			document.getElementById("contactNo").style.borderColor = "green";
			return true;
		}
		return true;
	}
	function validSalary() {
		var salary = document.getElementById("salary").value;

		if (salary == "")
		{
			var message = "*Salary should not be empty";
			document.getElementById("p10").innerHTML = message;
			document.getElementById("salary").style.borderColor = "red";
			return false;
		}
		else {
			document.getElementById("p10").innerHTML = "";
			document.getElementById("salary").style.borderColor = "green";
			return true;
		}
		return true;
	}
	
	function validForm() {
		var empId = validId();
		var empName = validEmpName();
		var password=validPassword();
		var gender=validGender();
		
		if (empId == true && empName == true && password==true && gender==true) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
	<header class="header-basic">
	<div class="header-limiter">
		<h1><a href="#">Bridge<span>Labz</span></a></h1>
			<nav>
				<%
					Integer sessionId=(Integer)session.getAttribute("UserId");
					if(sessionId!=null)
					{
				%>
					<a href="welcome.jsp">Home</a>
					<a href="AddEmployeeController">Add Employee</a>
					<a href="EmployeeDetails">Employee Details</a>
				<%
					}
				%>
					
					<a href="#">About</a>
					<a href="#">Contact</a>
					
				<%
					Integer sessionId1=(Integer)session.getAttribute("UserId");
					if(sessionId1!=null)
					{
				%>
					<a href="EmployeeLogout">Logout</a>
					
				<%
					}
				%>
					
				</nav>
			</div>

	<!-- div class="container">
		<div style="height: 696px; width: 1274px; background-color: gray; color: white; float: left;">

		<div class="container"
			style="height: 696px; width: 820px; background-color: white; color: black; float: left;">
			<div class="container" style="height: 600px; width: 600px; background-color: #33A8FF; color: black; float: left;"> -->

			<form class="container" onsubmit="return validForm();"
				action="RegistrationForm" method="post" name="registration">

				<table class="header-limiter"  class="table table-striped"
					style="height: 800px; width: 650px ; margin-left: 200px">

					<tr>
						<th colspan="2"><h3>Fill Employee Details</h3></th>
					</tr>

					<tr>
						<td>Employee ID :</td>
						<td><input type='number' id="empId" name='employeeid'
							size='30' style="width:345px" placeholder="Id" onblur="return validId()"><br>
							<p id="p1" style="color: red; font-size: 13px"></p></td>
					</tr>

					<tr>
						<td>Employee Name:</td>
						<td><input type='text' name='employeeName' size='30'
							placeholder="Name" onblur="return validEmpName()" id="empName"><br>
							<p id="p2" style="color: red; font-size: 13px"></p></td>
					</tr>
					 
					<tr>
						<td>Gender :</td>
						<td><input type='radio' name='gender' value='male'
							onblur="return validEmpName()" id="empgender"> Male  
							<input type='radio' name='gender' value='female' id="empgender"> Female
							<p id="p4" style="color: red; font-size: 13px"></p></td>
					</tr>

					<tr>
						<td>Age</td>
						<td><input type='text' name='age' size='30' placeholder="Age"
							onblur="return validEmpAge()" id="age"><br>
							<p id="p5" style="color: red; font-size: 13px"></p></td>
					</tr>

					<tr>
						<td>Email Id :</td>
						<td><input type='email' name='emailId' size='30'
							placeholder="Email" onblur="return validEmail()" id="emialId"><br>
							<p id="p6" style="color: red; font-size: 13px"></p></td>
					</tr>


					<tr>
						<td>Address :</td>
						<td><textarea name="address"
								style="width: 348px; height: 50px;" placeholder="Enter Address"
								onblur="return validAddress()" id="address"></textarea><br>
								<p id="p7" style="color: red; font-size: 13px"></p></td>
					</tr>


					<tr>
						<td>Specialized :</td>
						<td><select name='specialized' onblur="return validspcialized()" id="spcialized">
								<option>Department</option>
								<option>Computer</option>
								<option>Civil</option>
								<option>E & TC</option>
								<option>Mechanical</option>
								<option>IT</option>
						</select><!-- <p id="p7" style="color: red; font-size: 13px"></p> --></td>
					</tr>

					<tr>
						<td>Language known :</td>
						<td><select name='language' onblur="return validlanguage()" id="language">

								<option>Language</option>
								<option>java</option>
								<option>Hindi</option>
								<option>French</option>
								<option>Spanish</option>
								<option>japanies</option>
						</select><!-- <p id="p8" style="color: red; font-size: 13px"></p></td> -->
					</tr>

					<tr>
						<td>Contact No :</td>
						<td><input type='text' name='contactNo' size='30'
							onblur="return validContactNo()" id="contactNo"><br>
							<p id="p9" style="color: red; font-size: 13px"></p></td>
					</tr>

					<tr>
						<td>Salary :</td>
						<td><input type='text' name='salary' size='30'
							onblur="return validSalary()" id="salary"><br>
							<p id="p10" style="color: red; font-size: 13px"></p></td>
					</tr>

					<tr>
						<td>
						<!-- <button type="submit" formaction="RegisterForm.html">Reset</button> -->
						<input type="reset" value="Reset" style="padding: 13px 100px;">
						</td>
						<td><input type="submit" value="Add Employee"></td>
					</tr>
				</table>

				<!-- <div
					style="height: 50px; width: 400px; background-color: white; color: black; float: left; margin-left: 100px; margin-top: 50px">
					<h4>
						Already have an account?

						<button style="" type="submit" formaction="EmployLoginForm.jsp">Login</button>
					</h4>
				</div> -->
			</form></header>
	<!-- </div> -->

</body>
</html>