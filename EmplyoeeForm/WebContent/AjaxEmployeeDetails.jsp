<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.ResultSet"
	import="com.bridgelabz.Employee.model.EmployeeDeatails1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">


<link
	href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<title>Employee Details</title>
<style>
input[type=submit] {
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

td, th {
	text-align: left;
	cellspacing: 30px;
	font-size: 18px;
}

/* #myPopup{
    display:none;
}   */

/* .button {
	width: 150px;
	padding: 10px;
	background-color: #FF8C00;
	box-shadow: -8px 8px 10px 3px rgba(0, 0, 0, 0.2);
	font-weight: bold;
	text-decoration: none;
}

#cover {
	position: fixed;
	top: 0;
	left: 0;
	background: rgba(0, 0, 0, 0.6);
	z-index: 5;
	width: 100%;
	height: 100%;
	display: none;
}

#myPopup {
	color:blue;
	position: absolute;
	top: 20%;
	left: 20%;
	width: 50%;
	height: 50%;
	margin: 0 auto;
	z-index: 10;
	display: none;
	background: white;
	border: 5px solid #cccccc;
	border-radius: 10px;
}

#myPopup:target, #myPopup:target+#cover {
	display: block;
	opacity: 2;
}
 */
/* .cancel {
	display: block;
	position: absolute;
	top: 3px;
	right: 2px;
	background: rgb(245, 245, 245);
	color: black;
	height: 30px;
	width: 35px;
	font-size: 30px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}
 */

/* Modal Content 
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
} */

/* The Close Button */
#myPopup {
	background-color: #fff;
	padding: 5%;
}

button.ui-btn, .ui-controlgroup-controls button.ui-btn-icon-notext {
	width: 32%;
}
</style>

<script type="text/javascript" src="js/jq.js"></script>
<script type="text/javascript">
	/* 
	
	 $(function() {  
	 $( "#dialog-3" ).dialog({  
	 autoOpen: false,   
	 hide: "slide",  
	 show : "slide",  
	 height: 200        
	 });  
	 $( "#opener" ).click(function() {  
	 $( "#dialog-3" ).dialog( "open" );  
	 });  
	 }); 

	
	/* 	$('#select-5').click(function(){
	alert('Does this work?');
	});
	
	 */
	$(document).ready(function() {
		$(document).on("click", "#cl", function() {
			var no1 = $("#no1").val();
			console.log(no1);
			var obj = {};
			obj["n1"] = no1;
			console.log(obj);
			$.ajax({
				type : "GET",
				url : "updateServlet",
				data : obj,
				success : function(data) {
					var result = data;
					$('#result').text(result);

				}
			});
		})

	})
	
	var object={};

	var getdata = function(name, id, gender, emailid, address) {
		console.log(name, id, gender, emailid, address);
		$('#detailsbutton').hide();
		$('#updatebutton').show();
		$('#deletebutton').show();
		$('#myPopup2').hide();
		$('#myPopup3').hide();
		$('#myPopup').show();

		$("#myPopup")
				.html(
						"<div style=''><table class='table table-striped'><tr><td>employee Name: </td><td>"
								+ name
								+ "</td></tr><tr><td>employee id: </td><td>"
								+ id
								+ "</td></tr><tr><td>Gender : </td><td>"
								+ gender
								+ "</td></tr><tr><td>email id : </td><td>"
								+ emailid
								+ "</td></tr><tr><td>address : </td><td>"
								+ address + "</td></tr></table></div>");

	}

	function updateDiv() {
		$('#detailsbutton').show();
		$('#updatebutton').hide();
		$('#deletebutton').show();
		$('#myPopup').hide();
		$('#myPopup3').hide();
		$('#myPopup2').show();
		// display text if JavaScript worked
		
		$(document).ready(function() {
			$(document).on("click", "#cl", function() {
				var no1 = $("#no1").val();
				console.log(no1);
				var obj = {};
				obj["n1"] = no1;
				console.log(obj);
				$.ajax({
					type : "GET",
					url : "updateServlet",
					data : obj,
					success : function(data) {
						var result = data;
						$('#result').text(result);

					}
				});
			})

		})

	}

	function deleteDiv() {
		$('#detailsbutton').show();
		$('#updatebutton').show();
		$('#deletebutton').hide();
		$('#myPopup').hide();
		$('#myPopup2').hide();
		$('#myPopup3').show();
		$("#myPopup3")
				.html(
						"<div style=''><table class='table table-striped'><tr><td>employee delete Name:</td><td>pooja<td></tr></table></div>");
		// display text if JavaScript worked
	}
</script>




