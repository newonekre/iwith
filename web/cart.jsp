<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>cart</title>
        <%@ include file="include.jsp" %>

    </head>
    <body>
        <div id="header-container">
            <jsp:include page="WEB-INF/header.jsp" />
        </div>

        <div id="article">
            <form action="check-out.jsp" method="POST">

                <table boder="1">
                    <caption>Shopping List</caption>
                    <thead>
                        <tr>
                            <th> No. </th><th> Photo </th><th> price </th><th>reservation date</th><th> strat time </th><th> order hour </th><th> delete </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>photo-link</td>
                            <td>TWD$8000</td>
                            <td>2017/8th/March</td>
                            <td>3:00pm</td>
                            <td>4</td>
                            <td><input type='checkbox' name='delete'></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3">Total:</td>
                            <td colspan="5">32000</td>
                        </tr>
                    </tfoot>
                </table>

                <button>Proceed to checkout</button>

            </form>

        </div>

    </body>
</html>
