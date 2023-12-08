<%-- 
    Document   : TandC
    Created on : 12 8, 23, 5:34:07 PM
    Author     : blasi
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Terms and Conditions</title>
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

            body {
                box-sizing: border-box;
                font-family: "Inter", sans-serif;
                background-color: #ffffff;
                opacity: 1;
                background-image: radial-gradient(#6f986b 0.55px, #ffffff 0.55px);
                background-size: 11px 11px;
            }

            h1{
                font-size: 35px;
                font-weight: bold;
                color: #3A5311;
                text-align: center;
            }
            h2{
                font-size: 28px;
                color: #3A5311;
                font-weight: 700;
            }

            p, ul{
                font-size: 15px;
                color: #3A5311;
                font-weight: 200;
                text-align: center;
                padding-left: 10px;
                padding-right: 10px;
            }

            section {
                background-color: #fff;
                color: #333;
                padding: 20px;
                border-radius: 15px;
                text-align: center;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                max-width: 600px;
                margin: 0 auto;
                margin-bottom: 20px;
            }

            section p,
            section ul {
                margin-top: 0;
                margin-bottom: 15px;
                text-align: left; /* Align specific text to the left if needed */
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
        <section>
            <body>
                <h1>Terms and Conditions</h1>

                <p>Welcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use:</p>

                <h2>1. Acceptance of Terms</h2>
                <p>By accessing this website, you agree to be bound by these terms and conditions, all applicable laws, and regulations, and agree that you are responsible for compliance with any applicable local laws.</p>

                <h2>2. Use License</h2>
                <p>Permission is granted to temporarily download one copy of the materials (information or software) on this website for personal, non-commercial transitory viewing only.</p>

                <h2>3. Disclaimer</h2>
                <p>The materials on this website are provided "as is." The website makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties, including without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights.</p>

                <h2>4. Limitations</h2>
                <p>In no event shall the website or its suppliers be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use the materials on the website.</p>

                <h2>5. Revisions</h2>
                <p>The website may revise these terms of use for its website at any time without notice. By using this website, you are agreeing to be bound by the then-current version of these terms of use.</p>

                <h2>6. Governing Law</h2>
                <p>Any claim relating to the website shall be governed by the laws of the Philippines, without regard to its conflict of law provisions.</p>

                <p>For questions or concerns regarding these terms, please contact us at qa.vroom@gmail.com.</p>
        </section>
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
