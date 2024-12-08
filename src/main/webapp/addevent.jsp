<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Event</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<%@include file="adminsidebar.jsp" %>
<h3 align="center">Add Event</h3>
<div class="form-container">
    <form method="post" action="insertevent" enctype="multipart/form-data">
        <table>
            <!-- Event Name -->
            <tr>
                <td><label for="ename">Event Name:</label></td>
                <td><input type="text" id="ename" name="name" maxlength="100" required/></td>
            </tr>
            <!-- Event Description -->
            <tr>
                <td><label for="edescription">Event Description:</label></td>
                <td><textarea id="edescription" name="description" rows="4" maxlength="500" required></textarea></td>
            </tr>
            <!-- Event Date -->
            <tr>
                <td><label for="edate">Event Date:</label></td>
                <td><input type="date" id="edate" name="date" required/></td>
            </tr>
          
            <!-- Venue -->
            <tr>
                <td><label for="elocation">Venue:</label></td>
                <td><input type="text" id="elocation" name="location" maxlength="100" required/></td>
            </tr>
            <!-- Upload Event Image -->
            <tr>
                <td><label for="eimage">Event Image:</label></td>
                <td><input type="file" id="eimage" name="eventimage" accept="image/*" required/></td>
            </tr>
            <!-- Event Registration Link -->
            <tr>
                <td><label for="elink">Registration Link:</label></td>
                <td><input type="url" id="elink" name="link" maxlength="255" required/></td>
            </tr>
            <!-- Submit and Reset -->
            <tr align="center">
                <td colspan="2" class="button-container">
                    <input type="submit" value="Add Event"/>
                    <input type="reset" value="Clear"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
