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
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style type="text/css">
	.container{
	background-image: linear-gradient(green,white);
	width:400px;
	height: 500px;
	
}
center{
	padding: 50px;
	font-size: 20px;
	position: relative;
	top: -50px;
	font-style: oblique;
}
.con{
	margin: 50px;
	position: relative;
	left: 400px;
	overflow: hidden;
	width: 100px;
  height: 100px;
  background-image: url("three.jpg"); 
  
	}
}
	
</style>
	</head>
<body class="con" >
<div class="container">
<form action="insertsubject" method="get" class="one">
<center>
<h1>Delete Data</h1>
<label style="font-size: 30px;">S_id</label>
<input type="text" name="sname">
<br><br>
<input type="submit" value="delete" style="font-size: 30px; font-style: oblique;">
</center>
</form>
</div>
</body>
</html>