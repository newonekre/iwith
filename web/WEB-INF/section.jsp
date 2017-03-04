<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <button class="go">Go</button>

</div>
<div class="main-picture">
    <%for (int i = 1; i < 25; i++) {%>
    <div class="person">
        <div class="main-picture-images" style="background-image: url(<% out.print("images/p" + i + ".png");%>)"></div>
        <div class="name">john <span class="age">24 y</span></div>
        <div class="location">Taipei</div>  
    </div>
    <%}%>
</div>