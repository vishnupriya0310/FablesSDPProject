<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="style.css">
     <link rel="stylesheet" type="text/css" href="style1.css">
   
</head>
<body>
     <%@ include file="creatornavbar.jsp" %>
<%@ include file="creatorsidebar.jsp" %>
    <h3>Contact Us</h3>
    <div class="form-container">
        <form method="post" action="submitfeedback">
            <table>
                <!-- Full Name -->
                <tr>
                    <td><label for="fullname">Full Name</label></td>
                    <td><input type="text" id="fullname" name="fullname" required 
                               placeholder="Enter your full name" maxlength="100" /></td>
                </tr>
                <!-- Email -->
                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><input type="email" id="email" name="email" required 
                               placeholder="Enter your email" maxlength="100" /></td>
                </tr>
                <!-- Contact -->
                <tr>
                    <td><label for="contact">Contact</label></td>
                    <td><input type="text" id="contact" name="contact" required 
                               pattern="[0-9]{10}" placeholder="Enter 10-digit contact number" /></td>
                </tr>
                <!-- Subject -->
                <tr>
                    <td><label for="subject">Subject</label></td>
                    <td><input type="text" id="subject" name="subject" required 
                               placeholder="Enter the subject" maxlength="100" /></td>
                </tr>
                <!-- Message -->
                <tr>
                    <td><label for="message">Message</label></td>
                    <td><textarea id="message" name="message" rows="5" required 
                                  placeholder="Write your message here"></textarea></td>
                </tr>
                <!-- Submit and Reset -->
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Submit"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
        <p style="color:black;">We value your feedback and will get back to you shortly.</p>
    </div>
</body>
</html>
