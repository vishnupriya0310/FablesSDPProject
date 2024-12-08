<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ include file="usernavbar.jsp" %>

<%@ include file="usersidebar.jsp" %>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Taj Mahal</title>

    <style>

        body {

            background-color: #121212;

            color: #ff9658;

            font-family: Arial, sans-serif;

            margin: 0;

            padding: 0;

             font-family: 'Georgia', serif;  /* Traditional, cultural font */

        }



        h1 {

            text-align: center;

            color: #ff9658;

            padding: 20px;

        }



        .section {

            display: flex;

            align-items: center;

            justify-content: space-between;

            padding: 20px;

            margin: 10px;

            background-color: rgba(0, 0, 0, 0.5);

            border: 2px solid #ff9658;

            border-radius: 10px;

            max-width: 900px;

            margin-left: auto;

            margin-right: auto;

        }



        .section img {

            width: 40%;

            border-radius: 10px;

            object-fit: cover;

        }



        .section p {

            width: 55%;

            font-size: 1.2em;

            line-height: 1.8;

            color: #f3a87f;

        }



        .section:nth-child(even) {

            flex-direction: row-reverse;

        }



        .back-button {

            display: block;

            text-align: center;

            margin-top: 20px;

            color: #ff9658;

            text-decoration: none;

            font-size: 1.2em;

        }



        .back-button:hover {

            color: #ff7f2e;

        }

    </style>

</head>

<body>



<h1>Taj Mahal</h1>



<div class="section">

    <img src="https://shorturl.at/UK1B4" alt="Taj Mahal">

    <p>

        The Taj Mahal, located in Agra, India, is one of the most iconic and renowned monuments in the world. Built by Emperor Shah Jahan in memory of his beloved wife, Mumtaz Mahal, it symbolizes eternal love.

    </p>

</div>



<div class="section">

    <img src="https://shorturl.at/l7iPq" alt="Front View of Taj Mahal">

    <p>

        Constructed between 1632 and 1653, the Taj Mahal took over 20 years to complete, with the involvement of more than 20,000 artisans. Its construction showcases Mughal architectural brilliance with perfect symmetry and harmony.

    </p>

</div>



<div class="section">

    <img src="https://shorturl.at/gH7Zq" alt="Reflection of Taj Mahal in Pool">

    <p>

        The Taj Mahal stands majestically on the banks of the Yamuna River. The reflection of the structure in the water adds to its mesmerizing beauty, especially during sunrise and sunset.

    </p>

</div>



<div class="section">

    <img src="https://shorturl.at/7DOqW" alt="Taj Mahal Gardens">

    <p>

        The sprawling gardens of the Taj Mahal are known as Charbagh, divided into four parts, symbolizing paradise. The gardens enhance the aesthetic appeal of the monument, offering a serene environment.

    </p>

</div>



<div class="back-button">

    <a href="exploremonuments.jsp" style="color: white;">Back to Explore Monuments</a>

</div>



</body>

</html>