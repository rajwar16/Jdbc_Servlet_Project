<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.button {
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

#loginScreen {
	height: 380px;
	width: 340px;
	margin: 0 auto;
	position: relative;
	z-index: 10;
	display: none;
	background: url(login.png) no-repeat;
	border: 5px solid #cccccc;
	border-radius: 10px;
}

#loginScreen:target, #loginScreen:target+#cover {
	display: block;
	opacity: 2;
}

.cancel {
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
</style>
</head>
<body>
	<div align="center">
		
		<br> <a href="#loginScreen" class="button">Click here to Log
			In</a>
	</div>
	<div id="loginScreen">
		<label class="modal__close" for="modal-1"></label>
	</div>
	<div id="cover"></div> 
</body>
</html>
