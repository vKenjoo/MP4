<%-- 
   Document   : PrivacyPolicy
   Created on : 12 8, 23, 5:33:42 PM
   Author     : blasi
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Privacy Policy</title>
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
                font-size: 45px;
                font-weight: bold;
                color: #3A5311;
                text-align: center;
            }
            h2{
                font-size: 40px;
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
            <h1>Privacy Policy</h1>
            <p>This Privacy Policy describes how we collect, use, and disclose your personal information when you use our VROOM.</p>
        </section>
        <section>
            <h2>Information We Collect</h2>
            <p>We may collect the following types of information:</p>
            <ul>
                <li><strong>Personal Information:</strong> Name, email address, phone number, etc.</li>
                <li><strong>Non-Personal Information:</strong> Browser type, device type, IP address, etc.</li>
            </ul>
        </section>
        <section>
            <h2>How We Use Your Information</h2>
            <p>We may use your information for various purposes, including:</p>
            <ul>
                <li>Providing and maintaining our services</li>
                <li>Improving our website</li>
                <li>Responding to your inquiries</li>
            </ul>
        </section>

        <section>
            <h2>Disclosure of Your Information</h2>
            <p>We may share your personal information in the following situations:</p>
            <ul>
                <li>With your consent</li>
                <li>For legal reasons</li>
                <li>With service providers</li>
            </ul>
        </section>

        <section>
            <h2>Cookies and Tracking Technologies</h2>
            <p>We use cookies and similar tracking technologies to analyze trends, administer the website, and track users' movements around the site.</p>
        </section>

        <section>
            <h2>Your Choices</h2>
            <p>You can control cookies through your browser settings. You may also opt-out of certain data collection and use.</p>
        </section>

        <section>
            <h2>Security</h2>
            <p>We take reasonable steps to protect your personal information; however, no method of transmission over the internet or electronic storage is 100% secure.</p>
        </section>

        <section>
            <h2>Changes to This Privacy Policy</h2>
            <p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>
        </section>

        <section>
            <h2>Contact Us</h2>
            <p>If you have any questions or concerns about our Privacy Policy, please contact us at [Your Contact Information].</p>
            <p>Last updated: December 12, 2023</p>
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
