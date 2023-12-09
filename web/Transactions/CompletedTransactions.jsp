<%-- 
    Document   : CompletedTransactions
    Created on : 12 8, 23, 2:59:05 AM
    Author     : marcc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
                * {
                    box-sizing: border-box;
                    margin: 0;
                    padding: 0;
                }
                header {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    padding: 20px 10%;
                }
                .logo {
                    cursor: pointer;
                }
                .nav__links a,
                .cta,
                .overlay__content a {
                    font-family: "Montserrat", sans-serif;
                    font-weight: 500;
                    color: #000000;
                    text-decoration: none;
                }
                .nav__links {
                    list-style: none;
                    display: flex;
                }
                .nav__links li {
                    padding: 0px 20px;
                }
                .nav__links li a {
                    transition: color 0.3s ease 0s;
                }
                .nav__links li a:hover {
                    color: #DDED88;
                }
                .cta {
                    padding: 9px 25px;
                    background-color: #E1E1E1;
                    border: none;
                    border-radius: 50px;
                    cursor: pointer;
                    transition: background-color 0.3s ease 0s;
                }
                .cta:hover {
                    background-color: #DDED88;
                }
                .rectangle {
                    position: fixed;
                    bottom: 6.25em;
                    right: -750px;
                    padding-left: 100px;
                    width: 2000px;
                    height: 750px;
                    opacity: 90%;
                    background-color: #E8FCD1;
                    transform: rotate(-25deg);
                    transform-origin: bottom right;
                    z-index: -1;
                }
                .ongoing-trans {
                    display: flex;
                    align-items: center;
                    margin-left: 17px;
                }
                .ongoing-trans p {
                    font-size: 2.5em;
                    font-family: sans-serif;
                    font-weight: 800;
                    letter-spacing: 1px;
                    margin-right: 30px;
                    margin-left: 80px;
                }
                .custom-line {
                    flex: 1;
                    border: 1px solid #333;
                    margin: 0;
                    margin-right: 70px;
                    margin-left: 10px;
                }
                .main {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                    margin: 0;
                    margin-top: -6.25em;
                }
                .box-container {
                    position: relative; /* Added relative positioning */
                    width: 50em;
                    padding: 15.625em;
                    padding-bottom: 20.875em;
                    border: 3px solid #E3F4CD;
                    margin-top: -2.5em;
                    margin-left: 1.875em;
                    border-radius: 0.938em;
                    box-shadow: 1px 1px 5px #888888;
                    background-color: white;
                }
                body {
                    overflow: hidden;
                    font-family: "Inter", sans-serif;
                    background-color: #ffffff;
                    opacity: 1;
                    background-image: radial-gradient(#6f986b 0.55px, #ffffff 0.55px);
                    background-size: 11px 11px;
                }
                .civic {
                    position: absolute;
                    top: 52px;
                    left: 45px;
                }
                .civic p {
                    color: #4f4f4f;
                    letter-spacing: 1.3px;
                    font-style: italic;
                    font-weight: 800;
                    font-size: 46px;
                    font-family: "inter", sans-serif;
                }
                .details {
                    position: absolute;
                    top: 135px;
                    left: 49px;
                }
                .details p {
                    color: black;
                    text-decoration: underline solid black 1.5px;
                    text-underline-offset: 0.35em;
                    font-weight: 800;
                    font-size: 15px;
                    font-family: "inter", sans-serif;
                }
                .info {
                    position: absolute;
                    top: 170px;
                    left: 49px;
                }
                .info p {
                    color: black;
                    line-height: 2.5;
                    font-size: 15px;
                    font-family: "inter", sans-serif;
                }
                .desc {
                    position: absolute;
                    top: 380px;
                    left: 49px;
                }
                .desc p {
                    color: black;
                    text-align: center;
                    line-height: 2;
                    font-size: 20px;
                    font-family: "inter", sans-serif;
                }
                .button-container {
                    position: absolute;
                    top: 390px;
                    left: 500px;
                }
                .button {
                    display: inline-block;
                    color: white;
                    padding: 30px 75px;
                    text-align: center;
                    text-decoration: none;
                    font-size: 20px;
                    color: black;
                    font-family: "inter", sans-serif;
                    cursor: pointer;
                    border: .5px #888 solid;
                    background-color: #fff;
                    border-radius: 10px;
                    box-shadow: 3px 3px 9px rgba(0, 0, 0, 0.3);

                }
                .button-container a:hover {
                    background-color: #E8FCD2;
                    border: 1px solid #E8FCD2;
                }
                .rating {
                    unicode-bidi: bidi-override;
                    direction: rtl;
                    font-size: 30px;
                    display: inline-block;
                    margin-top: -5px; /* Adjusted margin */
                }
                .rating input {
                    display: none;
                }
                .rating label {
                    display: inline-block;
                    cursor: pointer;
                    padding: 5px;
                    padding-top: 0;
                    margin-top: -10px;
                }
                .rating label:before {
                    content: '\2605';
                    font-size: 50px;
                    color: #ddd;
                }
                .rating input:checked ~ label:before,
                .rating label:hover ~ label:before,
                .rating input:checked ~ label:hover ~ label:before {
                    color: #ffcc00;
                }
                .image-container {
                    position: absolute;
                    top: 55px;
                    left: 350px;
                    overflow: hidden;
                    z-index:1;
                }
                .image-container img {
                    width: 100%;
                    height: auto;
                    object-fit: contain;
                }
                .bottom {
                    position: absolute;
                    top: 550px;
                    left: 277px;
                    opacity:50%;
                    font-weight: 100;
                    color: #888;
                    font-size: 13px;
                    font-style: italic;
                    font-family: "inter", sans-serif;
                }
            </style>
            <title>Completed Transaction</title>
        </head>
        <body>
            <header>
                <a class="logo" href="/"><img src="/MP4/VROOM.svg" alt="logo"></a>
                <nav>
                    <ul class="nav__links">
                        <li><a href="/MP4/index.jsp">Main</a></li>
                        <li><a href="/MP4/About/AboutUs.jsp">About</a></li>
                        <li><a href="/MP4/index.jsp">Program</a></li>
                        <li><a href="/MP4/AccountDetails.jsp">Profile</a></li>
                        <li><a href="/MP4/About/AboutUs.jsp">Contact</a></li>
                    </ul>
                </nav>
                <a class="cta" href="#">Contact</a>
            </header>
            <div class="rectangle"></div>
            <div class="ongoing-trans">
                <p>COMPLETED TRANSACTION</p>
                <hr class="custom-line">
            </div>
            <div class="main">
                <div class="box-container">
                    <div class="civic"><p>HONDA CIVIC</p></div>
                    <div class="details"><p>DETAILS</p></div>
                    <div class="info">
                        <p> TYPE: <b>Sedan</b></p> <!--JAVA CODE -->
                        <p> TRANSMISSION: <b>Automatic</b></p>
                        <p> PICK-UP/DROP-OFF DATE: <b>8 Dec - 9 Dec</b></p>
                        <p> PICK-UP/DROP-OFF DATE: <b>8:00AM / 10:00AM</b></p>
                        <p> PICK-UP/DROP-OFF LOCATION: <b>University of Santo Tomas, Manila</b></p>
                        <p> PAYMENT METHOD: <b>CASH</b></p>
                    </div>
                    <div class="desc">
                        <p><b>RATING:</b></p> 
                        <div class="rating">
                            <input type="radio" id="star5" name="rating" value="5"><label for="star5"></label>
                            <input type="radio" id="star4" name="rating" value="4"><label for="star4"></label>
                            <input type="radio" id="star3" name="rating" value="3"><label for="star3"></label>
                            <input type="radio" id="star2" name="rating" value="2"><label for="star2"></label>
                            <input type="radio" id="star1" name="rating" value="1"><label for="star1"></label>
                        </div>
                    </div>
                    <div class="button-container">
                        <a href="/MP4/index.jsp" class="button">HOME</a>
                    </div>
                    <div class="image-container">
                        <img src="/MP4/Marketplace/pics/HC.png" alt="Honda Civic">
                    </div>
                    <p class="bottom"> THANK YOU FOR CHOOSING VROOM!</p>
                </div>
            </div>
        </body>
    </html>