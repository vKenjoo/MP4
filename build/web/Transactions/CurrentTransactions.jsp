<%-- 
    Document   : CompletedTransactions
    Created on : 12 8, 23, 3:32:29 AM
    Author     : marcc
--%>
<%@page import="java.util.Date"%>
<html>
    <head>
        <meta charset="utf-8" />
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
                align-items: center; /* Align items vertically in the center */
                margin-left: 17px;
            }

            .ongoing-trans p {
                font-size: 2.5em;
                font-family: sans-serif;
                font-weight: 800;
                letter-spacing: 1px;
                margin-right: 30px; /* Adjust the spacing between text and line */
                margin-left: 80px;

            }

            .custom-line {
                flex: 1; /* Take up remaining space */
                border: 1px solid #333;
                margin: 0; /* Remove top and bottom margin */
                margin-right: 70px;
                margin-left: 10px
            }
            .main {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                margin-top:-6.25em;
            }

            .box-container {
                width: 50em; /* Increase the width as needed */
                padding: 15.625em;
                padding-bottom: 20.875em;
                border: 3px solid #E3F4CD;
                margin-top:-2.5em;
                margin-left: 1.875em;
                border-radius: 0.938em;
                box-shadow: 1px 1px 5px #888888;
                background-color: white;
                position: fixed;
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
                left: 40px;
                margin-right:100px;
                margin-left: 60px;
            }
            .desc p {
                color: black;
                text-align: center;
                line-height: 2;
                font-size: 15px;
                font-family: "inter", sans-serif;
            }
            .button-container{
                position: absolute;
                top: 490px;
                left: 245px;

            }
            .button {
                display: inline-block;
                background-color: #D37A7A;
                color: white;
                padding: 15px 70px; /* Increased padding for a larger button */
                text-align: center;
                text-decoration: none;
                font-size: 20px;
                color:black;
                font-family: "inter", sans-serif;
                cursor: pointer;
                border: none;
                border-radius: 20px;
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

    </head>
    <body>
        <header>
        <a class="logo" href="/MP4/index.jsp"><img src="/MP4/VROOM.svg" alt="logo"></a>
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
        <div class="rectangle"> </div>
        <div class="ongoing-trans">
            <p>ONGOING TRANSACTION</p>
            <hr class="custom-line">
        </div>
        <div class="main">
            <div class="box-container">
                <div class="civic"><p>HONDA CIVIC</p> </div>
                <div class="details"> <p>DETAILS</p> </div>
                <div class="info">
                    <p> TYPE: <b>Sedan</b></p> <!--JAVA CODE -->
                    <p> TRANSMISSION: <b>Automatic</b></p>  
                    <p> PICK-UP/DROP-OFF DATE: <b>19 Dec - 21 Dec</b></p> 
                    <p> PICK-UP/DROP-OFF TIME: <b>11:00 AM / 1:00PM</b></p> 
                    <p> PICK-UP/DROP-OFF LOCATION: <b>University of Santo Tomas, Manila</b></p> 
                    <p> PAYMENT METHOD: <b>CASH</b></p> 
                </div>
                <div class ="desc"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                        Nam eget mattis velit, suscipit dapibus lorem. Aliquam erat volutpat. Nam egestas pharetra elit, vel iaculis leo sodales id.</p></div>

                <div class="button-container">
                    <a href="/MP4/Transactions/Cancellation.jsp" class="button">CANCEL RENTAL</a>
                </div>
            </div>
        </div>
    </body>
</html>
