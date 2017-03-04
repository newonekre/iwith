<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <%@ include file="include.jsp" %>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp" />
        
         <form action="showroom.jsp" method="POST">
            <p>
                    <label for='email'>電子郵件:</label>
                    <input type='email' name='email' id='email' required
                           value="<%= request.getParameter("email") == null ? "" : request.getParameter("email")%>">           
                </p>

                <p> 
                    <label for='pwd1'>會員密碼:</label>
                    <input type='password' name='password1' id='pwd1' required minlength="6" maxlength="20"><br>
                    <label for='pwd2'>確認密碼:</label>
                    <input type='password' name='password2' id='pwd2' required minlength="6" maxlength="20">
                </p>

                <p>
                    <label for='name'>會員姓名:</label>
                    <input type='text' name='name' id='name' required value="${param.name}">
                </p>

                <p>
                    <label for='gender'>會員性別:</label>
                    <input type='radio' name='gender' value='M' id='male' required 
                         <label for='male'>男</label>
                    <input type='radio' name='gender' value='F' id='female' required<label for='female'>女</label>
                </p>

                <p>
                    <label for='birthday'>出生日期:</label>
                    <input type='date' name='birthday' id='birthday'
                           value="<%= request.getParameter("birthday") == null ? "" : request.getParameter("birthday")%>">
                </p>

               <input type="submit" value="確定註冊" name="submit">
        </form>

    </body>
</html>
