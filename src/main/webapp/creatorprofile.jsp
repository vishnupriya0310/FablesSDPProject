<%@page import="com.klef.jfsd.springboot.model.Creator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Creator cr = (Creator) session.getAttribute("creator");
if (cr == null) {
    response.sendRedirect("creatorsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Creator Profile</title>
<style>
    body {
        background-color: #2c2c2c; /* Dark gray background */
        color: #ff9658; /* Main theme color */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    h1, h2, h3 {
        color: #ff9658; /* Orange headers */
    }

    .creator-info {
        margin: 20px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.5);
        border: 2px solid #ff9658;
        border-radius: 10px;
        box-shadow: 0 0 0 #ff9658;
        width: 80%;
        max-width: 600px;
    }

    .creator-info p {
        margin: 10px 0;
        font-size: 22px;
        color: black;
        }

  

    
</style>

</head>
<body>
<%@include file="creatornavbar.jsp" %>
<%@include file="creatorsidebar.jsp" %>
<h2>Creator Profile</h2>
<div class="creator-info">
    <p><strong>ID:</strong> <%=cr.getId() %></p>
    <p><strong>Username:</strong> <%=cr.getUsername() %></p>
    <p><strong>Gender:</strong> <%=cr.getGender() %></p>
    <p><strong>Date of Birth:</strong> <%=cr.getDateOfBirth() %></p>
    <p><strong>Contact:</strong> <%=cr.getContact() %></p>
    <p><strong>Email:</strong> <%=cr.getEmail() %></p>
    <p><strong>Location:</strong> <%=cr.getLocation() %></p>
    <p><strong>Social Media:</strong> <a href="<%=cr.getSocialMediaUrl() %>" target="_blank" style="color: black;"><%=cr.getSocialMediaUrl() %></a></p>
</div>

</body>
</html>