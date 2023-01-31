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
</head>
<body>
<%! int i=0; %>
<% for (String que : ${Question}){ %>
<p>Question1:${Question}</p>
<p>Option1:${Option1}</p>
<p>Option2:${Option2}</p>
<p>Option3:${Option3}</p>
<p>Option4:${Option4}</p>
<p>Answer:${Answer}</p><br>

<% } %>


</body>


</html>