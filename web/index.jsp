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

        <div class="tital">
            <h1><strong>i</strong> wanna be <strong>with</strong> you.</h1>
            <p>tonight you can choice who you want to be...</p>
        </div>

        <div class="containerShow">
            <div class="containerCitySearch">
                <div class="city">The people are waiting to meet you in <span id="cityname"></span></div>
                <div class="search">
                    <label for="search-gender">I'm looking for</label>
                    <select name="gender">
                        <option>female</option>
                        <option>male</option>
                    </select>
                    <label for="age">between</label>
                    <select class="age" name="age-from">
                        <% for (int i = 18; i < 86; i++) {
                                if (i == 20) {
                                    out.print("<option selected=\"selected\">" + i + "</option>");
                                } else {
                                    out.print("<option>" + i + "</option>");
                                }
                            }%>
                    </select>
                    <label for="to">to</label>
                    <select class="age" name="age-to">
                        <% for (int i = 18; i < 86; i++) {
                                if (i == 30) {
                                    out.print("<option selected=\"selected\">" + i + "</option>");
                                } else {
                                    out.print("<option>" + i + "</option>");
                                }
                            }%>
                    </select>
                    <button class="signin">Go</button>
                </div>
            </div>


            <div class="main-picture">
                <%for (int i = 1; i < 25; i++) {%>
                <a>
                    <div class="person">
                        <div class="main-picture-images" style="background-image: url(<% out.print("images/p" + i + ".png");%>)"></div>
                        <div class="overlay">
                            <div class="text">Hello I'm ko, just come back from isis</div>
                        </div>
                    </div>
                </a>
                <%}%>
            </div>

        </div>


        <div class="signin-page">
            <div class="form">
                <form class="register-form" action="product-list.jsp" method="POST">
                    <input type="text" placeholder="name"/>
                    <input typr="password" placeholder="password"/>
                    <input type="text"  placeholder="email address"/>
                    <button>create</button>
                    <p class="message">Already registered? <a>Sign In</a></p>
                </form>
                <form class="login-form" action="product-list.jsp" method="POST">
                    <input type="text" placeholder="email address"/>
                    <input type="password" placeholder="password"/>
                    <button>login</button>
                    <p class="message">Not registered? <a>Create an account</a></p>
                </form>
                <span class="close">x</span>
            </div>
        </div>

        <%@include  file="WEB-INF/footer.jsp" %>
    </body>
</html>
