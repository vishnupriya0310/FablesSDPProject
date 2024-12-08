<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="creatornavbar.jsp" %>
<%@ include file="creatorsidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Food</title>
    <style>
        body {
            background-color: #121212; /* Dark background */
            color: #ff9658; /* Main theme color */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #ff9658;
            padding: 20px;
            font-size: 2em;
        }

        .monument-card {
            background-color: rgba(59, 59, 59, 0.7); /* Transparent container */
            border: 2px solid #ff9658;
            border-radius: 10px;
            box-shadow: 0 0 15px #ff9658;
            margin: 20px;
            padding: 10px;
            width: calc(33% - 80px);
            float: left;
            text-align: center;
        }

        .monument-card img {
            width: 100%;
            border-radius: 10px;
            height: 200px;
            object-fit: cover;
        }

        .monument-card h3 {
            color: #ff9658;
            font-size: 1.5em;
        }

        .monument-card p {
            color: #f3a87f;
            font-size: 1.2em;
            margin-top: 10px;
        }

        .clear {
            clear: both;
        }

        a {
            color: #ff9658;
            text-decoration: none;
        }

        a:hover {
            color: #ff7f2e; /* Darker shade of orange */
        }

    </style>
</head>
<body>

    <h1> Exploring the Diverse Flavors</h1>

    <!-- Monument Cards -->
    <div class="monument-card">
        <img src="https://shorturl.at/6rIqD" alt="Andhra Pradesh">
        <h3>Andhra Pradesh</h3>
        <p>Andhra Pradesh's cuisine is known for its bold, spicy flavors, rich use of aromatic spices, tantalizing combinations of tangy and savory.</p>
        <a href="apdetail.jsp">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="http://surl.li/qkokum" alt="Telangana">
        <h3>Telangana</h3>
        <p>Telangana's cuisine is known for its fiery, flavorful dishes with bold spices and unique rice preparations.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="http://surl.li/bulsye" alt="Tamil Nadu">
        <h3>Tamil Nadu</h3>
        <p>Tamil Nadu's cuisine is celebrated for its aromatic, tangy, and spice-rich dishes, with a focus on rice and lentils.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="clear"></div>

    <div class="monument-card">
        <img src="http://surl.li/kbyrez" alt="Karnataka">
        <h3>Karnataka</h3>
        <p>Karnataka's cuisine is known for its diverse flavors, from mild to spicy, with unique rice dishes, dosas, and a rich variety of curries and sweets.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="http://surl.li/qglehu" alt="Kerala">
        <h3>Kerala</h3>
        <p> Kerala's cuisine is celebrated for its fresh, aromatic flavors, featuring coconut, seafood, and a perfect blend of spices in its rich curries and snacks.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="http://surl.li/dlqjrp" alt="Odisa">
        <h3>Odisa</h3>
        <p>Odisha's cuisine is known for its simple yet flavorful dishes, featuring a harmonious blend of mustard oil, rice, and fresh vegetables, along with unique sweets like rasgulla and chhena poda.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="clear"></div>

</body>
</html>