<%@page import="com.iwith.entity.Seller"%>
<%@page import="com.iwith.service.SellerService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>schedule</title>
        <%@ include file="include.jsp" %>
    </head>
    <%
        String id = request.getParameter("id");
        int pid = 1;
        if (id != null && id.matches("\\d+")) {
            pid = Integer.parseInt(id);
        }
        SellerService service = new SellerService();
        Seller s = service.get(pid);
    %>
    <body>
        <div id="header-container">
            <jsp:include page="WEB-INF/header.jsp" />
        </div>


        <div id='calendars'>
            <ul>
                <li>
                    <time class="icon monday">
                        <span class="month">March</span>
                        <span class="day">13</span>
                        <span class="week">Monday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon tuesday">
                        <span class="month">March</span>
                        <span class="day">14</span>
                        <span class="week">Tuesday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon wednesday">
                        <span class="month">March</span>
                        <span class="day">15</span>
                        <span class="week">Wednesday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon thursday">
                        <span class="month">March</span>
                        <span class="day">16</span>
                        <span class="week">Thursday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon friday">
                        <span class="month">March</span>
                        <span class="day">17</span>
                        <span class="week">Friday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon saturday">
                        <span class="month">March</span>
                        <span class="day">18</span>
                        <span class="week">Saturday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon sunday">
                        <span class="month">March</span>
                        <span class="day">19</span>
                        <span class="week">Sunday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon monday">
                        <span class="month">March</span>
                        <span class="day">20</span>
                        <span class="week">Monday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon tuesday">
                        <span class="month">March</span>
                        <span class="day">21</span>
                        <span class="week">Tuesday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon wednesday">
                        <span class="month">March</span>
                        <span class="day">22</span>
                        <span class="week">Wednesday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon thursday">
                        <span class="month">March</span>
                        <span class="day">23</span>
                        <span class="week">Thursday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon friday">
                        <span class="month">March</span>
                        <span class="day">24</span>
                        <span class="week">Friday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon saturday">
                        <span class="month">March</span>
                        <span class="day">25</span>
                        <span class="week">Saturday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

                <li>
                    <time class="icon sunday">
                        <span class="month">March</span>
                        <span class="day">26</span>
                        <span class="week">Sunday</span>
                        <div class="time-selector">
                            <input class="time start" type="text" class="timeFrom" /> to <input class="time end" type="text"  class="timeTo" />
                        </div>
                    </time>
                </li>

            </ul>

            <form action="check-out.jsp" method="POST">
                <button class="go ui-button ui-corner-all ui-widget">check out</button>
            </form>
        </div>
    </div>
</body>
</html>
