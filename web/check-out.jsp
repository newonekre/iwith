<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <%@ include file="include.jsp" %>
        
    </head>
    <body>
         <div id="header-container">
            <jsp:include page="WEB-INF/header.jsp" />
        </div>
        
         <div id="article">
            <form action="" method="POST">
                
                <table boder="1">
                    <caption>Shopping List</caption>
                    <thead>
                        <tr>
                            <th>No.</th><th>Photo</th><th>price</th><th>hour</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>photo-link</td>
                            <td>TWD$8000</td>
                            <td>4</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3">Total:</td>
                            <td colspan="5">32000</td>
                        </tr>
                    </tfoot>
                </table>
                
                <button>Place your order</button>
                   
            </form>
            
        </div>
        
    </body>
</html>
