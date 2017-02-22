<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>sign up</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    </head>
    <body> 
        <div class="header">
            <div class="header-content"> 
                <img class="logo" src="images/logo.svg" />
                <h1><a href="index.jsp">iwith.it</a></h1>
                <ul>
                    <li><a href="register.jsp">Sign Up</a></li>
                    <li><a href="login.jsp">Log In</a></li>
                </ul>
            </div>  
        </div>
        <form action="register.do" method="POST">
        <p class="text">
            <span>
            <label for="email"></label>
            <input type="email" name="email" id='email' placeholder="Email" required>
            </span></p>
        <p class="text">
            <span class="password-strength" data-password-strenfth-"-1">
            <label for="password"></label>
            <input type='password' name='password1' id='password' required minlength="6" maxlength="20" placeholder="password" class="password-strength-input">  
            </span></p>
        <p class="text">
            <label for='confirm-password'></label>
            <input type="password" name="confirm-password" id="confirm-password" required minlength="6" maxlength="20" placeholder="Confirm password"></p>
        <p class="text">
            <label for='name'></label>
            <input type='name' name='name' id='name' placeholder="Name" required></p>
        <p>
            <label for='email'></label>
            <input type='email' name='email' id='email' placeholder="Email" required></p>
            <label for='gender'></label>
            <input type='radio' name='gender' value='M' id='male' required><label for='male'>男</label>
            <input type='radio' name='gender' value='F' id='female' required><label for='female'>女</label>
        <p>
            <label for='birthday'></label>
            <input class="datepicker" type='date' name='birthday' id='birthday' placeholder='1990-01-01' required></p>
            <div class="g-recaptcha" data-sitekey="6LfIHxYUAAAAAKzHMtVdgqetsf7BvGs0bV2JlnYs"></div>
            <p><input type="submit" value="Next"></p>
        <input type="submit" value="submit" name="submit"></p>
        <p>Already have an account? <a href="login.jsp">Log in</a></p>
        </form>
    </body>
</html>
