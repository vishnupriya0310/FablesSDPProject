<%@page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<% 
 Admin a = (Admin)session.getAttribute("admin");
 if(a == null)
 {
	 response.sendRedirect("adminsessionfail");
	 return;
 }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>View All Creators</title>
    <link rel="stylesheet" type="text/css" href="tablestyles.css">
    <style>
       

        button {
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .verify-btn {
            background-color: #28a745; /* Green for verified */
            color: white;
        }

        .verify-btn:hover {
            background-color: #218838;
        }

        .unverify-btn {
            background-color: #dc3545; /* Red for unverified */
            color: white;
        }

        .unverify-btn:hover {
            background-color: #c82333;
        }
    </style>
</head>

<body>
<%@include file="adminnavbar.jsp" %>
<%@include file="adminsidebar.jsp" %>

<h3>View All Creators</h3>
<table>
    <tr>
        <th>ID</th>
        <th>USERNAME</th>
        <th>EMAIL</th>
        <th>GENDER</th>
        <th>DATE OF BIRTH</th>
        <th>LOCATION</th>
        <th>CONTACT</th>
        <th>SOCIAL MEDIA URL</th>
        <th>ACTIONS</th>
    </tr>
    <c:forEach items="${creatorlist}" var="creator">
        <tr>
            <td><c:out value="${creator.id}"/></td>
            <td><c:out value="${creator.username}"/></td>
            <td><c:out value="${creator.email}"/></td>
            <td><c:out value="${creator.gender}"/></td>
            <td><c:out value="${creator.dateOfBirth}"/></td>
            <td><c:out value="${creator.location}"/></td>
            <td><c:out value="${creator.contact}"/></td>
            <td>
                <a href="${creator.socialMediaUrl}" target="_blank">
                    <c:out value="${creator.socialMediaUrl}"/>
                </a>
            </td>
            <td>
                <form action="togglecreatorstatus" method="post" style="display: inline;">
                    <input type="hidden" name="creatorId" value="${creator.id}">
                    <button 
                        type="submit" 
                        class="${creator.verified ? 'verify-btn' : 'unverify-btn'}">
                        ${creator.verified ? 'Verified' : 'Unverified'}
                    </button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>

</html>
