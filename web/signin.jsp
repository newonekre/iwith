<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Sign In</title>
        <%@ include file="include.jsp" %>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp" />
        <form action="showroom.jsp" method="POST">
            <p>
                <label for="uid">會員帳號</label>
                <input type="text" name="userid" id="uid" required>
            </p>
            <p>
                <label for="pwd">會員密碼</label>
                <input type="password" name="password" id="pwd" required minlength="6" maxlength="20">
            </p>
            <input type="submit" value="Sign in" name="submit">
            <hr>
            <a href="forgot-password.jsp">Forgot password?</a>
            <p>Don't have an account?</p><a href="register.jsp">Sign up</a>
        </form>
    </body>
</html>