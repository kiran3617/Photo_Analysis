<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="./css/home.css">
 <style>
  body {
	background-color: #dccfaf;
}
 </style>
<title>Photo Analysis</title>

  
</head>
<body>


<section class="container">
  <div class="login">
      <h1>Photo analysis</h1>
      <form method = "GET" action = "PhotoAnalysis">		
<% String imgUrl = (String)request.getAttribute("url"); %>
		<img src="<%=imgUrl%>" alt="Smiley face" height="500" width="500">
		<% String responseText = (String)request.getAttribute("response"); %>
		<div id="imageDiv" ></div>
		  <textarea id = "response" name = "response"style="width: 500px; height: 100px; font-family:Times New Roman; font-size: 15px "><%=responseText%></textarea> <br> 
	<a href="PhotoAnalysis.jsp">Go Home</a>	 
	</form>
	</div>
 </section>
		


</body>
</html>