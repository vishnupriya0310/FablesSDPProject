<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%@include file="sidebar.jsp" %>
    <div class="navbar">
        <!-- Add the logo here -->
       
            <img src="images/logo1.png" alt="Logo" class="logo">
            <img src="images/Hamburgermenu.png" alt="menu" class="menu" onclick="toggleSidebar()">
             
       
        <a href="/" style="margin-left: auto;">Home</a>
        <a href="adminlogin">Admin</a>
        <a href="userlogin">User</a>
        <a href="creatorlogin">Creator</a>
    </div>
    
    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("mySidebar");
            // Toggle sidebar visibility
            sidebar.classList.toggle("open"); 
        }
    </script>
</body>
</html>
