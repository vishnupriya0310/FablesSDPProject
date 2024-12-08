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
        .message-container1 {
            display: flex;
            justify-content: center;
            gap: 20px; /* Space between cards */
            margin-top: 20px;
        }
        .message-container1 a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #ff9658; /* Orange background */
            color: black; /* Black text */
            text-decoration: none; /* Removed underline */
            border-radius: 4px;
            border: 2px solid transparent;
            font-size: 16px;
            transition: background-color 0.3s ease, border-color 0.3s ease;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 250px;
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .card img {
        border-radius: 50%;
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
          
        }

        .card h3 {
            margin-bottom: 10px;
        }

        .card a {
            text-decoration: none;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
<%@ include file="usernavbar.jsp" %>
<%@ include file="usersidebar.jsp" %>

<h2><strong>WELCOME TO FABLES</strong></h2>
<div class="message-container1">
    <div class="card">
        <img src="images/profile-logo2.png" alt="Profile Logo">
        <h3>Profile</h3>
        <p>View and update your personal information.</p>
        <a href="userprofile">Go to Profile</a>
    </div>
    <div class="card">
        <img src="images/settings-logo.png" alt="Settings Logo">
        <h3>Settings</h3>
        <p>Customize your account preferences.</p>
        <a href="#usersettings">Go to Settings</a>
    </div>
    <div class="card">
        <img src="images/help-logo.jpg" alt="Help Logo">
        <h3>Help</h3>
        <p>Find answers to common questions.</p>
        <a href="contact_user.jsp">Get Help</a>
    </div>
</div>
</body>
</html>