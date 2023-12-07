<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <style>
            /*HEADER*/
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

            .menu {
                display: none;
            }

            .overlay {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                left: 0;
                top: 0;
                overflow-x: hidden;
                transition: width 0.5s ease 0s;
            }

            .overlay--active {
                width: 100%;
            }

            .overlay__content {
                display: flex;
                height: 100%;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }

            .overlay a {
                padding: 15px;
                font-size: 36px;
                display: block;
                transition: color 0.3s ease 0s;
            }

            .overlay a:hover,
            .overlay a:focus {
                color: #0088a9;
            }
            .overlay .close {
                position: absolute;
                top: 20px;
                right: 45px;
                font-size: 60px;
                color: #edf0f1;
            }

            @media screen and (max-height: 450px) {
                .overlay a {
                    font-size: 20px;
                }
                .overlay .close {
                    font-size: 40px;
                    top: 15px;
                    right: 35px;
                }
            }

            @media only screen and (max-width: 800px) {
                .nav__links,
                .cta {
                    display: none;
                }
                .menu {
                    display: initial;
                }
            }

            /*BODY*/
            .flexbox {
                padding: 50px;
                display: flex;
                align-items: center;
                justify-content: center


            }

            .con1{
                flex-grow: 1;            
                padding: 40px; 
                margin: 5px;
                text-align: center;
                height: 500px;
                flex-basis: 30%;
            }

            .con2 {
                flex-grow: 1;
                border: 2px solid #3A5311;
                padding: 40px;
                margin: 5px;
                text-align: center;
                height: 500px;
                flex-basis: 10%; 
                background-color: #e1e1e178;
                border-radius: 8px;
            }

            .con2 h2 {
                font-size: 35px;
                color: #3A5311;
                font-weight: 800; 
            }

            .details-info {
                text-align: left;
                margin-bottom: 20px;
                font-size: 18px; 
                line-height: 1.5;
            }

            .details-info p {
                margin: 10px 0; 
            }

            .buttons {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .proceed-btn,
            .back-btn {
                padding: 15px 30px; 
                margin: 4px;
                font-size: 18px;
                border: none;
                border-radius: 15px;
                cursor: pointer;
                transition: background-color 0.3s ease, transform 0.3s ease; 
            }

            .proceed-btn {
                background-color: #c0d06e;
                font-size: 25px

            }

            .back-btn {
                background-color: gray; 
                font-size: 12px; 
            }

            .proceed-btn:hover
            {
                background-color: #02FD17;
                color: black;
                transform: scale(1.1); 
            }

            .back-btn:hover {
                background-color: #DA4828; 
                transform: scale(1.05); 
            }

            .con3 {
                position: absolute;
                top: 100px;
                ;
                left: 35%;
                transform: translateX(-50%);
                width: 500px; 

                padding: 40px; 
                margin: 0px;
                text-align: center;
                height: 50px;

                font-family: "Roboto-ExtraBold", Helvetica;
                font-weight: 1000;
            }

            .con1 img {
                width: 1500px; 
                height: auto; 
            }
            .con2 .line {
                width: 470px; 
                height: 1px; 
                background-color: #3A5311; 
                margin: 10px auto; 
            }

            img {
                padding-left: 50px;
                max-width: 100%;
                max-height:100%;
            }

            h1{
                font-size: 45px;
                font-weight: bold;
                color: #3A5311;
            }

            .con3 h2 {
                font-size: 45px; 
                color: #3A5311;
                font-weight: 800;
                margin: 0; 
            }

            .larger-text {
                font-size: 45px; 
                margin-left: 0; 
            }

            .rectangle {
                position: fixed;
                bottom: 100px;
                right: -550px;
                padding-left: 100px;
                width: 2000px;
                height: 750px;
                background-color: #DDED88;
                transform: rotate(-23deg);
                transform-origin: bottom right;
                z-index: -1;
            }
            
            body{
                box-sizing: border-box;
                font-family: "Inter", sans-serif;
                background-color: #ffffff;
                opacity: 1;
                background-image: radial-gradient(#6f986b 0.55px, #ffffff 0.55px);
                background-size: 11px 11px;
            }

            /*FOOTER*/
            .footer{
                padding:30px 0px;
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

    <header>
        <a class="logo" href="/"><img src="VROOM.svg" alt="logo"></a>
        <nav>
            <ul class="nav__links">
                <li><a href="#">Main</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Program</a></li>
                <li><a href="#">Price</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
        <a class="cta" href="#">Contact</a>
        <p class="menu cta">Menu</p>
    </header>

    <body>

        <div class="rectangle"></div>
        <div class="flexbox">

            <div class="con1">
                <!-- Content for container 1 goes here -->
                <img src="HC.png" alt="Honda Civic">

                <!-- Add your content, images, texts, and buttons for Container 1 here -->
            </div>

            <div class="con2">
                <!-- Content for container 2 goes here -->
                <h2>DETAILS</h2>
                <div class="line"></div>
                <!-- Add your content, images, texts, and buttons for Container 2 here -->
                <div class="details-info">
                    <p><strong>TYPE:</strong> Sedan</p>
                    <p><strong>DISPLACEMENT:</strong> 1996cc</p>
                    <p><strong>TRANSMISSION:</strong> Automatic</p>
                    <p><strong>FUEL TYPE:</strong> Gasoline</p>
                    <p><strong>FUEL CAPACITY:</strong> 47 Liters</p>
                    <p><strong>NUMBER OF SEATS:</strong> 5</p>
                    <p><strong>PRICE:</strong> 2,000 PHP / DAY</p>
                </div>
                <div class="buttons">
                    <button class="proceed-btn">Proceed to Checkout</button>
                    <button class="back-btn">Back to Marketplace</button>
                </div>
            </div>

            <div class="con3">
                <!-- Content for container 3 goes here -->
                <h2 class="larger-text">HONDA CIVIC</h2>
                <!-- Add your content, images, texts, and buttons for Container 3 here -->
            </div>

        </div>

        <footer>
            <div class="footer">
                <div class="row">
                    <ul>
                        <li>© 2023 VROOM - All rights reserved</li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms & Conditions</a></li>
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