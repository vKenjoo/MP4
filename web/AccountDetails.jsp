<%-- 
    Document   : AccDetails
    Created on : 12 5, 23, 3:12:58 PM
    Author     : blasi
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Details</title>
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
                font-size: 35px;
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
                padding: 10px;
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

            .center {
                position: absolute;
                top: 50%;
                left: 50%;
                -webkit-transform: translate(-50%, -50%);
            }

            .card {
                width: 575px;
                height: 350px;
                background-color: #fff;
                background: linear-gradient(#f8f8f8, #fff);
                box-shadow: 0 8px 16px -8px rgba(0,0,0,0.4);
                border-radius: 6px;
                overflow: hidden;
                position: relative;
                margin: 1.5rem;
            }

            .card h1, .card a {
                text-align: center;
            }

            .card .additional {
                position: absolute;
                width: 150px;
                height: 100%;
                background: linear-gradient(#dE685E, #EE786E);
                transition: width 0.4s;
                overflow: hidden;
                z-index: 2;

            }

            .card.green .additional {
                background: linear-gradient(#92bCa6, #A2CCB6);
            }


            .card:hover .additional {
                width: 100%;
                border-radius: 0 5px 5px 0;
            }

            .card .additional .user-card {
                width: 150px;
                height: 100%;
                position: relative;
                float: left;
            }

            .card .additional .user-card::after {
                content: "";
                display: block;
                position: absolute;
                top: 10%;
                right: -2px;
                height: 80%;
            }

            .card .additional .user-card .level,
            .card .additional .user-card .points {
                top: 20%;
                color: #fff;
                text-transform: uppercase;
                font-size: 0.75em;
                font-weight: bold;
                background: rgba(0,0,0,0.15);
                padding: 0.125rem 0.75rem;
                border-radius: 100px;
                white-space: nowrap;
            }

            .card .additional .user-card .points {
                top: 80%;
            }

            .card .additional .user-card svg {
                top: 50%;
            }

            .card .additional .more-info {
                align-content: center;
                padding-top: 150px;
                width: 300px;
                float: left;
                position: absolute;
                left: 240px;
                height: 100%;

            }

            .card .additional .more-info h1 {
                color: #fff;

            }

            .card.green .additional .more-info h1 {
                color: #224C36;
            }

            .card .additional .coords {
                margin: 0 1rem;
                color: #fff;
                font-size: 1rem;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 10px;
                padding-left: -200px;
            }

            .card.green .additional .more-info h3 {
                color: #224C36;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 25px;
            }

            .card.green .additional .coords {
                color: #325C46;
                padding-left: 30px;
            }

            .card .additional .coords h3,
            .card .additional .coords h4{
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .card .additional .stats {
                font-size: 2rem;
                display: flex;
                position: absolute;
                bottom: 1rem;
                left: 1rem;
                right: 1rem;
                top: auto;
                color: #fff;
            }

            .card.green .additional .stats {
                color: #325C46;
            }

            .card .additional .stats > div {
                flex: 1;
                text-align: center;
            }

            .card .additional .stats i {
                display: block;
            }

            .card .additional .stats div.title {
                font-size: 0.75rem;
                font-weight: bold;
                text-transform: uppercase;
            }

            .card .additional .stats div.value {
                font-size: 1.5rem;
                font-weight: bold;
                line-height: 1.5rem;
            }

            .card .additional .stats div.value.infinity {
                font-size: 2.5rem;
            }

            .card .general {
                width: 300px;
                height: 100%;
                position: absolute;
                top: 75px;
                right: 75px;
                z-index: 1;
                box-sizing: border-box;

            }

            .card .general .more {
                position: absolute;
                bottom: 1rem;
                right: 1rem;
                font-size: 0.9em;
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
        <div class='bg'></div>
        <div class="center">
            <div class="card green">
                <div class="additional">
                    <div class="user-card">
                        <div class="level center">
                            Level 13
                        </div>
                        <div class="points center">
                            5,312 Points
                        </div>
                        <svg width="110" height="110" viewBox="0 0 250 250" xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="title desc" class="center">
                        <title id="title">Teacher</title>
                        <desc id="desc">Cartoon of a Caucasian woman smiling, and wearing black glasses and a purple shirt with white collar drawn by Alvaro Montoro.</desc>
                        <style>
                            .skin {
                                fill: #eab38f;
                            }
                            .eyes {
                                fill: #1f1f1f;
                            }
                            .hair {
                                fill: #2f1b0d;
                            }
                            .line {
                                fill: none;
                                stroke: #2f1b0d;
                                stroke-width:2px;
                            }
                        </style>
                        <defs>
                        <clipPath id="scene">
                            <circle cx="125" cy="125" r="115"/>
                        </clipPath>
                        <clipPath id="lips">
                            <path d="M 106,132 C 113,127 125,128 125,132 125,128 137,127 144,132 141,142  134,146  125,146  116,146 109,142 106,132 Z" />
                        </clipPath>
                        </defs>
                        <circle cx="125" cy="125" r="120" fill="rgba(0,0,0,0.15)" />
                        <g stroke="none" stroke-width="0" clip-path="url(#scene)">
                        <rect x="0" y="0" width="250" height="250" fill="#b0d2e5" />
                        <g id="head">
                        <path fill="none" stroke="#111111" stroke-width="2" d="M 68,103 83,103.5" />
                        <path class="hair" d="M 67,90 67,169 78,164 89,169 100,164 112,169 125,164 138,169 150,164 161,169 172,164 183,169 183,90 Z" />
                        <circle cx="125" cy="100" r="55" class="skin" />
                        <ellipse cx="102" cy="107" rx="5" ry="5" class="eyes" id="eye-left" />
                        <ellipse cx="148" cy="107" rx="5" ry="5" class="eyes" id="eye-right" />
                        <rect x="119" y="140" width="12" height="40" class="skin" />
                        <path class="line eyebrow" d="M 90,98 C 93,90 103,89 110,94" id="eyebrow-left" />
                        <path class="line eyebrow" d="M 160,98 C 157,90 147,89 140,94" id="eyebrow-right"/>
                        <path stroke="#111111" stroke-width="4" d="M 68,103 83,102.5" />
                        <path stroke="#111111" stroke-width="4" d="M 182,103 167,102.5" />
                        <path stroke="#050505" stroke-width="3" fill="none" d="M 119,102 C 123,99 127,99 131,102" />
                        <path fill="#050505" d="M 92,97 C 85,97 79,98 80,101 81,104 84,104 85,102" />
                        <path fill="#050505" d="M 158,97 C 165,97 171,98 170,101 169,104 166,104 165,102" />
                        <path stroke="#050505" stroke-width="3" fill="rgba(240,240,255,0.4)" d="M 119,102 C 118,111 115,119 98,117 85,115 84,108 84,104 84,97 94,96 105,97 112,98 117,98 119,102 Z" />
                        <path stroke="#050505" stroke-width="3" fill="rgba(240,240,255,0.4)" d="M 131,102 C 132,111 135,119 152,117 165,115 166,108 166,104 166,97 156,96 145,97 138,98 133,98 131,102 Z" />
                        <path class="hair" d="M 60,109 C 59,39 118,40 129,40 139,40 187,43 189,99 135,98 115,67 115,67 115,67 108,90 80,109 86,101 91,92 92,87 85,99 65,108 60,109" />
                        <path id="mouth" fill="#d73e3e" d="M 106,132 C 113,127 125,128 125,132 125,128 137,127 144,132 141,142  134,146  125,146  116,146 109,142 106,132 Z" /> 
                        <path id="smile" fill="white" d="M125,141 C 140,141 143,132 143,132 143,132 125,133 125,133 125,133 106.5,132 106.5,132 106.5,132 110,141 125,141 Z" clip-path="url(#lips)" />
                        </g>
                        <g id="shirt">
                        <path fill="#8665c2" d="M 132,170 C 146,170 154,200 154,200 154,200 158,250 158,250 158,250 92,250 92,250 92,250 96,200 96,200 96,200 104,170 118,170 118,170 125,172 125,172 125,172 132,170 132,170 Z"/>
                        <path id="arm-left" class="arm" stroke="#8665c2" fill="none" stroke-width="14" d="M 118,178 C 94,179 66,220 65,254" />
                        <path id="arm-right" class="arm" stroke="#8665c2" fill="none" stroke-width="14" d="M 132,178 C 156,179 184,220 185,254" />
                        <path fill="white" d="M 117,166 C 117,166 125,172 125,172 125,182 115,182 109,170 Z" />
                        <path fill="white" d="M 133,166 C 133,166 125,172 125,172 125,182 135,182 141,170 Z" />
                        <circle cx="125" cy="188" r="4" fill="#5a487b" />
                        <circle cx="125" cy="202" r="4" fill="#5a487b" />
                        <circle cx="125" cy="216" r="4" fill="#5a487b" />
                        <circle cx="125" cy="230" r="4" fill="#5a487b" />
                        <circle cx="125" cy="244" r="4" fill="#5a487b" />
                        <path stroke="#daa37f" stroke-width="1" class="skin hand" id="hand-left" d="M 51,270 C 46,263 60,243 63,246 65,247 66,248 61,255 72,243 76,238 79,240 82,243 72,254 69,257 72,254 82,241 86,244 89,247 75,261 73,263 77,258 84,251 86,253 89,256 70,287 59,278" /> 
                        <path stroke="#daa37f" stroke-width="1" class="skin hand" id="hand-right" d="M 199,270 C 204,263 190,243 187,246 185,247 184,248 189,255 178,243 174,238 171,240 168,243 178,254 181,257 178,254 168,241 164,244 161,247 175,261 177,263 173,258 166,251 164,253 161,256 180,287 191,278"/> 
                        </g>
                        </g>
                        </svg>
                    </div>
                    <div class="more-info">
                        <h3><strong><% out.print(getServletContext().getInitParameter("User_Fullname")); %></strong></h3>
                        <div class="coords">
                            <h4><% out.print(getServletContext().getInitParameter("join_Date")); %></h4>
                            <h4><% out.print(getServletContext().getInitParameter("city_and_capital")); %></h4>
                        </div>
                    </div>
                </div>
                <div class="general">
                    <h1>Account Details</h1>
                    <p><strong>Full Name: </strong> <% out.print(getServletContext().getInitParameter("User_Fullname")); %></p>
                    <p><strong>Email: </strong> <% out.print(getServletContext().getInitParameter("Email")); %></p>
                    <p><strong>Birth Date: </strong> <% out.print(getServletContext().getInitParameter("Birth_Date")); %></p>
                    <p><strong>Account Number: </strong> <% out.print(getServletContext().getInitParameter("AccountNum"));%></p>
                    <span class="more">Mouse over the card for more info</span>
                </div>
            </div>
        </div>
    </body> 
</html>
