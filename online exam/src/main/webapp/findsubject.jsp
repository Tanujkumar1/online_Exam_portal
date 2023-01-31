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
	background-image: linear-gradient(orange,green);
	width:400px;
	height: 500px;
	
}
.one{
	padding: 50px;
	font-size: 50px;
	position: relative;
	top: -50px;
	font-style: Arial;
}
.con{
	margin: 50px;
	position: relative;
	left: 400px;
	background-color:red;
	overflow: hidden;
  width: 100px;
  height: 100px;
  background-image: url("two.jpg");
	}
}
</style>
</head>
<body class="con">
<div class="container">
 <form action="findsubject" method="get" class="one">
<label>S_id</label>
<input type="text" name="sname">
<br>
<input type="submit" value="search" style="
	font-size:30px;
	font-style: Arial;
	position: relative; 
	left: 100px;">
</form>
</div>
</body>
</html>