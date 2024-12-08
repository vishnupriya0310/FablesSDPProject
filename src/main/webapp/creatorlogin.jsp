<html>
<head>
    <title>Creator Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
    <%@include file="navbar.jsp" %>

    <h3 style="text-align: center;">Creator Login</h3>

    <div class="form-container">
        <form method="post" action="checkcreatorlogin">
            <table>
                <!-- Username -->
                <tr>
                    <td><label for="cusername">Enter Username:</label></td>
                    <td><input type="text" id="cusername" name="cusername" required/></td>
                </tr>
                <!-- Password -->
                <tr>
                    <td><label for="cpwd">Enter Password:</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" required/></td>
                </tr>
                <!-- Submit and Reset Buttons -->
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
        <p style="text-align: center; margin-top: 15px; color: black;">
            Don't have an account? <a href="creatorreg.jsp" style="color: black;">Register here</a>
        </p>
    </div>
</body>
</html>
