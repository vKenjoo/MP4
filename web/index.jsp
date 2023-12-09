<%-- 
    Document   : index
    Created on : 12 6, 23, 11:16:42 AM
    Author     : blasi
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
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

            /* Mobile Nav */

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

            .flexbox {
                padding: 100px;
                display: flex;
                align-items: center;
                justify-content: center
            }

            img {
                padding-left: 50px;
                max-width: 100%;
                max-height:100%;
            }

            /* Button */
            .button-box{
                padding: 10px;
                padding-top: -10px;
                display: flex;
                justify-content: center;
                align-items: center;

                .button-1 {
                    position: relative;
                    overflow: hidden;
                    border: 0px solid #18181a;
                    color: #18181a;
                    display: inline-block;
                    font-size: 15px;
                    line-height: 15px;
                    padding: 18px 18px 17px;
                    text-decoration: none;
                    cursor: pointer;
                    background: #C5E908;
                    -webkit-user-select: none;
                    margin-left: 20px;
                    margin-right: 20px;
                    border-radius: 4px;
                }

                .button-1 span:first-child {
                    position: relative;
                    transition: color 600ms cubic-bezier(0.48, 0, 0.12, 1);
                    z-index: 10;
                }

                .button-1 span:last-child {
                    color: white;
                    display: block;
                    position: absolute;
                    bottom: 0;
                    transition: all 500ms cubic-bezier(0.48, 0, 0.12, 1);
                    z-index: 100;
                    opacity: 0;
                    top: 50%;
                    left: 50%;
                    transform: translateY(225%) translateX(-50%);
                    height: 14px;
                    line-height: 13px;
                }

                .button-1:after {
                    content: "";
                    position: absolute;
                    bottom: -50%;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background-color: black;
                    transform-origin: bottom center;
                    transition: transform 600ms cubic-bezier(0.48, 0, 0.12, 1);
                    transform: skewY(9.3deg) scaleY(0);
                    z-index: 50;
                }

                .button-1:hover:after {
                    transform-origin: bottom center;
                    transform: skewY(9.3deg) scaleY(2);
                }

                .button-1:hover span:last-child {
                    transform: translateX(-50%) translateY(-100%);
                    opacity: 1;
                    transition: all 900ms cubic-bezier(0.48, 0, 0.12, 1);
                }
            }

            h1{
                font-size: 45px;
                font-weight: bold;
                color: #3A5311;
            }

            h2{
                font-size: 35px;
                color: #3A5311;
                font-weight: 300;
            }
            h1, h2{
                text-align: center;
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
    
    <body>
        <div class="rectangle"></div>
        <div class="flexbox">
            <div class="text">
                <h1>Welcome to VROOM!</h1>
                <h2>The portal to hassle-free</h2>
                <h2>car rental in your fingertips!</h2>
                <div class='button-box'>
                    <a href='Login.jsp'><button class="button-1"><span class="text">Login</span><span>click to continue</span></button></a>

                    <a href="GuestDetails.jsp"><button class="button-1"><span class="text">Login as Guest</span><span>click to continue</span></button></a>
                </div>
            </div>
            <div class="image">
                <img src="home.png">
            </div>
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

