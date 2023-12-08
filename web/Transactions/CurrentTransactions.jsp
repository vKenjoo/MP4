<!DOCTYPE html>
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
                margin-top: 75px;
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
                overflow: hidden; /* Prevent scrolling */
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
            a:hover {
                background-color: #D22B2B;
            }
        </style>
        
    </head>
    <body>
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
                    <p> PICK-UP/DROP-OFF LOCATION: <b>University of Santo Tomas, Manila</b></p> 
                    <p> PAYMENT METHOD: <b>CASH</b></p> 
                </div>
                <div class ="desc"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                        Nam eget mattis velit, suscipit dapibus lorem. Aliquam erat volutpat. Nam egestas pharetra elit, vel iaculis leo sodales id.</p></div>

                <div class="button-container">
                    <a href="#" class="button">
                        CANCEL RENTAL
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
