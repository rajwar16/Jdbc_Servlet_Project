<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Details</title>
<style>
input[type=submit] 
{
	border: none;
	border-radius: 8px;
    color: white;
    padding: 13px 30px;
    text-align: right;
    text-decoration: none;
    background-color: #4CAF50;
    display: inline-block;
    font-size: 16px;
}

td 
{
	text-align:left;
	padding-left:30px;
	font-size: 18px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include><br>
  <div class="container text-center">
  <!-- <div style="height: 696px; width: 1274px; background-color: gray; color: white; float: left;"> -->
    		<div style="height: 696px; width: 150px; background-color: gray; color: white; float: left;">

			</div>

			<div style="height: 696px; width: 820px; background-color: white; color: black; float: left;">
				<form action="EmployeeDetails" method="get" name="myform"  onsubmit="validateform()">
				<table style="height:700;width:700;margin:40px;background-color:white;color:black">
				</table>
				</form>
			</div>
			<div style="height: 696px; width: 150px; background-color: gray; color: white; float: left;"></div>
    
    </div>
</body>
</html>
</body>
</html>