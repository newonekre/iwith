<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>iwith.it</title>
        <%@ include file="include.jsp" %>
    </head>
    <body> 
        <div id="header-container">
        <jsp:include page="WEB-INF/header.jsp" />
        </div>
        
        <div class="main">
           
            <video autoplay muted playsinline loop class="fillWidth">
                <source src="images/City-Nights/MP4/City-Nights.mp4" type="video/mp4" />
                <source src="images/City-Nights/WEBM/City-Nights.webm" type="video/webm" />
            </video>
            
            <div class="sexycouple">
            </div>
            
        </div>
        
    </div>
    <div class="tital">
        <h1><strong>i</strong> wanna be <strong>with</strong> you.</h1>
        <p>tonight you can choice who you want to be...</p>
    </div>

</div>

<jsp:include page="WEB-INF/section.jsp" />

<%@include  file="WEB-INF/footer.jsp" %>
</body>
</html>
