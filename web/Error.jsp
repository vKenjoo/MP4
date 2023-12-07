<%-- 
    Document   : Error
    Created on : 12 7, 23, 12:24:03 AM
    Author     : blasi
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <style>
            body {
                padding-top: -50px;
                height: 100vh;
                background-image: radial-gradient(closest-side, #2EA3F2, #2874B8);
                text-align: center;
                color: #fff;
                font-family: "Inter";
                font-size: 16px;
                line-height: 1.5;
                font-family: "Inter", sans-serif;
                background-color: #ffffff;
                opacity: 1;
                background-image: radial-gradient(#6f986b 0.55px, #ffffff 0.55px);
                background-size: 11px 11px;
            }

            .logo {
                margin: -10px auto;
                display: block;
            }

            h1 {
                font-size: 24px;
                line-height: 40px;
                margin: 0 auto 16px;
                padding: 0 20px;
                text-shadow: 0 2px 4px rgba(0,0,0,0.2);
                letter-spacing: 0.5px;
                font-weight: 600;
                max-width: 600px;
                color: #3A5311;
                
            }

            p {
                color: #3A5311;
                font-weight: 300;
                max-width: 600px;
                margin: 0 auto 24px;
                text-shadow: 0 2px 3px rgba(0,0,0,0.1);
                letter-spacing: 0.5px;
                padding: 0 20px;
                a {
                    color: inherit;
                    &:hover {
                        color: #fff;
                    }
                }
            }

            .button {
                color: #2EA3F2;
                background: #fff;
                border-radius: 3px;
                display: inline-block;
                padding: 12px 48px;
                text-decoration: none;
                box-shadow: 0 1px 2px rgba(0,0,0,0.1);
                transition: all 0.2s ease-out;
                &:hover {
                    margin-top: -2px;
                    box-shadow: 0 6px 24px rgba(0,0,0,0.4);
                }
            }

            .browser {
                width: 400px;
                min-width: 200px;
                min-height: 264px;
                background: #FFFFFF;
                box-shadow: 0 40px 80px 0 rgba(0,0,0,0.25);
                border-radius: 3px;
                animation: bobble 1.8s ease-in-out infinite;
                position: relative;
                left: 50%;
                margin-left: -200px;
                .controls {
                    width: 100%;
                    height: 32px;
                    background: #E8ECEF;
                    border-radius: 3px 3px 0 0;
                    box-sizing: border-box;
                    padding: 10px 12px;
                    i {
                        height: 12px;
                        width: 12px;
                        border-radius: 100%;
                        display: block;
                        float: left;
                        background: #D6DCE0;
                        margin-right: 8px;
                    }
                }
            }

            .eye {
                position: absolute;
                left: 34%;
                top: 80px;
                width: 32px;
                height: 32px;
                opacity: 1;
                + .eye {
                    right: 34%;
                    left: auto;
                }
                &:before, &:after {
                    position: absolute;
                    left: 15px;
                    content: ' ';
                    height: 40px;
                    width: 3px;
                    border-radius: 2px;
                    background-color: #FF5E5B;
                }
                &:before {
                    transform: rotate(45deg);
                }
                &:after {
                    transform: rotate(-45deg);
                }
            }

            .mouth {
                position: absolute;
                width: 250px;
                top: 178px;
                left: 50%;
                margin-left: -125px;
                height: 40px;
                .lips {
                    position: absolute;
                    left: 125px;
                    content: ' ';
                    height: 40px;
                    width: 3px;
                    border-radius: 2px;
                    background-color: #FF5E5B;
                    transform: rotate(-54deg);
                    &:nth-child(odd) {
                        transform: rotate(54deg);
                    }

                }
            }

            @keyframes bobble {
                0%, 100% {
                    margin-top: 40px;
                    margin-bottom: 48px;
                    box-shadow: 0 40px 80px rgba(0,0,0,0.24);
                }
                50% {
                    margin-top: 54px;
                    margin-bottom: 34px;
                    box-shadow: 0 24px 64px rgba(0,0,0,0.40);
                }
            }

            @media only screen
            and (min-device-width: 320px)
            and (max-device-width: 480px) {
                .browser {
                    width: 280px;
                    margin-left: -140px;
                    .eye {
                        left: 30%;
                        + .eye {
                            left: auto;
                            right: 30%;
                        }
                    }
                }
            }

            .footer{
                padding:30px 0px;
                font-family: 'Play', sans-serif;
                text-align:center;
            }

            .footer .row{
                width:95%;
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
        </style>
    </head>
    <body>
        <img src="VROOM.svg" class="logo" width="192">
        <div class="browser">
            <div class="controls">
                <i></i>
                <i></i>
                <i></i>
            </div>

            <div class="eye"></div>
            <div class="eye"></div>
            <div class="mouth">
                <div class="lips"></div>
                <div class="lips"></div>
            </div>
        </div>
        <h1>Invalid Login Credentials</h1>
        <p>We're unable to fulfill your request due to the wrong parameters you have inputted.</p>
        <div class='button-box'>
            <a href='Index.jsp'><button class="button-1"><span class="text">Go back Home</span><span>click to continue</span></button></a>
            <a href="Login.jsp"><button class="button-1"><span class="text">Login again</span><span>click to continue</span></button></a>
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
