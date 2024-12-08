<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
    <div class="message-container">
        <h1>Registration Successful</h1>
        <p><c:out value="${message}"></c:out></p>
        <br><br>
        <a href="userlogin">Login Here</a>
    </div>
</body>
</html>
