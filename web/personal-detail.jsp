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
        <table border='1'>
            <caption>Profile</caption>
            <thead>
                <tr>
                    <th>Height</th><th>Weight</th><th>Location</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>174cm</td><td>65kg</td><td>Taipei</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td>I'm a paragraph. Click here to add your own text and edit me. It’s easy. click “Edit Text” or double click me to add your own content and make changes to the font.​
            This is a great space to write long text about your company and your services.</td>
                </tr>
            </tfoot>
        </table>
        
        
        <form class="cart" action="cart.jsp" method="POST">
            <button>Reservation</button>
        </form>

        <%@include  file="WEB-INF/footer.jsp" %>

    </body>
</html>
