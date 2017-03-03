
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>menu</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
    </head>
    <body>

        <div id="leftBar">
            <ul>
                <li><a href="indexad.jsp">Trang chủ</a></li>
                <li><a href="manager_category.jsp">Danh mục</a></li>
                <li><a href="manager_product.jsp">Sản phẩm</a></li>
                <li><a href="manager_bill.jsp">Hóa đơn</a></li>
            </ul>
        </div>

    </body>
</html>
