<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/header-basic.css">
<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
button {
	margin-left: 70px;
	border: none;
	border-radius: 8px;
	color: white;
	padding: 13px 150px;
	text-align: center;
	text-decoration: none;
	background-color: #E7EEF3;
	display: inline-block;
	font-size: 16px;
}
input[type=text],input[type=password]
{
	height: 20px;
}
input[type=submit] {
	margin-left: 30px;
	border: none;
	border-radius: 8px;
	color: Black;
	padding: 13px 150px;
	text-align: center;
	text-decoration: none;
	background-color: #1E90FF;
	display: inline-block;
	font-size: 16px;
}

p
{
	color: white;
	font-size: 13px;
}

td {
	color: white;
	text-align: center;
	font-size: 18px;
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
input[type=submit]:hover {
    background-color: #E7EEF3; 
    color: black;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
table:hover 
{
	 background-color: #4CAF50; 
     color: white;
	 box-shadow: 0 25px 30px 0 rgba(0,0,0,0.24), 0 30px 65px 0 rgba(0,0,0,0.19);
}
</style>

<script type="text/javascript">

function validId(){
	var empId = document.getElementById("userId").value;
	if(empId == ""){
		var message = "*User Id should not be empty";
		document.getElementById("p1").innerHTML = message;
		document.getElementById("userId").style.borderColor = "red";
		return false;
	}
	else
	{
		document.getElementById("p1").innerHTML ="";
		document.getElementById("userId").style.borderColor = "green";
		return true;
	}
	return true;
}

	function validName(){
		var name = document.getElementById("empName").value;
		if(name == ""){
			var message = "*User Name should not be empty";
			document.getElementById("p2").innerHTML = message;
			document.getElementById("empName").style.borderColor = "red";
			return false;
		}
		else
		{
			document.getElementById("p2").innerHTML ="";
			document.getElementById("empName").style.borderColor = "green";
			return true;
		}
		return true;
	}
	
	function validPassword(){
		var password = document.getElementById("Password").value;
		
		if(password == ""){
			
			var message = "*Password should not be empty";
			document.getElementById("p3").innerHTML = message;
			document.getElementById("Password").style.borderColor = "red";
			return false;
		}
		else if(password.length < 6)
		{
			var message = "*Password should be greater than 6";
			document.getElementById("p3").innerHTML = message;
			document.getElementById("Password").style.borderColor = "red";
			return false;
		}
		else
		{
			document.getElementById("p3").innerHTML = "";
			document.getElementById("Password").style.borderColor = "green";
			return true;	
		}
		return true;
	}
	
	function validRePassword(){
		var password = document.getElementById("Password").value;
		var ReEnterpassword = document.getElementById("ReEnterpassword").value;
		
		if(ReEnterpassword == ""){
			
			var message = "*plzz Re-Enter the password";
			document.getElementById("p4").innerHTML = message;
			document.getElementById("ReEnterpassword").style.borderColor = "red";
			return false;
		}
		else if(password !== ReEnterpassword)
		{
			var message = "*Password should be Same";
			document.getElementById("p4").innerHTML = message;
			document.getElementById("ReEnterpassword").style.borderColor = "red";
			return false;
		}
		else
		{
			document.getElementById("p4").innerHTML = "";
			document.getElementById("ReEnterpassword").style.borderColor = "green";
			return true;	
		}
		return true;
	}
	
	
	function validForm(){
		var name = validName();
		var password = validPassword();
		
		if(name == true && password == true){
			return true;
		}
		else
		{
			return false;
		}
	}
</script>
</head>
<!-- 
<body>
	<div class="container text-center" class="container">
		<div style="height: 696px; width: 1274px; background-color: gray; color: white; float: left;">

			<div class="container"
					style="height: 450px; width: 1100px; margin-top: 50px;margin-left: 50px ;color: black; float: left;">
			<form action="LoginForm" method="get" name="myform" id="myForm1" onsubmit="return validForm()">
				
			<div class="container"
					style="height: 450px; width: 400px; background-color: #33A8FT; margin-left: 280px;color: black">
			<table style="background-image: url(g2.jpg);height: 400px; width: 450px; margin: 10px; background-color: #33A8FF; color: black">
						<tr>
							<td>User Id:</td>

							<td><input type='text' name='userId'
								onblur="return validId()" id="userId" size="30px" style="height: 20px;">
								<p id="p1" style="color: white"></p></td>
						</tr>
						
						<tr>
							<td>User Name:</td>

							<td><input type='text' name='userName'
								onblur="return validName()" id="empName" size="30px">
								<p id="p2" style="color: white"></p></td>
						</tr>
						<tr>
							<td>Password :</td>
							<td><input type='password' name='password'
								onblur="validPassword()" id="Password" size="30px" >
								<p id="p3" style="color: white"></p></td>
						</tr>
						
						<tr>
							<td>Re-Enter Password :</td>
							<td><input type='password' name='ReEnterpassword'
								onblur="validRePassword()" id="ReEnterpassword" size="30px">
								<p id="p4" style="color: white"></p></td>
						</tr>
						<tr>
							<td colspan="2"><input style="background-color: #E7EEF3;"
								type="submit" value="Submit"></td>
						</tr>
						<tr style="color: white; margin-left: 30px;">
							<td colspan="2" style="color: white; margin-left: 30px;text-align: center"><h4>Already have an account?</h4>
								<button type="button"  style="color: Black;margin-left: 30px;" onclick="gotoUserLoginPage()">Login</button>
								<script type="text/javascript">
								function gotoUserLoginPage(){
								       window.location = 'LoginController';
								   }
								</script>
							</td>
						</tr>
					</table>
				</div>
			</form>
			</div>
		</div>
</body>

 -->



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
					<a href="EmployRegisterForm.jsp">Add Employee</a>
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

	<%-- 
	<div class="container text-center" class="container">
		<% String error =(String)request.getAttribute("incorrectMassage"); %><p id="p3" style="color: red">${error}</p>
				<div class="container"
					style="height: 450px; width: 1100px; margin-top: 10px;margin-left: 50px ;color: black; float: left;"> --%>
				<form class="container" action="LoginForm" method="get" name="myform" id="myForm1" onsubmit="return validForm()">
				
				<div class="header-limiter"
					style="height: 500px; width: 550px; background-color: #33A8FT;margin-top: 100px;color: black">
					<table class="header-limiter" 
						style="background-image: url(g2.jpg);height: 500px; width: 500px; background-color: #33A8FF; color: black">
						<tr>
							<td>User Id:</td>

							<td><input type='text' name='userId'
								onblur="return validId()" id="userId" size="25px">
								<p id="p1" style="color: white"></p></td>
						</tr>
						
						<tr>
							<td>User Name:</td>

							<td><input type='text' name='userName'
								onblur="return validName()" id="empName" size="25px">
								<p id="p2" style="color: white"></p></td>
						</tr>
						<tr>
							<td>Password :</td>
							<td><input type='password' name='password'
								onblur="validPassword()" id="Password" size="25px" >
								<p id="p3" style="color: white"></p></td>
						</tr>
						
						<tr>
							<td>Re-Enter Password :</td>
							<td><input type='password' name='ReEnterpassword'
								onblur="validRePassword()" id="ReEnterpassword" size="25px">
								<p id="p4" style="color: white"></p></td>
						</tr>
						<tr>
							<td colspan="2"><input style="background-color: #E7EEF3;"
								type="submit" value="Submit"></td>
						</tr>
						<tr style="color: white; margin-left: 30px;">
							<td colspan="2" style="color: white; margin-left: 30px;text-align: center"><h4>Already have an account?</h4>
								<button type="button"  style="color: Black;margin-left: 30px;" onclick="gotoUserLoginPage()">Login</button>
								<script type="text/javascript">
								function gotoUserLoginPage(){
								       window.location = 'LoginController';
								   }
								</script>
							</td>
						</tr>
					</table>
				</div>
			</form></header>


</html>