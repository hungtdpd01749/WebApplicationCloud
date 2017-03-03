

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

</head>
<body>
<%
         String ten_tai_khoan_err = "", ten_dang_nhap_err = "", mat_khau_err = "";
         if(request.getAttribute("ten_tai_khoan_err") != null){
             ten_tai_khoan_err = (String) request.getAttribute("ten_tai_khoan_err");
         }
         if(request.getAttribute("ten_dang_nhap_err") != null){
             ten_dang_nhap_err = (String) request.getAttribute("ten_dang_nhap_err");
         }
         if(request.getAttribute("mat_khau_err") != null){
             mat_khau_err = (String) request.getAttribute("mat_khau_err");
         }
         String ten_tai_khoan = "", ten_dang_nhap = "", mat_khau = "";
         if(request.getAttribute("ten_tai_khoan") != null){
             ten_tai_khoan = (String) request.getAttribute("ten_tai_khoan");
         }
         if(request.getAttribute("ten_dang_nhap") != null){
             ten_dang_nhap = (String) request.getAttribute("ten_dang_nhap");
         }
         if(request.getAttribute("mat_khau") != null){
             mat_khau = (String) request.getAttribute("mat_khau");
         }
         String thong_tin_err = "", err = "";
         if(request.getAttribute("thong_tin_err") != null){
            thong_tin_err = (String) request.getAttribute("thong_tin_err");
         }
         if(request.getAttribute("err") != null){
            err = (String) request.getAttribute("err");
         }
        %>
    <div id="header">
        <div class="inHeaderLogin"></div>
    </div>

    <div id="loginForm">
        <div class="headLoginForm">
            Login Administrator
        </div>
        <div class="fieldLogin">
            <p style="color: red"><%=thong_tin_err%></p>
            <p style="color: red"><%=err%></p>
            <form action="/Assignment_JAVA4_Hungtdpd01749/LoginAdminServlet" method="post">
                <label>Username</label><br>
                <input type="text" class="login" name="ten_dang_nhap"><br>
                <label>Password</label><br>
                <input type="password" class="login" name="mat_khau"><br>
                <input type="submit" class="button" value="Login">
            </form>
        </div>
    </div>

</body>
</html>
