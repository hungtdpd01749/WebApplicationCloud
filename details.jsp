<%-- 
    Document   : details
    Created on : 07-10-2016, 15:25:45
    Author     : kuminhdey
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="model.SanPham"%>
<%@page import="DAO.ProductDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sản phẩm | $maker</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </head>
    <body>
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!--Cmt fb-->
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!--end cmt-->
        <%
        ProductDAOImpl productDAO = new ProductDAOImpl();
        SanPham sp = productDAO.getChiTietSanPham(request.getParameter("ma_san_pham"));
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <section>
                <div class="container">
                    <div class="row">
                    <jsp:include page="category.jsp"></jsp:include>
                        <div class="col-sm-9 padding-right">
                            <div class="product-details"><!--product-details-->
                                <div class="col-sm-5">
                                    <div class="view-product">
                                        <img src="<%=sp.getHinh_anh()%>" alt="" />
                                    </div>
                            </div>
                                <div class="col-sm-7">
                                    <div class="product-information"><!--/product-information-->
                                        <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                                        <h2><%=sp.getTen_san_pham()%></h2>
                                        <p>Mã sản phẩm: <%=sp.getMa_san_pham()%></p>
                                        <span>
                                            <span><%=nf.format(sp.getDon_gia())%> VNĐ</span>
                                            <label>Số lượng</label>
                                            <input type="text" value="1" />
                                            <p><button type="button" class="btn btn-fefault cart">
                                                <i class="fa fa-shopping-cart"></i>
                                                Thêm vào giỏ
                                                </button></p>
                                        </span>
                                            <p><b>Còn <%=sp.getSo_luong()%></b> Sản phẩm</p>
                                        <p><b>Giảm giá: <%=sp.getGiam_gia()%></b> VNĐ</p>
                                        <p><b>Chất liệu:</b> Sơ mi lụa mỏng và mát</p>
                                        <div class="fb-like" data-href="https://www.facebook.com/smakerclothing" data-width="240" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                                    </div><!--/product-information-->
                                </div>
                            </div><!--/product-details-->
                            <div class="fb-comments" data-href="https://www.facebook.com/smakerclothing/" data-width="auto" data-numposts="5"></div>

                            <div class="recommended_items"><!--recommended_items-->
                                <h2 class="title text-center">Sản phẩm tương tự</h2>
                                <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/home/1.jpg" alt="" />
                                                            <h2>200.000 VNĐ</h2>
                                                            <p>$maker Snake</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/home/2.jpg" alt="" />
                                                            <h2>700.000 VNĐ</h2>
                                                            <p>Nike Ari F1</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/home/3.jpg" alt="" />
                                                            <h2>250.000 VNĐ</h2>
                                                            <p>$maker Heart Sportcap</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">	
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/home/3.jpg" alt="" />
                                                            <h2>250.000 VNĐ</h2>
                                                            <p>$maker Heart Sportcap</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/home/4.jpg" alt="" />
                                                            <h2>400.000 VNĐ</h2>
                                                            <p>$maker Feather Bomber</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/home/1.jpg" alt="" />
                                                            <h2>200.000 VNĐ</h2>
                                                            <p>$maker Snake</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                    </a>			
                                </div>
                            </div><!--/recommended_items-->

                        </div>
                    </div>
                </div>
            </section>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
