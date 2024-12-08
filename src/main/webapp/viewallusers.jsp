<%@page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<% 
 Admin a = (Admin)session.getAttribute("admin");
 if(a==null)
 {
	 response.sendRedirect("adminsessionfail");
	 return;
 }
 %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Users</title>
    <link rel="stylesheet" type="text/css" href="tablestyles.css">
</head>
<body>

<%@include file="adminnavbar.jsp" %>
<%@include file="adminsidebar.jsp" %>
<h3>View All Users</h3>
<table>
    <tr>
        <th>ID</th>
        <th>USER NAME</th>
        <th>EMAIL</th>
        <th>GENDER</th>
        <th>DATE OF BIRTH</th>
        <th>LOCATION</th>
        <th>CONTACT</th>
    </tr>
    <c:forEach items="${userlist}" var="user">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.username}"/></td>
            <td><c:out value="${user.email}"/></td>
            <td><c:out value="${user.gender}"/></td>
            <td><c:out value="${user.dateOfBirth}"/></td>
            <td><c:out value="${user.location}"/></td>
            <td><c:out value="${user.contact}"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
