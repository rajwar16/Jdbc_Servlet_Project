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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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

.w3-button {width:150px;}


td, th {
	text-align: left;
	cellspacing: 30px;
	font-size: 18px;
}

#myPopup {
	background-color: #fff;
	padding: 5%;
}

button.ui-btn, .ui-controlgroup-controls button.ui-btn-icon-notext {
	width: 32%;
}
</style>

<script type="text/javascript">
	var object={};
	
	var getdata = function(name) {
		console.log("details name : ",name);
		//var no1 = $("#aTag").text();
		
		$('#detailsbutton').hide();
		$('#updatebutton').show();
		$('#deletebutton').show();
		$('#myPopup2').hide();
		$('#myPopup3').hide();
		$('#myPopup').show();
		
		var empname = name;
		//console.log(no1);
		var obj = {};
		obj["empname"] = empname;
		console.log("mgikhkihlh");
		$.ajax({
			type : "GET",
			url : "updateServlet1",
			dataType : "html",
			data : obj,
			success : function(data) {
				var result = data;
				$('#myPopup').html(result);
			}
		});
		return empname;
	}
	
	
/* 	 $("#updatebutton").click(function (){
	      var ButtonText = $(this).text();
	      consol.log("update button id", ButtonText);
	 }
 */
	function updateDiv(name) {
		
		$('#detailsbutton').show();
		$('#updatebutton').hide();
		$('#deletebutton').show();
		
		$('#myPopup').hide();
		$('#myPopup2').show();
		$('#myPopup3').hide();
		
		var no1 = name;
				//var no1 = $("a").attr("id");
				console.log("upadated name : ",no1);
				var obj = {};
				obj["n1"] = no1;
				console.log("mgikhkihlh");
				$.ajax({
					type : "GET",
					url : "updateServlet",
					dataType : "html",
					data : obj,
					success : function(data) {
						var result = data;
						$('#myPopup2').html(result);
						/* $("#update123").bind('click',function(){
							$.ajax({
								type : "GET",
								url : "updateServlet2",
								dataType : "html",
								data : obj,
								success : function(data) {
									var result = data;
									$('#myPopup2').text(result);
								}
						}); */
						}
				});
	}

	function deleteDiv() {
		$('#detailsbutton').show();
		$('#updatebutton').show();
		$('#deletebutton').hide();
		$('#myPopup').hide();
		$('#myPopup2').hide();
		$('#myPopup3').show();
		$("#myPopup3")
				.html("<div style=''><table class='table table-striped'><tr><td>employee delete Name:</td><td>pooja<td></tr></table></div>");
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

			<table class="table table-striped" id="mytable" style="text-align: center;width: 500px;">
				<tr style="background-color: #292c2f; color: white ">

					<th style="text-align: center;">EmployeeName</th>
					<th style="text-align: center;">Emplyoee ID</th>
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
					while(iterator.hasNext()) {
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
				 
				<tr >
					<td style="text-align: center;"><%=id%></td>
				   	<td style="text-align: center;" id="empTd"><button id="buttonId" data-toggle="modal" data-target="#myModal" class="w3-button w3-border" style="width:150px" onclick="getdata('<%=employeeName%>')"><%=employeeName%></button></td>
				   	
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

							<!--details div start --  -->
							<div id="myPopup"></div>
							<!--details div end -- -->
							
							<!--update div start--  -->
							<div id="myPopup2"></div>
							<!--updated div end -- -->
							
							<!--deleted div start --  -->
							<div id="myPopup3">delete</div>
							<!--deleted div end --  -->
							
							<div class="modal-footer">
								
								<button type="button" id="detailsbutton" class="btn btn-default"
									onclick="getdata('<%=employeeName%>')">details</button>
								
								<button type="button" id="updatebutton" class="btn btn-default"
									onclick="updateDiv('<%=employeeName%>')">update</button>
								
								<button type="button" id="deletebutton" class="btn btn-default"
									onclick="deleteDiv()">delete</button>
								
								<button type="button" id="closebutton" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				</tr>
				<%
					}
				%>
			</table>

			</div>
		</div>
</body>
</html>