<%@ page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
 Admin a = (Admin) session.getAttribute("admin");
 if (a == null) {
     response.sendRedirect("adminsessionfail");
     return;
 }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            text-align: center;
            padding: 50px;
            color: #333;
        }

        /* Card styling */
        .card {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 128, 0, 0.2);
            width: 300px;
            margin: 20px auto;
            text-align: center;
        }

        .card h3 {
            color: #006400; /* Dark green */
            margin-bottom: 10px;
            font-size: 24px;
        }

        .card .value {
            font-size: 36px;
            color: #ff9658; /* Orange text for the count */
        }

        /* Responsive design */
        @media screen and (max-width: 768px) {
            body {
                padding: 20px;
            }

            .card {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <%@include file="adminsidebar.jsp" %>
    <div class="card">
        <h3>Total Users</h3>
        <div class="value"><c:out value="${count}"/></div>
    </div>
    <div class="card">
        <h3>Total Creators</h3>
        <div class="value"><c:out value="${count1}"/></div>
    </div>
</body>
</html>
