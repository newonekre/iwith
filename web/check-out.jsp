<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>check out</title>
        <%@ include file="include.jsp" %>

    </head>
    <body>
        <div id="header-container">
            <jsp:include page="WEB-INF/header.jsp" />
        </div>
        <form action="" method="POST">
            <div class="img-checkout">
                <h2>Check out cart</h2>
                <img src="images/p10.png" alt="John">
                <div class="container">
                    <h2>2017-03-14 13:44:30</h2>
                    <h1>You're dating to: John Coven</h1>
                    <p class="reservationDate">Reservation date:2017/04/01</p>
                    <p class="timeStart">Date time Start: 13:00</p>
                    <p class="timeEnd">Date time End:17:00</p>
                    <hr>
                    <p class="sumCalculate">Time Total: 4 Hours  Total: NT$4000</p><br>
                    <p><button>確定結帳</button></p>
                </div>
            </div>
        </form>
    </body>      
</html>
