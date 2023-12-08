<%-- 
    Document   : AbousUs
    Created on : 12 7, 23, 11:34:58 PM
    Author     : blasi
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <style>
            * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }
            
            body {
                align-items: center;
                box-sizing: border-box;
                font-family: "Inter", sans-serif;
                background-color: #ffffff;
                opacity: 1;
                background-image: radial-gradient(#6f986b 0.55px, #ffffff 0.55px);
                background-size: 11px 11px;
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

            .person {
                align-items: center;
                display: flex;
                flex-direction: column;
                width: 280px;
            }
            .container {
                border-radius: 50%;
                height: 312px;
                -webkit-tap-highlight-color: transparent;
                transform: scale(0.48);
                transition: transform 250ms cubic-bezier(0.4, 0, 0.2, 1);
                width: 400px;
            }
            .container:after {
                content: "";
                height: 10px;
                position: absolute;
                top: 390px;
                width: 100%;
            }
            .container:hover {
                transform: scale(0.54);
            }
            .container-inner {
                clip-path: path(
                    "M 390,400 C 390,504.9341 304.9341,590 200,590 95.065898,590 10,504.9341 10,400 V 10 H 200 390 Z"
                    );
                position: relative;
                transform-origin: 50%;
                top: -200px;
            }
            .circle {
                background-color: #fee7d3;
                border-radius: 50%;
                cursor: pointer;
                height: 380px;
                left: 10px;
                pointer-events: none;
                position: absolute;
                top: 210px;
                width: 380px;
            }
            .img {
                pointer-events: none;
                position: relative;
                transform: translateY(20px) scale(1.15);
                transform-origin: 50% bottom;
                transition: transform 300ms cubic-bezier(0.4, 0, 0.2, 1);
            }
            .container:hover .img {
                transform: translateY(0) scale(1.2);
            }
            .img1 {
                left: -40px;
                top: 110px;
                width: 490px;
            }
            .img2 {
                left: -16px;
                top: 130px;
                width: 466px;
            }
            .img3 {
                left: -30px;
                top: 85px;
                width: 490px;
            }
            .divider {
                background-color: #000;
                height: 1px;
                width: 160px;
            }
            .name {
                color: #404245;
                font-size: 36px;
                font-weight: 600;
                margin-top: 16px;
                text-align: center;
            }
            .title {
                color: #6e6e6e;
                font-family: arial;
                font-size: 14px;
                font-style: italic;
                margin-top: 4px;
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
                <li><a href="/MP4/AboutUs.jsp">About</a></li>
                <li><a href="#">Program</a></li>
                <li><a href="#">Price</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
        <a class="cta" href="/MP4/MarketPlace.jsp">Marketplace</a>
        <p class="menu cta">Menu</p>
    </header>
    <body>
        <div class="rectangle"></div>
        <div class="flexbox">
            <div class="AboutUs">
                <h1></h1>
            </div>
            <div class="person">
                <div class="container">
                    <div class="container-inner">
                        <img class="circle" src="">
                        <img class="img img1" src="Camit.png"/>
                    </div>
                </div>
                <div class="divider"></div>
                <div class="name">Joshua Camit</div>
                <div class="title">[title]</div>
            </div>
            <div class="person">
                <div class="container">
                    <div class="container-inner">
                        <img class="circle" src="">
                        <img class="img img2" src="Custodio.png"/>
                    </div>
                </div>
                <div class="divider"></div>
                <div class="name">Marc Custodio</div>
                <div class="title">[title]</div>
            </div>
            <div class="person">
                <div class="container">
                    <div class="container-inner">
                        <img class="circle" src="">
                        <img class="img img3" src="Viray.png"/>
                    </div>
                </div>
                <div class="divider"></div>
                <div class="name">Josh Viray</div>
                <div class="title">[title]</div>
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
