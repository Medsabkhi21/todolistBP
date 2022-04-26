<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.qcm.item,com.qcm.itemDbUtil,java.util.List, java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>

	<title>Professors Quizz Planner</title>

</head>

<body >

<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #6abadeba">
			<div>
				<a class="navbar-brand"> Professors Quizz Planner </a>
			</div>

		</nav>
	<c:choose>
	    <c:when test="${empty userEmail}">
	    	<br>
	    	<br>
	    	<h4 style="text-align:center;color:red;">
	    		User is not logged in
	    		<br>
	    		please 
	    		<a href="logIn.jsp">log in</a>
	    		 to see the page requested.
	    	</h4>
	    </c:when>    
	    <c:otherwise>
	    	<%
	    	
		    	response.setHeader("Cache-Control", "no-cache");
		    	response.setHeader("Cache-Control", "no-store");
		    	response.setHeader("Pragma", "no-cache");
		    	response.setDateHeader("Expires", 0);
	    	
				String uname = (String) session.getAttribute("userEmail");
				request.setAttribute("userName", uname.charAt(0));
			%>
	    	<form style="float : right " action="logOut" method="post">
				<input style="background-color:##D3D3D3;
    border:2px solid black; border-radius: 50%;" type="submit" value="${userName}" title="${userEmail} &#013;&#010; click to log out"/>
			</form>
			<h1 style="text-align:center" > Enter Quizz details </h1>
			
			<form  action="addItems" method="post">
			<table style="margin-left:auto;margin-right:auto;">
				<tr>
					<td>quizz-name: </td>
					<td>
						<input type="text" name="ItemLabel" placeholder="enter label here to add" size="30" /> 
					</td>
				</tr>
				<tr>
					<td>quizz-description: </td>
					<td>
						<textarea id="ItemDesc" name="ItemDesc" rows="5" cols="33"/></textarea>
					</td>
				</tr>
				<tr>
					<td>quizz-date : </td>
					<td>
						<input type="date" name="ItemDate" />
					</td>
				</tr>
				<tr>
					<td>quizz-time : </td>
					<td>
						<input type="time" name="ItemTime" />
					</td>
				</tr>
				<tr>
				<td></td>
				<td>
					<input type="submit" name="addTheItem" value="add quizz">
				</td>
				</tr>
			</table>
			</form>
			
				<br>
				<!-- listing items here -->
				<h2>your quizz List : </h2>
				<hr>
				<%
					
					itemDbUtil dbUtil = new itemDbUtil();
					
					String email = (String)session.getAttribute("userEmail");
					
					List <item> listItems = dbUtil.getItems(email);
					
					request.setAttribute("listItems", listItems);
				
				%>
				<table style="border:1px solid black;margin-left:auto;margin-right:auto;">
					<tr>
						<th style="padding:0 20px 0 20px;" >quizz name</th>
						<th style="padding:0 20px 0 20px;" >description</th>
						<th style="padding:0 20px 0 20px;" >date</th>
						<th style="padding:0 20px 0 20px;" >time</th>
					</tr>
					<c:forEach var="tempItem" items="${listItems}">
						<tr>
							<td style="padding:0 20px 0 20px;" >${tempItem.label}</td>
							<td style="padding:0 20px 0 20px;" >${tempItem.desc}</td>
							<td style="padding:0 20px 0 20px;" >${tempItem.date}</td>
							<td style="padding:0 20px 0 20px;" >${tempItem.time}</td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
</body>

</html>