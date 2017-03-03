
<%@page import="model.DanhMuc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DanhMucDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý danh mục</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>

        <%
            DanhMucDAOImpl categoryDAO = new DanhMucDAOImpl();
            ArrayList<DanhMuc> listCategory = categoryDAO.getListDanhMucCha();
        %>

        <jsp:include page="headerad.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý danh mục</h3>

                    <a href="${root}/insert_category.jsp?">Thêm danh mục</a>

                <table class="data">

                    <tr class="data">
                        <th class="data" width="30px">STT</th>
                        <th class="data">Mã danh mục</th>
                        <th class="data">Tên danh mục</th>
                        <th class="data" width="90px">Tùy chọn</th>
                    </tr>

                    <%
                        int count = 0;
                        for (DanhMuc category : listCategory) {
                            count++;
                    %>
                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        <td class="data"><%=category.getMa_danh_muc()%></td>
                        <td class="data"><%=category.getTen_danh_muc()%></td>
                        <td class="data" width="90px">
                    <center>
                        <a href="${root}/update_category.jsp?command=update&ma_danh_muc=<%=category.getMa_danh_muc()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                        <a href="/Assignment_JAVA4_Hungtdpd01749/ManagerCategoryServlet?command=delete&ma_danh_muc=<%=category.getMa_danh_muc()%>">Xóa</a>
                    </center>
                    </td>
                    </tr>
                    <%}%>

                </table>
            </div>
            <div class="clear"></div>

            <jsp:include page="footerad.jsp"></jsp:include>

        </div>

    </body>
</html>