</head>
<body>
	<jsp:include page="header.jsp"></jsp:include><br>
	<div class="container text-center">
		<!-- <div style="height: 696px; width: 1274px; background-color: gray; color: white; float: left;"> -->

		<div
			style="height: 696px; width: 820px; background-color: white; color: black; float: left;">

			<%--<form action="EmployeeDetails" name="myform"  onsubmit="validateform()">
				
				 <table style="height:700;width:700;margin:40px;background-color:white;color:black">

			<%-- <table cellspacing="30px" style="border:1px; height: 500; width: 700; margin: 50px; padding-right:20; color: black;">
					<%=employeeDeatailss%>
						<tr style="padding: 15px;">
							<th colspan="2"><h3>Employ Registration Form</h3></th>
						</tr>
						<tbody>
        				<c:forEach items="${employeeDeatailss}" var="employee">
        					<tr>
            					<td>Employee ID: <c:out value="${employee.eid}"/></td>
            					<td>Employee Pass: <c:out value="${employee.ename}"/></td>  
        					</tr>
    					</c:forEach>
   						 </tbody>
					</table> --%>

			<table class="table table-striped" id="mytable">
				<tr style="background-color: #292c2f; color: white">

					<th>EmployeeName</th>

					<!-- <th>gender</th>
					<th>Age</th>
					<th style="text-align:center;">Email_Id</th>
					<th>specialized</th>
					<th>language</th>
					<th>contactNo</th>
					<th>salary</th> -->
				</tr>
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
					System.out.println("jgrtojhtyj");
					ArrayList<EmployeeDeatails1> arrayList = (ArrayList<EmployeeDeatails1>) request.getAttribute("arrayList");
					Iterator iterator = arrayList.iterator();
					tid = 0;
					while (iterator.hasNext()) {
						tid++;
						System.out.println(tid);
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
				%>

				<tr>
					<td><a href="#myPopup" data-toggle="modal"
						data-target="#myModal"
						onclick="getdata('<%=employeeName%>' , '<%=id%>' , '<%=gender%>' , '<%=emailId%>' , '<%=address%>')"><%=employeeName%>
					</a></td>
				</tr>
				<%
					}
				%>
			</table>


			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">


					<!-- Modal content-->
					<div id="div1" class="targetDiv">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									style="width: 10%">&times;</button>
								<h4 class="modal-title">Employee Deatails</h4>
							</div>

							<!--details div start ----------  -->
							<div id="myPopup"></div>

							<!--details div end ------------  -->
							<!--update div start -----------  -->

							<div id="myPopup2">
								<!-- <form name="form1" method="GET" id="form1">
										<button type="button" id="deletebutton" class="btn btn-default" onclick="showdiv()">EmployeeName</button>
										<input type="text" id="no1" name="n1"/>
										<input id="cl" type="button" value="Calculate"/>
										<div type="text" id="result" style="font-size: 23"></div>
								</form> -->

								<table class="header-limiter"
									style="height: 800px; width: 450px; margin-left: 50px">

									<tr>
										<th colspan="2"><h3>update Employee Details</h3></th>
									</tr>

									<tr>
										<td>Employee ID :</td>
										<td><input type='number' id="empId" name='employeeid'
											style="" onblur="return validId()"><br>
											<p id="p1" style="color: red; font-size: 13px"></p></td>
									</tr>

									<tr>
										<td>Employee Name:</td>
										<td><input type='text' name='employeeName'
											onblur="return validEmpName()"
											id="empName"><br>
											<p id="p2" style="color: red; font-size: 13px"></p></td>
									</tr>

									<tr>
										<td>Gender :</td>
										<td><input type='radio' name='gender' value='male'
											onblur="return validEmpName()" id="empgender"> Male <input
											type='radio' name='gender' value='female' id="empgender">
											Female
											<p id="p4" style="color: red; font-size: 13px"></p></td>
									</tr>

									<tr>
										<td>Age</td>
										<td><input type='text' name='age' 
											 onblur="return validEmpAge()" id="age"><br>
											<p id="p5" style="color: red; font-size: 13px"></p></td>
									</tr>

									<tr>
										<td>Email Id :</td>
										<td><input type='email' name='emailId' 
											onblur="return validEmail()" id="emialId"><br>
											<p id="p6" style="color: red; font-size: 13px"></p></td>
									</tr>


									<tr>
										<td>Address :</td>
										<td><textarea name="address"
												style=" height: 50px;"
												 onblur="return validAddress()"
												id="address"></textarea><br>
											<p id="p7" style="color: red; font-size: 13px"></p></td>
									</tr>


									<tr>
										<td>Specialized :</td>
										<td><select name='specialized'
											onblur="return validspcialized()" id="spcialized"style="color:black;">
												<option>Department</option>
												<option>Computer</option>
												<option>Civil</option>
												<option>E & TC</option>
												<option>Mechanical</option>
												<option>IT</option>
										</select>
										<!-- <p id="p7" style="color: red; font-size: 13px"></p> --></td>
									</tr>

									<tr>
										<td>Language known :</td>
										<td><select name='language'
											onblur="return validlanguage()" id="language" style="color:black;">

												<option>Language</option>
												<option>java</option>
												<option>Hindi</option>
												<option>French</option>
												<option>Spanish</option>
												<option>japanies</option>
										</select>
										<!-- <p id="p8" style="color: red; font-size: 13px"></p></td> -->
									</tr>

									<tr>
										<td>Contact No :</td>
										<td><input type='text' name='contactNo'
											onblur="return validContactNo()" id="contactNo"><br>
											<p id="p9" style="color: red; font-size: 13px"></p></td>
									</tr>

									<tr>
										<td>Salary :</td>
										<td><input type='text' name='salary'
											onblur="return validSalary()" id="salary"><br>
											<p id="p10" style="color: red; font-size: 13px"></p></td>
									</tr>

									<tr>
										<td>
											<!-- <button type="submit" formaction="RegisterForm.html">Reset</button> -->
											<input type="reset" value="Reset"
											style="padding: 13px 100px;">
										</td>
										<td><input type="submit" value="Add Employee"></td>
									</tr>
								</table>

							</div>

							<!--updated div end ----------------------------------------------------------------------- -->
							<!--deleted div start -----------------------------------------------------------------  -->
							<div id="myPopup3">delete</div>
							<div class="modal-footer">
								<button type="button" id="detailsbutton" class="btn btn-default"
									onclick="getdata('<%=employeeName%>' , '<%=id%>' , '<%=gender%>' , '<%=emailId%>' , '<%=address%>')">details</button>
								<button type="button" id="updatebutton" class="btn btn-default"
									onclick="updateDiv()">update</button>
								<button type="button" id="deletebutton" class="btn btn-default"
									onclick="deleteDiv()">delete</button>
								<button type="button" id="closebutton" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- #################################################### -->
		<!-- 
			Modal
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">

				Modal content
				<div id="div2" class="targetDiv">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								style="width: 10%">&times;</button>
							<h4 class="modal-title">Employee Deatails</h4>
						</div>

						<div id="update">update</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" target="1">update</button>
							<button type="button" class="btn btn-default" target="2">Delete</button>
							<button type="button" class="btn btn-default"target="3"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
				</div>
				</div>


				###################################################### 
				Modal
				<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
				
				Modal content
				<div id="div3" class="targetDiv">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								style="width: 10%">&times;</button>
							<h4 class="modal-title">Employee Deatails</h4>
						</div>

						<div id="delete">delete</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"target="1">update</button>
							<button type="button" class="btn btn-default"target="2">Delete</button>
							<button type="button" class="btn btn-default"target="3"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 -->
		<%-- 	<tr>
					
					<td ><a href="#myPopup" data-rel="popup"><%=employeeDeatails1.getEmployeeName() %></a></td> 
					<td><button  class="my_button" data-rel="popup" type="button" value="<%=employeeName%>" id="b1"><%=employeeName%></button></td> 
					
					<td><a href="#myPopup" data-rel="popup" id="<%=employeeName%>" ><%=employeeName%></a></td> 
					<div data-role="popup" id="myPopup" class="ui-content">
					
					<p id="p16"></p>
					
					<jsp:include page="add.jsp">
					
					</jsp:include><br>
					</div>
				</tr> --%>


		<!--  <div data-role="main" class="ui-content">
    	<a href="#myPopup" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all">Show Popup</a>

		<p>jggbughui</p>
    	<div data-role="popup" id="myPopup" class="ui-content">
      	<h3>Welcome!</h3>
      	<p>The "ui-content" class is especially useful when you have a popup with <span style="font-size:55px;">styled text</span>, and want the edges and corners to look extra clean and sleek. <strong>Note:</strong> The text will wrap to multiple lines if needed.</p>
    	</div>
  		</div>	 
  		-->

		<!-- <h3>Welcome!</h3>
					<p>
						The "ui-content" class is especially useful when you have a popup
						with <span style="font-size: 55px;">styled text</span>, and want
						the edges and corners to look extra clean and sleek. <strong>Note:</strong>
						The text will wrap to multiple lines if needed.
					</p> -->

		<%-- <%
					
					/*EmployeeDeatails1 employeeDeatails1=new EmployeeDeatails1(); */
					ArrayList<EmployeeDeatails1> arrayList=(ArrayList) request.getAttribute("arrayList");
					//out.print(arrayList);
					Iterator iterator=arrayList.iterator();
        			while (iterator.hasNext()) 
        			{
        					System.out.println(iterator.next());
        					int id = employeeDeatails1.getId();
        					String employeeName = employeeDeatails1.getEmployeeName();
        					String gender = employeeDeatails1.getGender();
        					String emailId = employeeDeatails1.getEmailId();
        					String address = employeeDeatails1.getAddress();
        					String specialized = employeeDeatails1.getSpecialized();
        					String language = employeeDeatails1.getLanguage();
        					long contactNo = employeeDeatails1.getContactNo();
        					float salary = employeeDeatails1.getSalary();
        					int age = employeeDeatails1.getAge();
        		%> 
        		
        		<jsp:include page="add.jsp">
								<jsp:param name="employeeNameSearch" value="<%=employeeName%>" /> 
								</jsp:include>
								--%>
</body>
</html>