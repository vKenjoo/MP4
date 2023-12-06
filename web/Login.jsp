<%-- 
    Document   : Login
    Created on : 12 6, 23, 11:25:47 PM
    Author     : blasi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            body {
                box-sizing: border-box;
                font-family: "Inter", sans-serif;
                height: 100vh;
                font-size: 62.5%;
                font-size: 10px;
                overflow-y: hidden;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: #ffffff;
                opacity: 1;
                background-color: #ffffff;
                opacity: 1;
                background-image: radial-gradient(#6f986b 0.55px, #ffffff 0.55px);
                background-size: 11px 11px;
            }
            .screen-1 {
                background: #f1f7fe;
                padding: 2em;
                display: flex;
                flex-direction: column;
                border-radius: 30px;
                box-shadow: 0 0 2em #e6e9f9;
                gap: 3em;
            }
            .screen-1 .username {
                background: white;
                box-shadow: 0 0 2em #e6e9f9;
                padding: .5em;
                display: flex;
                flex-direction: column;
                gap: 0.25em;
                border-radius: 20px;
                color: #4d4d4d;
                font-size: 25px;
                padding-left: 3em;
                padding-right: 3em;
            }
            .screen-1 .username input {
                outline: none;
                border: none;
                font-size: 18px;
            }
            .screen-1 .username input::-moz-placeholder {
                color: black;
                font-size: 0.9em;
            }
            .screen-1 .username input:-ms-input-placeholder {
                color: black;
                font-size: 0.9em;
            }
            .screen-1 .username input::placeholder {
                color: black;
                font-size: 0.9em;
            }

            .screen-1 .password {
                background: white;
                box-shadow: 0 0 2em #e6e9f9;
                padding: .5em;
                padding-left: 3em;
                padding-right: 3em;
                display: flex;
                flex-direction: column;
                gap: 0.25em;
                border-radius: 20px;
                color: #4d4d4d;
                font-size: 25px;
            }
            .screen-1 .password input {
                outline: none;
                border: none;
                font-size: 18px;
            }
            .screen-1 .password input::-moz-placeholder {
                color: black;
                font-size: 0.9em;
                font-size: 18px;
            }
            .screen-1 .password input:-ms-input-placeholder {
                color: black;
                font-size: 0.9em;
                font-size: 18px;
            }
            .screen-1 .password input::placeholder {
                color: black;
                font-size: 0.9em;
                font-size: 18px;
            }

            .screen-1 .password .show-hide {
                margin-right: -5em;
                position: absolute;
            }
            .screen-1 .login {
                padding: 1em;
                background: #3e4684;
                color: white;
                border: none;
                border-radius: 30px;
                font-weight: 600;
            }
            button {
                cursor: pointer;
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
        </style>
    </head>
    <body>
        <div class="rectangle"></div>
        <form action="/LoginServlet" method="post">
        <div class="screen-1">
                <div class="username">
                    <label for="username">Username</label>
                    <div class="sec-2">
                        <input type="text" name="username" placeholder="Username">
                    </div>
                </div>
                <div class="password">
                    <label for="password">Password</label>
                    <div class="sec-2">
                        <input class="pas" type="password" name="password" placeholder="············">
                    </div>
                </div>
                <button class="login" type="submit">Login </button>
            </div>
        </form>
    </body>
</html>
