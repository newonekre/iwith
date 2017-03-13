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

<<<<<<< Updated upstream
        <div class="img-checkout"><img src="images/p10.png"></div>
        <table class="order-review">
            <tbody>
                <tr>
                    <th><img src="images/img10.svg"></th>
                    <th>TWD$8000</th>
                    <th>2017/8th/March</th>
                    <th>3:00pm</th>
                    <th>4</th>
                    <th><input type='checkbox' name='delete'></th>
                </tr>
            </tbody>  
=======
        <div class="img-checkout"><img src="images/p6.png"></div>

        


        <table class="order-review">
            <tbody>
                <tr>
                    <td><img src="images/img10.svg"></td>
                    <td>TWD$8000</td>
                    <td>2017/8th/March</td>
                    <td>3:00pm</td>
                    <td>4</td>
                     <td><input type='checkbox' name='delete'></td>
                </tr>
            </tbody>  
       
>>>>>>> Stashed changes
            <tfoot>
                <tr>
                    <td colspan="3">Total:</td>
                    <td colspan="5">32000</td>
                </tr>
                <td><button type='checkbox' name='delete'/>Proceed to checkout</td>
            </tfoot>
<<<<<<< Updated upstream
        </table>
        
=======
             
        </table>
>>>>>>> Stashed changes
    </body>      
</html>
