<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login Fail</title>
     <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="style2.css"> <!-- Link to CSS file -->
     
</head>
<body>
<%@include file="navbar.jsp" %>
    <div class="container">
        <div class="message-container">
            <h2>Login Failed</h2>
            <p class="error-message">
                <c:out value="${message}"></c:out>
            </p>
            <a href="adminlogin" class="retry-button">Try Again</a>
        </div>
    </div>
</body>
</html>
