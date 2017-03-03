<%-- 
    Document   : category
    Created on : 07-10-2016, 14:56:03
    Author     : kuminhdey
--%>

<%@page import="model.DanhMuc"%>
<%@page import="DAO.DanhMucDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="fb-root"></div>
        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>
            <%
                DanhMucDAOImpl danhMucDAO = new DanhMucDAOImpl();
            %>
        <div class="col-sm-3">
            <div class="left-sidebar">
                <h2>Sản phẩm</h2>
                <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                    <%for (DanhMuc danh_muc_cha : danhMucDAO.getListDanhMucCha()) {%>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a >
                                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                        <%=danh_muc_cha.getTen_danh_muc()%>
                                </a>
                            </h4>
                        </div>

                        <div class="panel-body">
                            <ul>
                                <%for (DanhMuc danh_muc_con : danhMucDAO.getListDanhMucCon(danh_muc_cha.getMa_danh_muc())) {%>
                                <li><a href="index.jsp?ma_danh_muc=<%=danh_muc_con.getMa_danh_muc()%>"><%=danh_muc_con.getTen_danh_muc()%></a></li>
                                    <%
                                        }
                                    %>
                            </ul>
                        </div>
                    </div>
                    <%
                        }
                    %>

                </div><!--/category-products-->

                <div class="shipping text-center"><!--shipping-->
                    <img src="images/home/shipping.jpg" alt="" />
                </div><!--/shipping-->
                <div class="shipping text-center"><!--shipping-->
                    <div class="fb-page" data-href="https://www.facebook.com/smakerclothing" data-tabs="timeline" data-width="270" data-height="350" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/smakerclothing" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/smakerclothing">$maker</a></blockquote></div>
                </div><!--/shipping-->
                <div style="clear: both; margin-bottom: 40px"></div>

            </div>
        </div>
    </body>
</html>
