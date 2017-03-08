<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Personal Detail</title>
        <%@ include file="include.jsp" %>
    </head>
    <body>
        <div id="header-container">
            <jsp:include page="WEB-INF/header.jsp" />
        </div>

        <img src="/iwith/images/p21.png"/>
        <h2>John Ko.Holyshit</h2>
        <h3>computer engineer</h3>
        <h3>About me</h3>
        <p>I'm a paragraph. Click here to add your own text and edit me. It’s easy. click “Edit Text” or double click me to add your own content and make changes to the font.​
            This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide.</p>

        <form class="cart" action="cart.jsp" method="POST">
            <button>Reservation</button>
        </form>

        <%@include  file="WEB-INF/footer.jsp" %>

    </body>
</html>
