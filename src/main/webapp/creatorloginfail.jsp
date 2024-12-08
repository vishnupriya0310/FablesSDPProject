<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<title>Creator Login Fail</title>
 <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
 <h2>Creator Login Fail</h2>
    <div class="message-container">
    <div class="message">
       
        <c:out value="${message}"></c:out>
        </div>
    </div>
    <br>
    <a href="creatorlogin">Try Again</a>
</body>
</html>