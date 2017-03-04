<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>iwith.it</title>
        <%@ include file="include.jsp" %>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp" />

        <div class="main">
            <div class="sexycouple">
                <img src="images/sexycouple.png" alt="couple" />
            </div>
            
            <div class="tital">
                <h1>Cuz<br />I'm still<br>waiting for you</h1>
                <p>Don’t leave your shopping to the last minute. The more time you have to shop around, the more you can negotiate. </p>
            </div>
            
            <div class="biglogo">
                <img src="images/biglogo.png"/>
            </div>  
        </div>
        
        <jsp:include page="WEB-INF/section.jsp" />
        
        <%@include  file="WEB-INF/footer.jsp" %>
    </body>
</html>
