<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>profile</title>
        <%@ include file="include.jsp" %>
    </head>

    <body>
        <div id="header-container">
            <jsp:include page="WEB-INF/header.jsp" />
        </div>

        <form class="schedule" action="schedule.jsp" method="POST">
            <figure class="profile">
                <div class="profile-image"><img src="images/p3.png" alt="p3"/></div>
                <figcaption>
                    <h3>John</h3>
                    <p>Which is worse, that everyone has his price, or that the price is always so low. But never try you never know.</p>
                    <p>Height</p>
                    <p>Ethnicity</p>
                    <p>Location</p>
                </figcaption>
            </figure>
            
            <button>Reservation</button>
            
            <div class="profile-image1">
                <img src="images/p3.png" alt="p4" />
                <img src="images/p3.png" alt="p5" />
                <img src="images/p3.png" alt="p6" />
                <img src="images/p3.png" alt="p7" />
                <img src="images/p3.png" alt="p8" />
                <img src="images/p3.png" alt="p9" />
            </div>
        </form>
        
        

        <%@include  file="WEB-INF/footer.jsp" %>
    </body>
</html>
