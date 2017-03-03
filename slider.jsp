<%-- 
    Document   : slide
    Created on : 07-10-2016, 14:57:39
    Author     : kuminhdey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section id="slider"><!--slider-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#slider-carousel" data-slide-to="1"></li>
                                <li data-target="#slider-carousel" data-slide-to="2"></li>
                            </ol>

                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="col-sm-6">
                                        <h1><span style="color: red">$</span><span style="color: black">MAKER</span></h1>
                                        <h2>Sự Khác Biệt Của Bạn</h2>
                                        <p>Với thiết kế trẻ trung, năng động và cá tính. Còn chần chừ gì nữa mà không thể hiện sự khác biệt </p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="images/home/girl1.jpg" class="girl img-responsive" alt="" />
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span style="color: red">$</span><span style="color: black">MAKER</span></h1>

                                        <h2>100% Design By $maker</h2>
                                        <p>Các sản phẩm của $maker luôn tự tay thiết kế mà bạn chỉ thấy ở $maker</p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="images/home/girl2.jpg" class="girl img-responsive" alt="" />
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span style="color: red">$</span><span style="color: black">MAKER</span></h1>
                                        <h2>Uy Tín - Chất Lượng</h2>
                                        <p>Chúng tôi luôn cố gắng mang lại cho bạn những sản phẩm tốt nhất mà chúng tôi có được</p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="images/home/girl3.jpg" class="girl img-responsive" alt="" />
                                    </div>
                                </div>

                            </div>

                            <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </section><!--/slider-->
    </body>
</html>
