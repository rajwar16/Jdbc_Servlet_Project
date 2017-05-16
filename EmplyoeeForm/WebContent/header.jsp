<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Basic Header</title>

<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/header-basic.css">
<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>



</head>

<body>
<!-- <nav style="background-color: #33A8FF;" class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Portfolio</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="welcome.jsp">Home</a></li>
         <li class="active"><a href="EmployRegisterForm.jsp">Add Employee</a></li>
        <li class="active"><a href="EmployeeDetails">Employee Details</a></li>
        <li class="active"><a href="EmployeeLogout">Logout</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
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
		</header>
</body>
</html>