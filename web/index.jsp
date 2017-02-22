<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>iwith.it</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    </head>
    <body>
        <!-- Header -->
        <div class="header">
            <div class="header-content"> 
                <a href="index.jsp"><img class="logo" src="images/logo.svg" /></a>
                <h1><a href="index.jsp">iwith.it</a></h1>
                <ul>
                    <li><a href="register.jsp">Sign Up</a></li>
                    <li><a href="login.jsp">Log In</a></li>
                </ul>
            </div>
        </div>
        <div class="main-picture">
            <%for(int i=1; i<27; i++){%>
                    <div class="main-picture-images" style="background-image: url(<% out.print("/iwith/images/p"+i+".png");%>)"></div>
                <%}%>
            <div class="main-content-container">
                <div class="main-content">
                    <h1>The people are waiting to meet you in</h1>
                    <label for="search-gender">I'm looking for</label>
                    <select>
                        <option>female</option>
                        <option>male</option>
                    </select>
                    <label for="age">between</label>
                    <select>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                    </select>
                    <label for="to">to</label>
                    <select>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                    </select>
                    <button>See your matches</button>
                </div>
                <!-- end main-content -->
            </div>
            <!-- end main-content-container -->
        </div>
        <!-- end main-picture -->  
        <section class="homepage-about"> 
            <section>
                <h3>Sign up</h3>
                <p>Baby pictures of a newborn supernova have captured this stellar explosion after the first half-dozen hours of its life, shedding light on how these giant explosions happen, a new study finds.</p>
            </section>
            <section>
                <h3>discover</h3>
                <p>Baby pictures of a newborn supernova have captured this stellar explosion after the first half-dozen hours of its life, shedding light on how these giant explosions happen, a new study finds.</p> 
            </section>
            <section>
                <h3>date</h3>
                <p>Baby pictures of a newborn supernova have captured this stellar explosion after the first half-dozen hours of its life, shedding light on how these giant explosions happen, a new study finds.</p>
            </section>
            <section>
                <h3>payment</h3>
                <p>Baby pictures of a newborn supernova have captured this stellar explosion after the first half-dozen hours of its life, shedding light on how these giant explosions happen, a new study finds.</p>
            </section>
            <div class="clearfix"></div>
        </section>
        <footer id="pageFooter">
            design and code © iwith.it 2017
        </footer>
    </body>
</html>
