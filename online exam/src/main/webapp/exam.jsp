<%@page import="java.lang.ProcessBuilder.Redirect"%>
 <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
	.container{
	background-image: linear-gradient(violet,yellow);
	width:400px;
	height: 500px;
	
}
.one{
	padding: 50px;
	font-size: 25px;
	position: relative;
	top: -50px;
	font-style: Arial;
}
.con{
	margin: 50px;
	position: relative;
	left: 400px;
	overflow: hidden;
  background-image: url("sunset.jpg");
  width: 100%;
	height: 100%;
	}
}
</style>
</head>
<body class="con">
<div  class="container"> 
<h1>Exam Questions</h1>
<form action="exam" method="get" class="one">
<label>Enter subject </label>
<input type="text" name="sub">
<br>
<label>Q_NO </label>
<input type="text" name="num">
<br>
<label>Question </label>
<input type="text" name="Qno">
<br>
<label>Option1 </label>
<input type="text" name="one">
<br>
<label>Option2 </label>
<input type="text" name="two">
<br>
<label>Option3 </label>
<input type="text" name="three">
<br>
<label>Option4 </label>
<input type="text" name="four">
<br>
<label>Answer </label>
<input type="text" name="ans">
<br>
<input type="submit" value="Submit" style="font-size: 30px;font-style:inherit;">
<button><a href="search.jsp" style="font-size: 30px;font-style:inherit;">Search</a></button>
</form>
</div>
</body>
</html>