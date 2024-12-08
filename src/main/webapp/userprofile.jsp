<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
User u=(User)session.getAttribute("user");
if(u==null)
{
    response.sendRedirect("usersessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Home</title>
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

    .user-info {
        margin: 20px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.5);
        border: 2px solid #ff9658;
        border-radius: 10px;
        box-shadow: 0 0 0 #ff9658;
        width: 80%;
        max-width: 600px;
    }

    .user-info p {
        margin: 10px 0;
        font-size: 22px;
        color: black;
        }

  

    
</style>
</head>
<body>
<%@include file="usernavbar.jsp" %>
<%@ include file="usersidebar.jsp" %>
<h2>User Profile</h2>
<div class="user-info">
    <p><strong>ID:</strong> <%=u.getId() %></p>
    <p><strong>Username:</strong> <%=u.getUsername() %></p>
    <p><strong>Gender:</strong> <%=u.getGender() %></p>
    <p><strong>Date of Birth:</strong> <%=u.getDateOfBirth() %></p>
    <p><strong>Email:</strong> <%=u.getEmail() %></p>
    <p><strong>Location:</strong> <%=u.getLocation() %></p>
    <p><strong>Contact:</strong> <%=u.getContact() %></p>
</div>

</body>
</html>
