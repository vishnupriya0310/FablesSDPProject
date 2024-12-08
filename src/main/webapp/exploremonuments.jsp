<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="usernavbar.jsp" %>
<%@ include file="usersidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Explore Monuments</title>
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
            color: white;
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

    <h1>Explore Famous Monuments of India</h1>

    <!-- Monument Cards -->
    <div class="monument-card">
        <img src="https://shorturl.at/UK1B4" alt="Taj Mahal">
        <h3>Taj Mahal</h3>
        <p>The Taj Mahal is an ivory-white marble mausoleum located in Agra, India. It was built in memory of Mumtaz.</p>
        <a href="tajmahal.jsp">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="https://shorturl.at/2dctq" alt="Qutub Minar">
        <h3>Qutub Minar</h3>
        <p>The Qutub Minar is a UNESCO World Heritage Site located in Delhi, India. It is the tallest brick minaret in the world, standing at 73 meters.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="https://shorturl.at/VuEtX" alt="Red Fort">
        <h3>Red Fort</h3>
        <p>The Red Fort is a historical fortification in the city of Delhi, India. It served as the main residence of the Mughal emperors for around 200 years.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="clear"></div>

    <div class="monument-card">
        <img src="https://shorturl.at/EnGST" alt="Golden Temple">
        <h3>Golden Temple</h3>
        <p>The Golden Temple, also known as Harmandir Sahib, is the holiest gurdwara of Sikhism, located in Amritsar, Punjab, India.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="https://shorturl.at/iSuXC" alt="Gateway of India">
        <h3>Gateway of India</h3>
        <p>The Gateway of India is an arch monument located in Mumbai, India, built during the 20th century in honor of King George V's visit to India in 1911.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="https://shorturl.at/sBW0m" alt="India Gate">
        <h3>India Gate</h3>
        <p>India Gate is a war memorial located in New Delhi, India. It honors the soldiers who died during World War I and the Afghan Wars.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="clear"></div>

</body>
</html>
