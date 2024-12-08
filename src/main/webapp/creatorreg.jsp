<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Creator Registration</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="style1.css">
<script>
    function validateForm() {
        const password = document.getElementById("cpwd").value;
        const dob = new Date(document.getElementById("cdateOfBirth").value);
        const today = new Date();

        // Validate password strength
        if (!/^(?=.[A-Za-z])(?=.\d)[A-Za-z\d@$!%*?&]{8,}$/.test(password)) {
            alert("Password must be at least 8 characters long and include at least one letter and one number.");
            return false;
        }

        // Validate date of birth (user must be at least 18 years old)
        const age = today.getFullYear() - dob.getFullYear();
        const m = today.getMonth() - dob.getMonth();
        if (m < 0 || (m === 0 && today.getDate() < dob.getDate())) {
            age--;
        }
        if (age < 18) {
            alert("You must be at least 18 years old to register.");
            return false;
        }

        return true;
    }
</script>
</head>
<body>
<%@include file="navbar.jsp" %>
<h3 align="center">Creator Registration</h3>
<div class="form-container">
    <form method="post" action="insertcreator" onsubmit="return validateForm()">
        <table>
            <!-- Username -->
            <tr>
                <td><label for="cusername">Username:</label></td>
                <td><input type="text" id="cusername" name="cusername" maxlength="50" required 
                           pattern="[A-Za-z0-9_]{3,50}" 
                           title="Username must be between 3 to 50 characters and can only contain letters, numbers, and underscores." /></td>
            </tr>
            <!-- Password -->
            <tr>
                <td><label for="cpwd">Password:</label></td>
                <td><input type="password" id="cpwd" name="cpwd" maxlength="50" required 
                           minlength="8" 
                           title="Password must be at least 8 characters long."/></td>
            </tr>
            <!-- Email -->
            <tr>
                <td><label for="cemail">Email ID:</label></td>
                <td><input type="email" id="cemail" name="cemail" maxlength="100" required /></td>
            </tr>
            <!-- Gender -->
            <tr>
                <td><label>Gender:</label></td>
                <td>
                    <input type="radio" id="male" name="cgender" value="MALE" required>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="cgender" value="FEMALE">
                    <label for="female">Female</label>
                    <input type="radio" id="others" name="cgender" value="OTHERS">
                    <label for="others">Others</label>
                </td>
            </tr>
            <!-- Date of Birth -->
            <tr>
                <td><label for="cdateOfBirth">Date of Birth:</label></td>
                <td><input type="date" id="cdateOfBirth" name="cdateOfBirth" required /></td>
            </tr>
            <!-- Location -->
            <tr>
                <td><label for="clocation">Location:</label></td>
                <td><input type="text" id="clocation" name="clocation" maxlength="100" required /></td>
            </tr>
            <!-- Contact -->
            <tr>
                <td><label for="ccontact">Contact:</label></td>
                <td><input type="text" id="ccontact" name="ccontact" maxlength="10" required 
                           pattern="[0-9]{10}" 
                           title="Contact must be a 10-digit number."/></td>
            </tr>
            <!-- Social Media URL -->
            <tr>
                <td><label for="csocialMediaUrl">Social Media URL:</label></td>
                <td><input type="url" id="csocialMediaUrl" name="csocialMediaUrl" maxlength="255"/></td>
            </tr>
            <!-- Submit and Reset -->
            <tr align="center">
                <td colspan="2" class="button-container">
                    <input type="submit" value="Register"/>
                    <input type="reset" value="Clear"/>
                </td>
            </tr>
        </table>
    </form>
    <p style="text-align: center; margin-top: 15px; color: black;">
        Already have an account? <a href="creatorlogin.jsp" style="color: black;">Login here</a>
    </p>
</div>
</body>
</html>