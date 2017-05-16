<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			
			<form action="RegistrationForm" method="post" name="registration">

				<table class="table table-striped" style="height: 500px; width: 400px ">

					<tr>
						<td>Employee ID :</td>
						<td><input type='number' id="empId" name='employeeid'
							placeholder="Id"><br>
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
						<td><input type="submit" value="Update"></td>
					</tr>
				</table>
				</form>
</body>
</html>