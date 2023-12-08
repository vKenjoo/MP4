<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Rental Marketplace</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
              integrity="sha512-6+0l3Xn5O9dYb7PZ3Rfs/rMG6o3a5DiOW5P00lg+dmgi4aTgks9BYf4qgr4iK5u0zbe2b2bDSbsB9Dbytx7+hQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                font-family: "Inter", sans-serif;
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
                padding: 100px;
                display: flex;
                align-items: center;
                justify-content: center
            }

            .rectangle {
                position: fixed;
                bottom: 100px;
                right: -550px;
                padding-left: 100px;
                width: 3000px;
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

            /*CAR*/
            .car-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-around;
                margin-top: 50px;
            }

            .car-card {
                width: 300px;
                margin: 20px;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                text-align: center;
                background-color: #fff;
                transition: transform 0.3s ease-in-out;
                border-color: #AEF359;
            }

            .car-card:hover {
                transform: scale(1.05);
            }

            .car-image {
                max-width: 100%;
                height: 200px;
                border-radius: 8px;
            }

            .car-description {
                margin-top: 15px;
                font-size: 16px;
                color: #555;
            }

            .view-button {
                margin-top: 15px;
                padding: 10px 20px;
                background-color: #DDED88;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease 0s;
            }

            .view-button:hover {
                background-color: #DDED88;
            }

            .cars-for-rent {
                padding-top: -50px;
                text-align: center;
                font-size: 75px;
                font-weight: 900;
                color: #DDED88;
                text-shadow: 5px 5px 5px rgba(0, 0, 0, 0.3);
            }

        </style>
    </head>
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
    <body>

        <h1 class="cars-for-rent">CARS FOR RENT</h1>
        <div class="car-container">
            <!-- Honda Civic -->
            <div class="car-card">
                <img class="car-image" src="/MP4/Marketplace/pics/HC.png" alt="Honda Civic">
                <h2>Honda Civic</h2>
                <p class="car-description">A stylish and reliable sedan, perfect for your daily commute.</p>
                <a href="/MP4/Marketplace/hcVL.jsp"><button class="view-button" >View</button></a>
            </div>

            <!-- Toyota Innova -->
            <div class="car-card">
                <img class="car-image" src="/MP4/Marketplace/pics/TII.png" alt="Toyota Innova">
                <h2>Toyota Innova</h2>
                <p class="car-description">A spacious and comfortable SUV, great for family trips.</p>
                <a href="/MP4/Marketplace/tiVL.jsp"><button class="view-button">View</button></a>
            </div>

            <!-- Mitsubishi Strada -->
            <div class="car-card">
                <img class="car-image" src="/MP4/Marketplace/pics/MSS.png" alt="Mitsubishi Strada">
                <h2>Mitsubishi Strada</h2>
                <p class="car-description">A rugged and powerful pickup truck, ideal for off-road.</p>
                <a href="/MP4/Marketplace/msVL.jsp"><button class="view-button">View</button></a>
            </div>

            <!-- Suzuki Swift -->
            <div class="car-card">
                <img class="car-image" src="/MP4/Marketplace/pics/SS.png" alt="Suzuki Swift">
                <h2>Suzuki Swift</h2>
                <p class="car-description">An elegant, compact, and fuel-efficient hatchback.</p>
                <a href="/MP4/Marketplace/ssVL.jsp"><button class="view-button">View</button></a>
            </div>
        </div>
        <div class="rectangle"></div>

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

