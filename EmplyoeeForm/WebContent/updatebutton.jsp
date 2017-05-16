<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<style>
/* #showInput{
display: none;
}
  */
</style>
<script type="text/javascript">
/* function updateName() {
	$('#showInput').show();/* 
	$("#showInput").html("ghhripo[po]"); 
 */
 
 $("button").click(function(){
	    $.ajax({url: "updateServlet", success: function(result){
	        $("#div1").html(result);
	    }});
	})

</script>
</head>
<body>
<form action="updateServlet" method="get">

<!-- <button type="button" id="updateName" class="btn btn-default" onclick="updateName()"> -->updateName<!-- </button> -->
	<div id="showInput">
		<input type="text" id="inputName" name="inputName">
		<button type="submit" id="submitName" value="submitName" onclick="updateServlet">Submit</button>
	</div>
	

</form> 

</body>
</html>