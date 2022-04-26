<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome</title>
</head>
<body style="text-align:center" >
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #6abadeba">
			<div>
				<a class="navbar-brand"> Professors Quizz Planner </a>
			</div>

		</nav>
	</header>
<!-- this is first page. -->
	<br>
	<h1> Welcome </h1>
	<h1> To </h1>
	<h1> Professors Quizz Planner</h1>
	<h6> please login or register :</h6>
	<div>
		<!-- a login button to log in into the system -->
		<form action="logIn.jsp" method="post">
			<input style="border: background: rgb(158, 44, 44);
			 background-color: #6abadeba; border: 2px solid #9e2c2c" type="submit" value="log in" />
		</form>
		
		<br>
		<!-- a sign up button to register into the system -->
		<form action="signUp.jsp" method="post">
			<input style="style="border: background: rgb(158, 44, 44);
			 background-color: #6abadeba; border: 2px solid #9e2c2c" type="submit" value="sign up"/>
		</form>
	</div>
	<br>
	<br>	
</body>
</html>