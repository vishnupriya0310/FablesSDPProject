<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
    <title>Spring Boot</title>
    <link rel="stylesheet" type="text/css" href="style.css">
     <link rel="stylesheet" type="text/css" href="style3.css">
    
</head>
<body>
   
    <div class="navbar">
     
            <img src="images/logo1.png" alt="Logo" class="logo" >
             <img src="images/Hamburgermenu.png" alt="menu" class="menu" onclick="toggleSidebar()">
       
         
         <c:if test="${not empty user}">
            <span style="margin-left: auto;">Welcome, ${user.username}</span> | 
        </c:if>
         <a href="userhome" >Home</a>
         <a href="userlogout" >Logout</a>
       
    </div>
     <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("usersidebar");
            // Toggle sidebar visibility
            sidebar.classList.toggle("open"); 
        }
    </script>
</body>
   
</body>
</html>