<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Fabels</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #121212;
            color: white;
        }

        .container {
            max-width: 900px;
            margin: auto;
            padding: 20px;
            text-align: center;
        }

        h1, h2 {
            color: white;
        }

        .about-text {
            margin: 20px 0;
            line-height: 1.6;
            text-align: justify;
        }

        .team {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 30px;
        }

        .team-member {
            width: 250px;
            text-align: center;
            background-color: #1e1e1e;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
            border: 2px solid #ff9658;
        }

        .team-member h3 {
            margin: 10px 0 5px;
            font-size: 18px;
        }

        .team-member p {
            font-size: 14px;
            line-height: 1.4;
        }
    </style>
</head>
<body>
   <%@ include file="creatornavbar.jsp" %>
<%@ include file="creatorsidebar.jsp" %>
    <div class="container">
        <h1>Welcome to Fabels</h1>
        <p class="about-text">
            Welcome to Fables, your gateway to India's vibrant cultural heritage and rich historical legacy. 
            We are dedicated to celebrating and preserving the timeless stories, traditions, and landmarks that define the essence of India. 
            Our platform serves as a bridge between the past and the present, inspiring awareness, appreciation, and understanding of India's diverse cultural tapestry.
        </p>
        
        <h1>Meet Our Team</h1>
        <div class="team">
            <div class="team-member">
                
                <h3>Vishnu Priya Mallampati</h3>
                <p>2200031717</p>
                <p>Team Lead</p>
                <p>Responsible for user module, frontend idea development.</p>
            </div>
            <div class="team-member">
             
                <h3>Vishnu Samhitha Bolisetty</h3>
                 <p>2200031106</p>
                <p>Team Member</p>
                <p>Responsible for admin module,backend and database.</p>
            </div>
            <div class="team-member">
                
                <h3>Kavya Vasavi Kattamuri</h3>
                 <p>2200031107</p>
                <p>Team Member</p>
                <p>Responsible for creator module, frontend and user interface.</p>
            </div>
        </div>
    </div>
</body>
</html>
