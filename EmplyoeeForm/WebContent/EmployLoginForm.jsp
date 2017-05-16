<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/design.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/header-basic.css">
<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
<style type="text/css">
button {
	margin-left: "";
	border: none;
	border-radius: 8px;
	color: black;
	padding: 13px 150px;
	text-align: center;
	text-decoration: none;
	background-color: #E7EEF3 ;
	display: inline-block;
	font-size: 16px;
}

input[type=submit]:hover {
    background-color: #E7EEF3; 
    color: black;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
input[type=submit] {
	margin-left:;
	border: none;
	border-radius: 8px;
	color: black;
	padding: 13px 150px;
	text-align: center;
	text-decoration: none;
	background-color: #E7EEF3;
	display: inline-block;
	font-size: 16px;
}
input[type=text]:hover 
{
 /* 	background-color: #4CAF5;  */
    color: black;
	box-shadow: 0 25px 30px 0 rgba(0,0,0,0.24), 0 30px 65px 0 rgba(0,0,0,0.19);
}

input[type=password]:hover 
{
 	color: black;
	box-shadow: 0 25px 30px 0 rgba(0,0,0,0.24), 0 30px 65px 0 rgba(0,0,0,0.19);
}

input[type=text]
{
 /* background-color: #4CAF5;  */
    color: black;
}

input[type=password]
{
 	color: black;
	
}

td {
	color: white;
	padding: 5px 20px;
	text-align: center;
	font-size: 18px;
}
table:hover 
{
	 background-color: #4CAF50; 
     color: white;
	 box-shadow: 0 25px 30px 0 rgba(0,0,0,0.24), 0 30px 65px 0 rgba(0,0,0,0.19);
}
</style>

<script type="text/javascript">
	function validName() {
		var name = document.getElementById("empName").value;
		if (name == "") {
			var message = "*User Id should not be empty";
			document.getElementById("p1").innerHTML = message;
			document.getElementById("empName").style.borderColor = "red";
			return false;
		} else {
			document.getElementById("p1").innerHTML = "";
			document.getElementById("empName").style.borderColor = "green";
			return true;
		}
		return true;
	}

	function validPassword() {
		var password = document.getElementById("Password").value;

		if (password == "") {

			var message = "*Password should not be empty";
			document.getElementById("p2").innerHTML = message;
			document.getElementById("Password").style.borderColor = "red";
			return false;
		} else if (password.length < 6) {
			var message = "*Password should be greater than 6";
			document.getElementById("p2").innerHTML = message;
			document.getElementById("Password").style.borderColor = "red";
			return false;
		} else {
			document.getElementById("p2").innerHTML = "";
			document.getElementById("Password").style.borderColor = "green";
			return true;
		}
		return true;
	}

	function validForm() {
		var name = validName();
		var password = validPassword();

		if (name == true && password == true) {
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
					


				<%
					}
				%> 
				</nav>
			</div>
	<%-- <div class="container text-center" class="container">
		<% String error =(String)request.getAttribute("incorrectMassage"); %><p id="p3" style="color: red">${error}</p>
				
				<div class="container"
					style="height: 450px; width: 1100px; margin-top: 50px;margin-left: 50px ;color: black; float: left;"> --%>
				
				<form action="LoginValidation" method="post" name="myform" id="myForm1" onsubmit="return validForm()">
				
				<div class="header-limiter"
					style="height: 450px; width: 400px; background-color: #33A8FT;scolor: black;margin-top: 100px"> 
					
					<%
					String logoutMessage=(String)request.getAttribute("logoutMessage");
					%>
					
					<p id="p3" style="color: black">${logoutMessage}</p>
					
					<table
						class="header-limiter" style="background-image: url(g2.jpg);height: 400px; width: 450px; margin-top: 50px ; ">
						<tr>
							<td>User Name:</td>

							<td><input type='text' name='userName'
								onblur="return validName()" id="empName">
								<p id="p1" style="color: white"></p></td>
						</tr>
						
						<tr>
							<td>Password :</td>
							<td><input type='password' name='password'
								onblur="validPassword()" id="Password">
								<p id="p2" style="color: white"></p></td>
						</tr>
						<tr>
							<td colspan="2">
							<input type="submit" value="Submit" style="background-color: #E7EEF3;"></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;">Don't have an account? <!--<button style="background-color: #1E90FF;" type="submit" formaction="UserRegistration.jsp">Register</button>-->

								<button type="button"
									style="background-color: #E7EEF3; color: black"
									onclick="gotoUserRegisterPage()">Register</button> <script
									type="text/javascript">
										function gotoUserRegisterPage() {
											window.location = 'RegisterController';
										}
								</script>
							</td>
						</tr>
					</table>
				<%-- <%
				Integer sessionId=(Integer)session.getAttribute("UserId");
				if(sessionId==null)
				{
				%>
				<h1 style='color:red;margin-left:150px'>You are successfully logged out!</h1>
				<%
				}
				%> --%>
				</div>
			</form>
			</header>
</body>
</html>