<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="style1.css">
    <script>
        function validateForm() {
            const password = document.getElementById("upwd").value;
            const dob = new Date(document.getElementById("udob").value);
            const today = new Date();

            // Validate password strength
            if (!/^(?=.[A-Za-z])(?=.\d)[A-Za-z\d@$!%*?&]{8,}$/.test(password)) {
                alert("Password must be at least 8 characters long and include at least one letter and one number.");
                return false;
            }

           
    </script>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <h3 style="text-align: center;"><u>User Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertuser" onsubmit="return validateForm()">
            <table>
                <!-- Username -->
                <tr>
                    <td><label for="uname">Username</label></td>
                    <td><input type="text" id="uname" name="uname" required 
                               pattern="[A-Za-z0-9_]{3,50}" 
                               title="Username must be between 3 to 50 characters and can only contain letters, numbers, and underscores." /></td>
                </tr>
                <!-- Gender -->
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="ugender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="ugender" value="FEMALE"/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="ugender" value="OTHERS"/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <!-- Date of Birth -->
                <tr>
                    <td><label for="udob">Date of Birth</label></td>
                    <td><input type="date" id="udob" name="udob" required /></td>
                </tr>
                <!-- Location -->
                <tr>
                    <td><label for="ulocation">Location</label></td>
                    <td><input type="text" id="ulocation" name="ulocation" required 
                               maxlength="100" 
                               title="Location must not exceed 100 characters." /></td>
                </tr>
                <!-- Email -->
                <tr>
                    <td><label for="uemail">Email ID</label></td>
                    <td><input type="email" id="uemail" name="uemail" required 
                               maxlength="100" /></td>
                </tr>
                <!-- Password -->
                <tr>
                    <td><label for="upwd">Password</label></td>
                    <td><input type="password" id="upwd" name="upwd" required 
                               minlength="8" 
                               title="Password must be at least 8 characters long." /></td>
                </tr>
                <!-- Contact -->
                <tr>
                    <td><label for="ucontact">Contact</label></td>
                    <td><input type="text" id="ucontact" name="ucontact" required 
                               pattern="[0-9]{10}" 
                               title="Contact must be a 10-digit number." /></td>
                </tr>
                <!-- Submit and Reset -->
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
        <p style="text-align: center; margin-top: 15px; color: black;">
            Already have an account? <a href="userlogin.jsp" style="color: black;">Login here</a>
        </p>
    </div>
</body>
</html>