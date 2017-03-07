<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="include.jsp" %>
        <title>Show room</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp" />

        <div class="city">The people are waiting to meet you in <span id="cityname"></span></div>
        <div class="search">
            <label for="search-gender">I'm looking for</label>
            <select name="gender">
                <option>female</option>
                <option>male</option>
            </select>
            <label for="age">between</label>
            <select class="age" name="age-from">
                <% for (int i = 18; i < 101; i++) {
                        if (i == 20) {
                            out.print("<option selected=\"selected\">" + i + "</option>");
                        } else {
                            out.print("<option>" + i + "</option>");
                        }
                    }%>
            </select>
            <label for="to">to</label>
            <select class="age" name="age-to">
                <% for (int i = 18; i < 101; i++) {
                        if (i == 30) {
                            out.print("<option selected=\"selected\">" + i + "</option>");
                        } else {
                            out.print("<option>" + i + "</option>");
                        }
                    }%>
            </select>
            <button class="go" href="showroom.jsp">Go</button>
        </div>
        
        <div class="main-picture">
            <%for (int i = 1; i < 25; i++) {%>
            <a href="personal-detail">
                <div class="person" href="personal-detail.jsp">
                    <div class="main-picture-images" style="background-image: url(<% out.print("images/p" + i + ".png");%>)"></div>
                    <div class="overlay">
                        <div class="text">Hello I'm ko, just come back from isis</div>
                    </div>
                </div>
            </a>
            <%}%>
        </div>

        <%@include  file="WEB-INF/footer.jsp" %>
    </body>
</html>
