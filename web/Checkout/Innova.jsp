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

            /*BODY*/
            .flexbox {
                padding: 50px;
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

            .RF {
                padding: 50px;
                background-color: #f8fafc;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                width: 60%;
                margin: auto;
                font-family: "Inter", sans-serif;
                color: #333;

            }

            .RF input,
            .RF select {
                width: 100%;
                padding: 12px 20px;
                border: 1px solid #ddd;
                border-radius: 4px;
                margin-bottom: 10px;
                font-size: 16px;
                color: #333;
            }

            h3{
                font-size: 25px;
            }

            .RF label {
                display: block;
                margin-bottom: 5px;
                font-weight: 500;
                font-size: 14px;
            }

            .RF button {
                background-color: #DDED88;
                color: #333;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                font-size: 16px;
                font-weight: 500;
                cursor: pointer;
                margin-top: 20px;
                transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
            }

            .RF button:hover {
                background-color: #02FD17;
                transform: scale(1.05);
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            }

            .RF button {
                display: block;
                margin: 0 auto;
            }

            .reserve {
                padding-top: -50px;
                padding-bottom: 50px;
                text-align: center;
                font-size: 65px;
                font-weight: 900;
                color: #DDED88;
                text-shadow: 5px 5px 5px rgba(0, 0, 0, 0.3);
                text-align: center;
            }

            .pad{
                padding-bottom: 40px;
            }

            .pad2{
                padding-bottom: 7px;
            }

            /* Add the following CSS code to your existing styles */
            .RF input[type="date"]::placeholder,
            .RF input[type="time"]::placeholder {
                color: #B1B6B1;
            }

            .RF input[type="number"]::placeholder {
                color: #B1B6B1;
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
        <div class="rectangle"></div>
        <div class="flexbox">
            <div class="RF">
                <h2 class="reserve">Reservation Form</h2>
                <div id="reservationForm">
                    <h3>Pickup Date & Time of Pickup</h3>
                    <input type="date" id="pickupDate" name="pickupDate" required>
                    <input type="time" id="pickupTime" name="pickupTime" min="08:00" max="20:00" required><br>
                    <div class="pad"></div>

                    <h3>Drop-off Date & Time of Drop-off</h3>
                    <input type="date" id="pickupDate" name="pickupDate" required>
                    <input type="time" id="dropOffTime" name="dropOffTime" min="08:00" max="20:00" required><br>
                    <div class="pad"></div>

                    <h3>Location</h3>
                    <div class="pad2"></div>
                    <label for="pickupDropOffStreet">Pickup/Drop-off Street:</label>
                    <input type="text" id="pickupDropOffStreet" name="pickupDropOffStreet" required><br>

                    <label for="barangay">Barangay:</label>
                    <input type="text" id="barangay" name="barangay" required><br>

                    <label for="city">City:</label>
                    <input type="text" id="city" name="city" required><br>

                    <label for="region">Region:</label>
                    <input type="text" id="region" name="region" required><br>

                    <label for="zip">ZIP Code:</label>
                    <input type="number" id="zip" name="zip" min="1000" max="99999" required><br>

                    <div class="pad"></div>

                    <a href="/MP4/Confirmation/HondaConfirm.jsp"><button type="submit" onclick="return validateDates()"><strong>Submit</strong></button></a>

                    <script>
                        function validateDates() {
                            var pickupMonth = document.getElementById('pickupMonth').value; 
                            var pickupDay = document.getElementById('pickupDay').value;
                            var pickupYear = document.getElementById('pickupYear').value;

                            var dropOffMonth = document.getElementById('dropOffMonth').value;
                            var dropOffDay = document.getElementById('dropOffDay').value;
                            var dropOffYear = document.getElementById('dropOffYear').value;

                            // Validate using JavaScript
                            if (!isValidDate(pickupMonth, pickupDay, pickupYear) || !isValidDate(dropOffMonth, dropOffDay, dropOffYear)) {
                                alert('Invalid date. Please enter a valid date.');
                                return false;
                            }

                            return true;
                        }

                        function isValidDate(month, day, year) {
                            var date = new Date(year, month - 1, day);
                            return (
                                    date.getMonth() + 1 === parseInt(month) &&
                                    date.getDate() === parseInt(day) &&
                                    date.getFullYear() === parseInt(year)
                                    );
                        }
                    </script>
                </div>
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