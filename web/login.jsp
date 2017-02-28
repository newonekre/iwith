<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Lon in</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <div class="clearfix"></div>
        <p>Log in</p>
        <form action="login.do" method="POST">
            <p>
                <label for="uid">會員帳號</label>
                <input type="text" name="userid" id="uid" required>
            </p>
            <p>
                <label for="pwd">會員密碼</label>
                <input type="text" name="password" id="pwd" required>
            </p>
            <input type="submit" value="Log in" name="submit">
            <hr>
            <a href="">Forgot password?</a>
            <p>Don't have an account? <a href="register.jsp">Sign up</a></p>
        </form>
    </body>
</html>