<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="creatornavbar.jsp" %>
<%@ include file="creatorsidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Explore Festivals</title>
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

    <h1>Explore Festivals of India</h1>

    <!-- Monument Cards -->
    <div class="monument-card">
        <img src="https://shorturl.at/rrd4n" alt="Taj Mahal">
        <h3>Dusshera</h3>
        <p>Dussehra, also known as Vijayadashami or Dasara, is a Hindu festival that celebrates the victory of good over evil.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="https://shorturl.at/zpUPx" alt="Qutub Minar">
        <h3>Diwali</h3>
        <p>It symbolises the spiritual victory of Dharma over Adharma, light over darkness, good over evil, and knowledge over ignorance.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="https://shorturl.at/JfJKs" alt="Red Fort">
        <h3>Ganesh Chaturthi</h3>
        <p>It is celebrated to mark the birth of Lord Ganesha, a Hindu deity who is known to remove obstacles and bring wisdom, prosperity, and good fortune</p>
        <a href="#">Learn More</a>
    </div>

    <div class="clear"></div>

    <div class="monument-card">
        <img src="https://tinyurl.com/ytvn3j6x" alt="KrishnaJanmastami">
        <h3>Krishna Janmashtami</h3>
        <p>The Krishna Janmashtami festival marks the birth of Krishna, one of the most popular deities worshipped by Hindus.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="https://shorturl.at/ktHAa" alt="Gateway of India">
        <h3>Makar Sankranthi</h3>
        <p>Makar Sankranti is celebrated to honour the sun god, Surya, and is associated with the harvest season.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="monument-card">
        <img src="https://rb.gy/lhzpnq" alt="India Gate">
        <h3>Ram Navami</h3>
        <p>This festival celebrates the birth of Lord Rama who is an incarnation of Lord Vishnu, became king of Ayodhya, known for exemplary qualities.</p>
        <a href="#">Learn More</a>
    </div>

    <div class="clear"></div>

</body>
</html>