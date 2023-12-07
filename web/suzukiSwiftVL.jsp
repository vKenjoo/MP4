
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="globals.css" />

        <style>


            * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }


            .VIEW-LISTING {
                background-color: #ffffff;
                display: flex;
                flex-direction: row;
                justify-content: center;
                width: 100%;
                height: 100%;
            }

            .VIEW-LISTING .div {
                background-color: #ffffff;
                overflow: hidden;
                width: 100%;
                height: 100%;
                position: relative;
            }

            .VIEW-LISTING .overlap {
                position: absolute;
                width: 2054px;
                height: 1864px;
                top: 220px;
                left: -30px;
            }

            .VIEW-LISTING .rectangle {
                position: absolute;
                width: 1757px;
                height: 1065px;
                top: 431px;
                left: 148px;
                background-color: #aef35947;
                transform: rotate(-30deg);
            }

            .VIEW-LISTING .frame {
                position: absolute;
                width: 1357px;
                height: 804px;
                top: 0;
                left: 28px;
            }

            .VIEW-LISTING .overlap-group {
                position: relative;
                height: 805px;
                top: -1px;
            }

            .VIEW-LISTING .overlap-2 {
                position: absolute;
                width: 1030px;
                height: 729px;
                top: 76px;
                left: 327px;
            }

            .VIEW-LISTING .container {
                display: inline-flex;
                height: 100px;
                align-items: center;
                justify-content: center;
                gap: 60px;
                position: absolute;
                top: 629px;
                left: 0;
            }

            .VIEW-LISTING .title {
                position: relative;
                align-self: stretch;
                width: 349px;
                margin-top: -1px;
                font-family: "Roboto-Regular", Helvetica;
                font-weight: 400;
                color: #000000;
                font-size: 20px;
                text-align: center;
                letter-spacing: 0;
                line-height: 28px;
            }

            .VIEW-LISTING .text-wrapper {
                width: 124px;
                position: relative;
                align-self: stretch;
                margin-top: -1px;
                font-family: "Roboto-Regular", Helvetica;
                font-weight: 400;
                color: #000000;
                font-size: 20px;
                text-align: center;
                letter-spacing: 0;
                line-height: 28px;
            }

            .VIEW-LISTING .title-2 {
                width: 196px;
                position: relative;
                align-self: stretch;
                margin-top: -1px;
                font-family: "Roboto-Regular", Helvetica;
                font-weight: 400;
                color: #000000;
                font-size: 20px;
                text-align: center;
                letter-spacing: 0;
                line-height: 28px;
            }

            .VIEW-LISTING .rectangle-2 {
                position: absolute;
                width: 532px;
                height: 630px;
                top: 0;
                left: 498px;
                background-color: #e1e1e178;
                border-radius: 8px;
            }

            .VIEW-LISTING .rectangle-3 {
                position: absolute;
                width: 447px;
                height: 116px;
                top: 434px;
                left: 547px;
                background-color: #c0d06e;
                border-radius: 15px;
                box-shadow: 0px 4px 4px #00000040;
            }

            .VIEW-LISTING .overlap-group-wrapper {
                position: absolute;
                width: 284px;
                height: 45px;
                top: 567px;
                left: 630px;
            }

            .VIEW-LISTING .overlap-group-2 {
                position: relative;
                height: 45px;
                top: -1px;
            }

            .VIEW-LISTING .text-wrapper-2 {
                position: absolute;
                width: 284px;
                top: 0;
                left: 0;
                font-family: "Roboto-ExtraLight", Helvetica;
                font-weight: 200;
                color: #000000;
                font-size: 16px;
                text-align: center;
                letter-spacing: 0;
                line-height: normal;
            }

            .VIEW-LISTING .line {
                position: absolute;
                width: 121px;
                height: 1px;
                top: 28px;
                left: 81px;
                object-fit: cover;
            }

            .VIEW-LISTING .text-wrapper-3 {
                position: absolute;
                width: 259px;
                top: 14px;
                left: 490px;
                font-family: "Roboto-ExtraBold", Helvetica;
                font-weight: 800;
                color: #000000;
                font-size: 32px;
                text-align: center;
                letter-spacing: 0;
                line-height: normal;
                white-space: normal; /* Allow text to wrap onto the next line */
            }


            .VIEW-LISTING .img {
                position: absolute;
                width: 171px;
                height: 1px;
                top: 66px;
                left: 557px;
                object-fit: cover;
            }

            .VIEW-LISTING .group-wrapper {
                position: absolute;
                width: 446px;
                height: 326px;
                top: 82px;
                left: 557px;
            }

            .VIEW-LISTING .group {
                width: 448px;
                height: 326px;
            }

            .VIEW-LISTING .flexcontainer {
                display: flex;
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
                position: relative;
                width: 446px;
                height: 326px;
            }

            .VIEW-LISTING .text {
                position: relative;
                align-self: stretch;
                font-family: "Roboto-Light", Helvetica;
                font-weight: 400;
                color: #000000;
                font-size: 28px;
                letter-spacing: 0;
                line-height: normal;
            }

            .VIEW-LISTING .span {
                font-weight: 300;
            }

            .VIEW-LISTING .text-wrapper-4 {
                font-family: "Roboto-SemiBold", Helvetica;
                font-weight: 600;
            }

            .VIEW-LISTING .text-wrapper-5 {
                position: absolute;
                width: 462px;
                top: 479px;
                left: 541px;
                font-family: "Roboto-SemiBold", Helvetica;
                font-weight: 600;
                color: #000000;
                font-size: 28px;
                text-align: center;
                letter-spacing: 0;
                line-height: normal;
            }

            .VIEW-LISTING .png-transparent {
                position: absolute;
                width: 769px;
                height: 495px;
                top: 156px;
                left: 46px;
                object-fit: contain;
            }

            .VIEW-LISTING .overlap-3 {
                position: absolute;
                width: 1357px;
                height: 108px;
                top: 0;
                left: 0;
            }

            .details-title {
                position: absolute;
                width: 259px;
                top: 14px;
                left: 490px;
                font-family: "Roboto-ExtraBold", Helvetica;
                font-weight: 800;
                color: #000000;
                font-size: 32px;
                text-align: center;
                letter-spacing: 0;
                line-height: normal;
                white-space: normal; /* Allow text to wrap onto the next line */
            }

            .details-line {
                position: absolute;
                width: 150px; /* Set the width of the line according to your design */
                height: 2px;
                top: 55px; /* Adjust the top position as needed */
                left: 545px; /* Adjust the left position as needed */
                background-color: #000000; /* Set the line color to black */
            }

            .VIEW-LISTING .text-wrapper-6 {
                position: absolute;
                width: 1000px;
                top: 0px;

                right: 600px;
                font-family: "Roboto-ExtraBold", Helvetica;
                font-weight: 800;
                color: #000000;
                font-size: 54px;
                text-align: center;
                letter-spacing: 0;
                line-height: normal;
                white-space: normal; /* Allow text to wrap onto the next line */
            }

            .VIEW-LISTING .line-2 {
                position: absolute;
                width: 865px;
                height: 3px;
                top: 35px;
                right: 0px;
                background-color: #000000;
            }

            .VIEW-LISTING .main-menu-wrapper {
                position: absolute;
                width: 1288px;
                height: 142px;
                top: 67px;
                left: 92px;
            }

            .VIEW-LISTING .main-menu {
                position: relative;
                height: 36px;
            }

            .VIEW-LISTING .navbar {
                display: inline-flex;
                align-items: flex-start;
                gap: 40px;
                position: absolute;
                top: 6px;
                left: 435px;
            }

            .VIEW-LISTING .text-wrapper-7 {
                position: relative;
                width: fit-content;
                margin-top: -1px;
                font-family: "Inter-Regular", Helvetica;
                font-weight: 400;
                color: #000000;
                font-size: 18px;
                letter-spacing: 0;
                line-height: normal;
            }

            .VIEW-LISTING .text-wrapper-8 {
                position: absolute;
                top: 5px;
                left: 0;
                font-family: "Inter-Bold", Helvetica;
                font-weight: 700;
                color: #3a5311;
                font-size: 20px;
                letter-spacing: 0;
                line-height: normal;
                white-space: nowrap;
            }

            :root {
                --black: rgba(0, 0, 0, 1);
                --white: rgba(255, 255, 255, 1);
            }

            .div, .overlap, .rectangle, .frame, .overlap-2, .container, .rectangle-2, .rectangle-3, .overlap-group-wrapper, .group-wrapper, .flexcontainer {
                width: 100%; /* Use 100% width for responsiveness */
            }

            body, html {
                height: 100%; /* Remove fixed height */
            }

            .button-wrapper {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

            /* Add this CSS code for the button styles */

            .button {
                width: 447px;
                height: 116px;
                background-color: #c0d06e;
                border-radius: 15px;
                box-shadow: 0px 4px 4px #00000040;
                cursor: pointer;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: background-color 0.3s ease, transform 0.3s ease; /* Add a smooth transition effect */
            }

            .button:hover {
                background-color: #75FF33; /* Change the background color on hover */
                transform: scale(1.05); /* Add a slight scale effect on hover */
            }

            .button-text {
                font-family: "Roboto-SemiBold", Helvetica;
                font-weight: 570;
                color: #000000;
                font-size: 30px;
                text-align: center;
                letter-spacing: 0;
                line-height: normal;
                margin: 0;
            }


            .button-wrapper {
                position: absolute;
                top: 80%;
                left: 75%;
                transform: translate(-50%, -50%);
            }

            /* Add this CSS code for the "Back to Marketplace" button styles */

            .smaller-button {
                width: 200px;
                height: 50px;
                background-color: gray;
                border-radius: 15px;
                box-shadow: 0px 4px 4px #00000040;
                cursor: pointer;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-top: 20px;
                transition: background-color 0.3s ease, transform 0.3s ease; /* Add a smooth transition effect */
            }

            .smaller-button:hover {
                background-color: #DA4828; /* Change the background color on hover */
                transform: scale(1.05); /* Add a slight scale effect on hover */
            }

            .smaller-button-text {
                font-family: "Roboto-SemiBold", Helvetica;
                font-weight: 300;
                color: #000000;
                font-size: 14px;
                text-align: center;
                letter-spacing: 0;
                line-height: normal;
                margin: 0;
            }


            .moveup {
                position: relative; /* Set the position to relative */
                top: -100px; /* Adjust the value as needed to move the element up */
                transform: scale(0.8); /* Scale down by 20% */
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

        <div class="VIEW-LISTING">

            <div class="div">
                <div class="rectangle"></div>
                <div class="moveup">
                    <div class="overlap">

                        <div class="frame">
                            <div class="overlap-group">
                                <div class="overlap-2">

                                    <div class="rectangle-2"></div>
                                    <div class="overlap-group-wrapper">
                                        <div class="overlap-group-2">

                                            <img class="line" src="" /> <!-- LINE BELOW MARKETPLACE-->
                                        </div>
                                    </div>
                                    <div class="text-wrapper-3 details-title">DETAILS</div>
                                    <div class="rectangle-3 button">
                                        <p class="button-text">PROCEED TO CHECKOUT</p>
                                    </div>

                                    <div class="button-wrapper">
                                        <div class="smaller-button">
                                            <p class="smaller-button-text">BACK TO MARKETPLACE</p>
                                        </div>
                                    </div>


                                    <div class="details-line"></div>
                                    <img class="img" src="img/line-4.svg" />
                                    <div class="group-wrapper">
                                        <div class="group">
                                            <div class="flexcontainer">
                                                <p class="text">
                                                    <span class="span">TYPE:</span> <span class="text-wrapper-4"> Hatchback<br /></span>
                                                </p>
                                                <p class="text">
                                                    <span class="span">DISPLACEMENT:</span>
                                                    <span class="text-wrapper-4"> 1197cc<br /></span>
                                                </p>
                                                <p class="text">
                                                    <span class="span">TRANSMISSION:</span> <span class="text-wrapper-4"> Automatic<br /></span>
                                                </p>
                                                <p class="text">
                                                    <span class="span">FUEL TYPE:</span> <span class="text-wrapper-4"> Gasoline<br /></span>
                                                </p>
                                                <p class="text">
                                                    <span class="span">FUEL CAPACITY:</span> <span class="text-wrapper-4"> 37 Liters<br /></span>
                                                </p>
                                                <p class="text">
                                                    <span class="span">NUMBER OF SEATS: </span> <span class="text-wrapper-4">5<br /></span>
                                                </p>
                                                <p class="text">
                                                    <span class="span">PRICE:</span> <span class="text-wrapper-4"> 1800 PHP / DAY<br /></span>
                                                </p>

                                                <p class="text"><span class="text-wrapper-4"></span></p>
                                            </div>
                                        </div>


                                    </div>

                                </div>
                                <img
                                    class="png-transparent"
                                    src="SS.png"
                                    />
                                <div class="overlap-3">
                                    <div class="text-wrapper-6">SUZUKI SWIFT</div>
                                    <img class="line-2" src="img/line-1.svg" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>