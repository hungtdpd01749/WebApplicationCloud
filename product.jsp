<%-- 
    Document   : product
    Created on : 07-10-2016, 15:04:25
    Author     : kuminhdey
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="model.SanPham"%>
<%@page import="DAO.ProductDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        ProductDAOImpl productDAO = new ProductDAOImpl();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        %>
        <div class="col-sm-9 padding-right">
            <div class="features_items"><!--features_items-->
                <h2 class="title text-center">Sản Phẩm Tiêu Biểu</h2>
                <%for(SanPham sp : productDAO.getAllProduct()) {%>
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="<%=sp.getHinh_anh()%>" alt="" />
                                <h2><%=nf.format(sp.getDon_gia())%> VNĐ</h2>
                                <p><%=sp.getTen_san_pham()%></p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                            </div>
                            <div class="product-overlay">
                                <div class="overlay-content">
                                    <h2><%=nf.format(sp.getDon_gia())%></h2>
                                    <p><%=sp.getTen_san_pham()%></p>
                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                        <div class="choose">
                            <ul class="nav nav-pills nav-justified">
                                <li><a href="#"><i class="fa fa-plus-square"></i>Thêm so sánh</a></li>
                                <li><a href="details.jsp?ma_san_pham=<%=sp.getMa_san_pham()%>"><i class="fa fa-plus-square"></i>Xem chi tiết</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%}%>
            </div><!--features_items-->
            <div class="features_items"><!--features_items-->
                
                <%for(SanPham sp : productDAO.getListProductByCategory(request.getParameter("ma_danh_muc"))) {%>
                <h2 class="title text-center">Sản Phẩm</h2>
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="<%=sp.getHinh_anh()%>" alt="" />
                                <h2><%=nf.format(sp.getDon_gia())%> VNĐ</h2>
                                <p><%=sp.getTen_san_pham()%></p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                            </div>
                            <div class="product-overlay">
                                <div class="overlay-content">
                                    <h2><%=nf.format(sp.getDon_gia())%></h2>
                                    <p><%=sp.getTen_san_pham()%></p>
                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                        <div class="choose">
                            <ul class="nav nav-pills nav-justified">
                                <li><a href="#"><i class="fa fa-plus-square"></i>Thêm so sánh</a></li>
                                <li><a href="details.jsp?ma_san_pham=<%=sp.getMa_san_pham()%>"><i class="fa fa-plus-square"></i>Xem chi tiết</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%}%>
            </div><!--features_items-->

            <div class="category-tab"><!--category-tab-->
                <div class="col-sm-12">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tshirt" data-toggle="tab">T-Shirt</a></li>
                        <li><a href="#blazers" data-toggle="tab">Jacket</a></li>
                        <li><a href="#sunglass" data-toggle="tab">Shore</a></li>
                        <li><a href="#kids" data-toggle="tab">JOGGERS</a></li>
                        <li><a href="#poloshirt" data-toggle="tab">Snapback</a></li>
                    </ul>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade active in" id="tshirt" >
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery1.jpg" alt="" />
                                        <h2>200.000 VNĐ</h2>
                                        <p>$maker Snake</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery2.jpg" alt="" />
                                        <h2>700.000 VNĐ</h2>
                                        <p>Nike Ari F1</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery3.jpg" alt="" />
                                        <h2>250.000 VNĐ</h2>
                                        <p>$maker Heart Sportcap</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery4.jpg" alt="" />
                                        <h2>400.000 VNĐ</h2>
                                        <p>$maker Feather Bomber</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="blazers" >
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery4.jpg" alt="" />
                                        <h2>400.000 VNĐ</h2>
                                        <p>$maker Feather Bomber</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery3.jpg" alt="" />
                                        <h2>250.000 VNĐ</h2>
                                        <p>$maker Heart Sportcap</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery2.jpg" alt="" />
                                        <h2>700.000 VNĐ</h2>
                                        <p>Nike Air F1</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery1.jpg" alt="" />
                                        <h2>500.000 VNĐ</h2>
                                        <p>Creative Recreation Adonis</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="sunglass" >
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery3.jpg" alt="" />
                                        <h2>250.000 VNĐ</h2>
                                        <p>$maker Heart Sportcap</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery4.jpg" alt="" />
                                     <h2>400.000 VNĐ</h2>
                                        <p>$maker Feather Bomber</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery1.jpg" alt="" />
                         <h2>500.000 VNĐ</h2>
                                        <p>Creative Recreation Adonis</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery2.jpg" alt="" />
                                       <h2>500.000 VNĐ</h2>
                                        <p>Creative Recreation Adonis</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade active in" id="kids" >
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery1.jpg" alt="" />
                                        <h2>200.000 VNĐ</h2>
                                        <p>$maker Snake</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery2.jpg" alt="" />
                                        <h2>700.000 VNĐ</h2>
                                        <p>Nike Ari F1</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery3.jpg" alt="" />
                                        <h2>250.000 VNĐ</h2>
                                        <p>$maker Heart Sportcap</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery4.jpg" alt="" />
                                        <h2>400.000 VNĐ</h2>
                                        <p>$maker Feather Bomber</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="poloshirt" >
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery4.jpg" alt="" />
                                        <h2>400.000 VNĐ</h2>
                                        <p>$maker Feather Bomber</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery3.jpg" alt="" />
                                        <h2>250.000 VNĐ</h2>
                                        <p>$maker Heart Sportcap</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery2.jpg" alt="" />
                                        <h2>700.000 VNĐ</h2>
                                        <p>Nike Air F1</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/gallery1.jpg" alt="" />
                                        <h2>500.000 VNĐ</h2>
                                        <p>Creative Recreation Adonis</p>
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/category-tab-->

        </div>
    </body>
</html>
