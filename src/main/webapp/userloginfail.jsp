<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<title>User Login Fail</title>
<link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="style2.css"> <!-- Link to CSS file -->
</head>
<body>
 <h2>User Login Fail</h2>
    <div class="message-container">
       
       <span style="color:black; font-size: 22px;">
    <c:out value="${message}" />
</span>
       
        <br>
         <a href="userlogin">Try Again</a>
    </div>
  
</body>
</html>