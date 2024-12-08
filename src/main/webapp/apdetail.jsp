<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ include file="usernavbar.jsp" %>

<%@ include file="usersidebar.jsp" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Food Catalog - Andhra Pradesh</title>

    <style>

        body {

            font-family: Arial, sans-serif;

            margin: 0;

            padding: 0;

            background-color: #f4f4f4;

        }

        .container {

            display: flex;

            flex-wrap: wrap;

            justify-content: center;

            margin: 20px;

        }

        .food-item {

            display: flex;

            width: 80%;

            margin: 20px;

            padding: 20px;

            background-color: rgba(0, 0, 0, 0.2); /* Transparent white background */

            border-radius: 8px;

            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);

        }

        .food-item:nth-child(even) {

            flex-direction: row-reverse;

        }

        .food-image {

            width: 40%;

            padding-right: 20px;

        }

        .food-image img {

            width: 100%;

            border-radius: 8px;

        }

        .food-description {

            width: 60%;

            padding-left: 20px;

        }

        .food-description h3 {

            color: #ff9658;

        }

        .h1{

        color: #ff9658;

        }

        .food-description p {

            color: #fff;

        }

    </style>

</head>

<body>



    <h1 style="text-align: center; margin-top: 40px;">Famous Foods of Andhra Pradesh</h1>



    <div class="container">

        <!-- First food item -->

        <div class="food-item">

            <div class="food-image">

                <img src="https://shorturl.at/pHRbf" alt="Andhra Biryani">

            </div>

            <div class="food-description">

                <h3>Andhra Biryani</h3>

                <p>Andhra Biryani is a spicy and aromatic rice dish cooked with meat or vegetables, flavored with bold spices, and often served with raita.</p>

            </div>

        </div>



        <!-- Second food item -->

        <div class="food-item">

            <div class="food-image">

                <img src="https://shorturl.at/Ep38r" alt="Pesarattu">

            </div>

            <div class="food-description">

                <h3>Pesarattu</h3>

                <p>Pesarattu is a traditional Andhra dosa made from green gram (moong dal), often paired with ginger chutney or coconut chutney.</p>

            </div>

        </div>



        <!-- Third food item -->

        <div class="food-item">

            <div class="food-image">

                <img src="https://tinyurl.com/y8dbr8m3" alt="Pulihora">

            </div>

            <div class="food-description">

                <h3>Pulihora</h3>

                <p>Pulihora, also known as tamarind rice, is a tangy and spicy rice dish made with tamarind, mustard seeds, and a variety of spices.</p>

            </div>

        </div>



        <!-- Fourth food item -->

        <div class="food-item">

            <div class="food-image">

                <img src="https://tinyurl.com/yc58ss2z" alt="Gongura Pachadi">

            </div>

            <div class="food-description">

                <h3>Pungullu</h3>

                <p>Punugulu also known as punukulu are crispy, fluffy & delicious fritters made with idli dosa batter, onions and spices.</p>

            </div>

        </div>

    </div>



</body>

</html>