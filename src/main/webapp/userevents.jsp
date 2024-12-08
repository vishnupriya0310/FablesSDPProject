<%@page import="com.klef.jfsd.springboot.model.Event"%>
<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

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
    
    <style>
        /* Body styling */
        body {
            background-color: #121212; /* Dark background */
            color: #ff9658; /* Main theme color */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            color: white;
            padding: 20px;
            font-size: 2em;
        }

        /* Card container */
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        /* Styling for each event card */
        .event-card {
            background-color: rgba(59, 59, 59, 0.7); /* Transparent container */
            border: 2px solid #ff9658;
            border-radius: 10px;
            box-shadow: 0 0 15px #ff9658;
            padding: 10px;
            text-align: center;
            transition: transform 0.2s ease-in-out;
        }

        /* Hover effect for the card */
        

        .event-card img {
            width: 100%;
            border-radius: 10px;
            height: 200px;
            object-fit: cover;
        }

        .event-card h4 {
            color: #ff9658;
            font-size: 1.5em;
        }

        .event-card p {
            color: #f3a87f;
            font-size: 1.2em;
            margin-top: 10px;
        }

        /* Footer styles for each card */
        .card-footer {
            display: flex;
            justify-content: space-between;
            padding: 10px;
           
            border-top: 1px solid #444;
        }

        .card-footer a {
             background-color: green;
            color: white;
            border: none;
            padding: 8px 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        

        /* Clear floating elements */
        .clear {
            clear: both;
        }
    </style>
</head>

<body>
<%@ include file="usernavbar.jsp" %>
<%@include file="usersidebar.jsp" %>

<h3>View All Events</h3>

<br>

<!-- <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Event Name"> -->

<div class="card-container">
    <c:forEach items="${eventlist}" var="event">
        <div class="event-card">
            <img src="displayeventimage?id=${event.id}" alt="Event Image">
            <h4>${event.name}</h4>
            <p>${event.description}</p>
            <div class="card-footer">
                <a href="<c:url value='${event.link}'></c:url>" target="_new">Register</a>
                <form action="/deleteevent" method="post" style="display:inline;">
                    <input type="hidden" name="eventId" value="<c:out value='${event.id}' />">
                    
                </form>
            </div>
        </div>
    </c:forEach>
</div>

</body>

</html>