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
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="tablestyles.css">
    <title>View All Events</title>
    
    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[1];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }       
            }
        }
    </script>
    
</head>

<body>


<%@ include file="adminnavbar.jsp" %>
<%@include file="adminsidebar.jsp" %>

<h3 align="center"><u>View All Events</u></h3>

<br>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Event Name">

<table align="center" border="2" id="myTable">

<tr class="header">

<th>ID</th>
<th>Event Name</th>
<th>Description</th>
<th>Date</th>
<th>Venue</th>
<th>Image</th>
<th>Register</th>
<th>Delete</th> <!-- Add Delete column -->
</tr>

<c:forEach items="${eventlist}" var="event">

<tr>

<td><c:out value="${event.id}"></c:out></td>
<td><c:out value="${event.name}"></c:out></td>
<td><c:out value="${event.description}"></c:out></td>
<td><c:out value="${event.date}"></c:out></td>

<td><c:out value="${event.location}"></c:out></td>
<td>
    <img src="displayeventimage?id=${event.id}" width="20%" height="20%">
</td>
<td>
    <a href="<c:url value='${event.link}'></c:url>" target="_new">Register</a>
</td>
<td>
    <!-- Delete button for each event -->
    <form action="/deleteevent" method="post" style="display:inline;">
        <input type="hidden" name="eventId" value="<c:out value='${event.id}' />">
        <button type="submit" style="background-color: #ff4d4d; color: white; border: none; padding: 8px 16px; cursor: pointer; border-radius: 5px;">Delete</button>
    </form>
</td>
</tr>

</c:forEach>

</table>

</body>

</html>
