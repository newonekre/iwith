<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>iwith.it</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link href="style.css" rel="stylesheet" type="text/css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/userinfo/1.1.0/userinfo.min.js"></script>
        <script>
            $(function () {
                $(".search select").selectmenu();
                $(".search .age").each(function () {
                    $(this).selectmenu()
                            .selectmenu("menuWidget")
                            .addClass("overflow");
                });
            });
        </script>
        <script>
            $(function () {
                $(".widget input[type=submit], .widget a, .widget button").button();
                $("button, input, a").click(function (event) {
                    event.preventDefault();
                });
            });
        </script>
        <script type="text/javascript">
            UserInfo.getInfo(function (data) {
                if (data.city.name === null) {
                    $("#cityname").html(data.country.name);
                } else {
                    $("#cityname").html(data.city.name);// the "data" object contains the info
                    console.log(data);
                }
            }, function (err) {
                // the "err" object contains useful information in case of an error
            });
        </script>
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400" rel="stylesheet">
    </head>
    <body>
        <!-- Header -->
        <jsp:include page="/WEB-INF/header.jsp" />  
        <div class="clearfix"></div>
        <div class="city">The people are waiting to meet you in <span id="cityname"></span></div>
            <jsp:include page="/WEB-INF/section.jsp" />
        
        <div class="explain">
            <div class="stream">
                <img src="images/signup.svg" alt="signup"/>
                <h3>Sign up</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae illum culpa, tenetur.
                </p>
            </div>
            <div class="stream">
                <img src="images/discover.svg" alt="discover"/>
                <h3>Discover</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae illum culpa, tenetur.
                </p>
            </div>
            <div class="stream">
                <img src="images/date.svg" alt="date"/>
                <h3>Date</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae illum culpa, tenetur.
                </p>
            </div>
            <div class="stream">
                <img src="images/payment.svg" alt="payment"/>
                <h3>Payment</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae illum culpa, tenetur.
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
        <%@include  file="/WEB-INF/footer.jsp" %>
    </body>
</html>
