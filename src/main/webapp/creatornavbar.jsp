<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Creator Navbar</title>
</head>
<body>

        <div class="navbar">
        
            <img src="images/logo1.png" alt="Logo" class="logo" >
             <img src="images/Hamburgermenu.png" alt="menu" class="menu" onclick="toggleSidebar()">
       
         <c:if test="${not empty creator}">
            <span style="margin-left: auto;">Welcome, ${creator.username}</span> | 
        </c:if>
            <a href="creatorhome">Home</a>
           
            
            <a href="creatorlogout">Logout</a>
        </div>
     <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("creatorsidebar");
            // Toggle sidebar visibility
            sidebar.classList.toggle("open"); 
        }
    </script>
</body>
</html>
