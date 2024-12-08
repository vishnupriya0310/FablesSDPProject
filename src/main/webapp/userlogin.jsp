<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
    <%@include file="navbar.jsp" %>
    
    <h3 style="text-align: center;">User Login</h3>
    <div class="form-container">
        <form method="post" action="checkuserlogin">
            <table>
                <tr>
                    <td><label for="uuname">Enter Username:</label></td>
                    <td><input type="text" id="uuname" name="uuname" required/></td>
                </tr>
                <tr>
                    <td><label for="upwd">Enter Password:</label></td>
                    <td><input type="password" id="upwd" name="upwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
        <p style="text-align: center; margin-top: 15px; color: black;">
            Don't have an account? <a href="userreg.jsp" style="color: black;">Register here</a>
        </p>
    </div>
</body>
</html>
