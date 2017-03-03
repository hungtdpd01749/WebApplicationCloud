
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>

        <div id="header">
            <div class="inHeader">
                <div class="mosAdmin">
                    Chào <%=session.getAttribute("user") %><br>
                    <a href="index.jsp">Trang khách hàng</a> | <a href="">Help</a> | <a href="login.jsp">Logout</a>
                </div>
                <div class="clear"></div>
            </div>
        </div> 

    </body>
</html>
