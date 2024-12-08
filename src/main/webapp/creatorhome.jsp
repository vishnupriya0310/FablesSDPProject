<%@page import="com.klef.jfsd.springboot.model.Creator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      
<%
Creator cr=(Creator)session.getAttribute("creator");
if(cr==null)
{
	response.sendRedirect("creatorsessionfail");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Creator Home</title>

</head>
<body>
    <%@include file="creatornavbar.jsp" %>
    <%@include file="creatorsidebar.jsp" %>

Welcome <%=cr.getUsername() %>

</body>
</html>