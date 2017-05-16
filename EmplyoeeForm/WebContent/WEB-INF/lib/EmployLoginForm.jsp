<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
button 
{
	border: none;
	border-radius: 8px;
    color: white;
    padding: 13px 30px;
    text-align: center;
    text-decoration: none;
    background-color: #4CAF50;
    display: inline-block;
    font-size: 16px;
}
</style>

</head>
<body>
	


  <div class="container text-center">
  <!-- <div style="height: 696px; width: 1274px; background-color: gray; color: white; float: left;"> -->
    		<div style="height: 696px; width: 150px; background-color: gray; color: white; float: left;">

			</div>

			<div style="height: 696px; width: 820px; background-color: white; color: black; float: left;">
				<form action="RegistrationForm" method="get">
					<table style="height: 500; width: 700; margin: 30px; padding-right:20; color: black;">
					
						<tr>
							<th colspan="2"><h3>Employ Registration Form</h3></th>
						</tr>
						
						<tr>
							<td>Employee ID :</td>
							<td><input type='text' name='employeeid' size='30' placeholder="Id"><br></td>
						</tr>

						<tr>
							<td>Employee Name:</td>
							<td><input type='text' name='employeeName' size='30' placeholder="Name"><br></td>
						</tr>
						<tr>
							<td>password :</td>
							<td><input type='password' name='password' size='30' placeholder="password"><br></td>
						</tr>
						<tr>
							<td>Gender :</td>
							<td><input type='radio' name='gender' value='male'>male
								<input type='radio' name='gender' value='female'>Female<br></td>
						</tr>

						<tr>
							<td>Email Id :</td>
							<td><input type='email' name='emailId' size='30' placeholder="Email"><br></td>
						</tr>
						
						
						<tr>
							<td>Address :</td>
							<td><textarea name="address" size='30' placeholder="Enter Address"></textarea><br></td>
						</tr>
						
						<tr>
							<td>Specialized :</td>
							<td><select name='specialized'>
									<option>Department</option>
									<option>Computer</option>
									<option>Civil</option>
									<option>E & TC</option>
									<option>Mechanical</option>
									<option>IT</option>
							</select></td>
						</tr>
						
						<tr>
							<td>Language known :</td>
							<td><select name='language'>
							
									<option>Language</option>
									<option>English</option>
									<option>Hindi</option>
									<option>French</option>
									<option>Spanish</option>
									<option>japanies</option>
							</select></td>
						</tr>

						<tr>
							<td>Contact No :</td>
							<td><input type='text' name='contactNo' size='30'><br></td>
						</tr>


						<tr>
							<td><button type="submit" formaction="RegisterForm.html">Reset</button></td>
							<td><input type="submit" value="Submit"></td>
						</tr>
					</table>

					<div
						style="height: 25px; width: 400px; background-color: white; color: black; float: left; margin-left: 100px">
						<h4>
							Already have an account?
							<button type="submit" formaction="LoginUser.html">Login</button>
						</h4>
						
						
					</div>
				</form>


			</div>
			<div style="height: 696px; width: 150px; background-color: gray; color: white; float: left;"></div>
    
    </div>
</body>
</html>