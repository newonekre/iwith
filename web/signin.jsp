<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Sign In</title>
        <%@ include file="include.jsp" %>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp" />
        <div class="login-page">
            <div class="form">
                <form class="register-form" action="showroom.jsp" method="POST">
                    <input type="text" placeholder="name"/>
                    <input typr="password" placeholder="password"/>
                    <input type="text"  placeholder="email address"/>
                    <button>create</button>
                    <p class="message">Already registered? <a href="#">Sign In</a></p>
                </form>
                <form class="login-form" action="showroom.jsp" method="POST">
                    <input type="text" placeholder="username"/>
                    <input type="password" placeholder="password"/>
                    <button>login</button>
                    <p class="message">Not registered? <a href="#">Create an account</a></p>
                </form>
            </div>
        </div>
    </body>
</html>