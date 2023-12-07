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
      margin-top: 45px;
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
    .headline {
      position: absolute;
      top: 42px;
      left: 15px;
      margin-left: 100px;
      margin-right: 100px;
    }
    .headline p {
      color: black;
      letter-spacing: 0.5px;
      text-align: center;
      font-weight: 800;
      font-size: 55px;
      font-family: "inter", sans-serif; 
    }
    .desc {
      position: absolute;
      top: 300px;
      left: 40px;
      margin-right:100px;
      margin-left: 60px;
    }
    .desc p {
      color: black;
      text-align: center;
      line-height: 2;
      font-size: 16px;
      font-family: "inter", sans-serif; 
    }
    .button-container{
      position: absolute;
      top: 470px;
      left: 420px;
      
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
         .button-container2{
      position: absolute;
      top: 470px;
      right: 400px;
      
    }
       .button2 {
      border: 1px solid black;
      display: inline-block;
      background-color: white;
      color: black;
      padding: 13.5px 30px; /* Increased padding for a larger button */
      text-align: center;
      text-decoration: none;
      font-size: 20px;
      color:black;
      font-family: "inter", sans-serif; 
      cursor: pointer;
      border-radius: 20px;
       }
       .button2:hover {
         background-color: #50C878;
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
    <p>CANCELLATION</p>
    <hr class="custom-line">
  </div>
    <div class="main">
    <div class="box-container">
        <div class="headline"><p>ARE YOU SURE YOU WANT TO CANCEL?</p> </div>
        
        <div class ="desc"><p>We noticed that you're attempting to cancel your rental with us. Before you proceed, we want to ensure that this is the action you wish to take. Canceling your rental 
                means that the reserved item or service will no longer be available for you on the specified dates.</p></div>
        
        <div class="button-container">
            <a href="#" class="button">
            CANCEL RENTAL
             </a>
        </div>
          <div class="button-container2">
            <a href="#" class="button2">
            CONTINUE TRANSACTION
             </a>
        </div>
  </div>
    </div>
    
</body>
</html>
