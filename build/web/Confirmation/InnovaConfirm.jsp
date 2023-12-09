<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                margin-top: 45px;
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
                margin-left: 1.25em;
                border-radius: 0.938em;
                box-shadow: 1px 1px 5px #888888;
                background-color: white;
                right:200px;
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
                top: 150px;
                left: 215px;
            }

            .civic p {
                color: #4f4f4f;
                letter-spacing: 1.3px;
                font-style: italic;
                font-weight: 800;
                font-size: 47px;
                font-family: "inter", sans-serif;
            }
            .desc {
                position: absolute;
                top: 120px;
                left: -10px;
                padding:125px;
            }

            .desc p {
                color: black;
                text-align: center;
                line-height: 1.5;
                font-size: 22px;
                font-family: "inter", sans-serif;
            }

            .button-container {
                position: absolute;
                top: 445px;
                left: 220px;
            }

            .button {
                display: inline-block;
                color: white;
                padding: 15px 70px;
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


            .image-container {
                position: absolute;
                top: 355px;
                left: 1000px;
                overflow: hidden;
                z-index:1;
            }

            .image-container img {
                width: 85%;
                height: auto;
                object-fit: contain;
            }
            .bottom {
                position: absolute;
                top: 520px;
                left: 367px;
                opacity:80%;
                font-weight: 400;
                color: black;
                font-size: 18px;
                font-style: italic;
                font-family: "inter", sans-serif;
            }
            .headline {
                position: absolute;
                top: 48px;
                left: 85px;

            }
            .headline p {
                color: black;
                letter-spacing: 0.5px;
                text-align: center;
                font-weight: 700;
                font-size: 73px;
                font-family: "inter", sans-serif;
            }
            .footer{
                padding:-2px 0px;
                font-family: 'Play', sans-serif;
                text-align:center;
            }

            .footer .row{
                width:100%;
                margin:1% 0%;
                padding:0.6% 0%;
                color: #000;
                font-size:0.9em;
            }

            .footer .row a{
                text-decoration:none;
                color: #000;
                transition:0.5s;
            }

            /*.footer .row a:hover{
                color:#;
            } */

            .footer .row ul{
                width:100%;
            }

            .footer .row ul li{
                display:inline-block;
                margin:0px 30px;
            }

            .footer .row a i{
                font-size:2em;
                margin:0% 1%;
            }

            @media (max-width:720px){
                .footer{
                    text-align:left;
                    padding:5%;
                }
                .footer .row ul li{
                    display:block;
                    margin:10px 0px;
                    text-align:left;
                }
                .footer .row a i{
                    margin:0% 3%;
                }
            }
        </style>
        <title>Confirmation</title>
    </head>
    <body>
        <header>
            <a class="logo" href="/MP4/index.jsp"><img src="VROOM.svg" alt="logo"></a>
            <nav>
                <ul class="nav__links">
                    <li><a href="/MP4/index.jsp">Main</a></li>
                    <li><a href="/MP4/About/AboutUs.jsp">About</a></li>
                    <li><a href="/MP4/index.jsp">Program</a></li>
                    <li><a href="/MP4/AccountDetails.jsp">Profile</a></li>
                    <li><a href="/MP4/About/AboutUs.jsp">Contact</a></li>
                </ul>
            </nav>
            <a class="cta" href="/MP4/Marketplace/MarketPlace.jsp">Marketplace</a>
            <p class="menu cta">Marketplace</p>
        </header>
        <div class="rectangle"></div>
        <div class="ongoing-trans">
            <p>CONFIRMATION</p>
            <hr class="custom-line">
        </div>
        <div class="main">
            <div class="box-container">
                <div class="headline"><p>CONFIRM RENTAL</p> </div>
                <div class="civic"><p>TOYOTA INNOVA</p></div>
                <div class="desc">
                    <p>Please double-check the rental dates, location, and other details before confirming. 
                        If you have any changes or special requests, ensure they are accurate before proceeding.Once confirmed, 
                        the booking is subject to our cancellation and refund policy</p> 
                </div>
                <div class="button-container">
                    <a href="/MP4/Transactions/CurrentTransactions.jsp" class="button">CONFIRM CHECKOUT</a>
                </div>
                <a href="/MP4/Marketplace/tiVL.jsp" class="bottom">BACK</a>
            </div>
        </div>
        <div class="image-container">
            <img src="/MP4/Marketplace/pics/TI.png" alt="Honda Civic">
        </div>
        <footer>
            <div class="footer">
                <div class="row">
                    <ul>
                        <li>© 2023 VROOM - All rights reserved</li>
                        <li><a href="/MP4/Footer/PrivacyPolicy.jsp">Privacy Policy</a></li>
                        <li><a href="/MP4/Footer/TandC.jsp">Terms & Conditions</a></li>
                    </ul>
                </div>
                <div class="row">
                    <ul>
                        <% Date date = (Date) getServletContext().getAttribute("date");%>
                        <li><strong>Date:</strong> <%= date%></li>
                        <li><strong>Machine Problem:</strong> <% out.print(getServletContext().getInitParameter("MPNumber"));%></li>
                    </ul>
                </div>
            </div>
        </footer>
    </body>
</html>