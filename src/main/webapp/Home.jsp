<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhật Minh Apple</title>
    <link rel="stylesheet" href="frontend/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="frontend/css/home.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:useBean id="a" class="dao.DAO" scope="request"></jsp:useBean>

</head>
<body class="bg-secondary">
<!-- Navbar -->
<jsp:include page="HomeMenu.jsp"></jsp:include>
<!-- Navbar -->
<!--Carousel Wrapper-->
<div id="carousel-example-1z" class="carousel slide carousel-fade pt-5" data-ride="carousel">

    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-1z" data-slide-to="1"></li>
        <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->

    <!--Slides-->
    <div class="carousel-inner" role="listbox">

        <!--First slide-->
        <div class="carousel-item active">
            <div class="view" style="background-image: url('frontend/picture/intro1.png');
            background-color: rgba(0,0,0,0.6); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                    <!-- Content -->
                    <div class="text-center text-light mx-5 wow fadeIn">
                        <h1 class="mb-4">
                            <strong>Nhật Minh Apple <i class="fab fa-apple mr-lg-5"></i></strong>
                        </h1>

                        <p>
                        <h3><strong>Mua bán<br>Sửa Chữa<br>Bảo hành</strong></h3>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                        <h3>
                        </h3>
                        </p>
                    </div>
                    <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

            </div>
        </div>
        <!--/First slide-->

        <!--Second slide-->
        <div class="carousel-item">
            <div class="view" style="background-image: url('frontend/picture/intro2.png');
             background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                    <!-- Content -->
                    <div class="text-center text-light mx-5 wow fadeIn">
                        <h1 class="mb-4">
                            <strong>Nhật Minh Apple <i class="fab fa-apple mr-lg-5"></i></strong>
                        </h1>

                        <p>
                        <h3><strong>Mua bán<br>Sửa Chữa<br>Bảo hành</strong></h3>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                        <h3>
                        </h3>
                        </p>
                    </div>
                    <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

            </div>
        </div>
        <!--/Second slide-->

        <!--Third slide-->
        <div class="carousel-item">
            <div class="view" style="background-image: url('frontend/picture/intro1.png'); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                    <!-- Content -->
                    <div class="text-center text-light mx-5 wow fadeIn">
                        <h1 class="mb-4">
                            <strong>Nhật Minh Apple <i class="fab fa-apple mr-lg-5"></i></strong>
                        </h1>

                        <p>
                        <h3><strong>Mua bán</i><br>Sửa Chữa<br>Bảo hành</strong></h3>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                        <h3>
                        </h3>
                        </p>
                    </div>
                    <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

            </div>
        </div>
        <!--/Third slide-->

    </div>
    <!--/.Slides-->

    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->

</div>
<!--/.Carousel Wrapper-->


<!--Main layout-->
<main class="bg-secondary">
    <div class="container">

        <!--Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark text-dark bg-dark lighten mt-3 mb-5">

            <!-- Navbar brand -->
            <span class="navbar-brand">Hãng:</span>

            <!-- Collapse button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse" id="basicExampleNav">

                <!-- Links -->
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item ">
                        <a id="allCategory" class="nav-link ${tag eq null?"text-primary":""}" href="home">Tất cả
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <c:forEach var="o" items="${a.allCategory}">
                        <li class="nav-item">
                            <a name="categoryID" class="nav-link ${tag eq o.cid?"text-primary":""}" id="${o.cid}"  href="category?cid=${o.cid}">${o.cname}</a>
<%--                            <input type="button" class="btn-link" value="${o.cname}">--%>
                        </li>
                    </c:forEach>


                </ul>
                <!-- Links -->

                <form class="form-inline" method="post" action="search">
                    <div class="md-form my-0">
                        <input id="search" oninput="searchByAjax(this)" class="form-control mr-sm-2" name="search" type="text" placeholder="Search" aria-label="Search">
                        <input type="submit" class="btn-sm text-primary" value="Tìm kiếm" >
                    </div>
                </form>
            </div>
            <!-- Collapsible content -->

        </nav>
        <!--/.Navbar-->

        <!--Section: Products v.3-->
        <section class=" text-center mb-4">

            <!--Grid row-->
            <div id="content" class=" row wow fadeIn">
                <c:forEach var="o" items="${listAll}">
                    <!--Grid column-->
                    <div class="product col-6 col-lg-3 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card">

                            <!--Card image-->
                            <div class=" view overlay">
                                <a href="${o.image}">
                                    <img src="${o.image}" class="card-img-top" alt="">
                                    <strong>
                                        <c:if test="${o.isSale==1}">
                                            <span class="float-right text-right badge badge-pill bg-danger ">
                                                <h6>Sale</h6>
                                            </span>
                                        </c:if>

                                        <c:if test="${o.isNew==1}">
                                            <span class=" float-right text-right badge badge-pill bg-danger ">
                                                <h6>Mới</h6>
                                            </span>
                                        </c:if>

                                    </strong>

                                    <div class=" mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!--Card image-->

                            <!--Card content-->
                            <div class="card-body text-center">
                                <!--Category & Title-->
                                <h5>
                                    <strong>
                                        <a methods="post" href="detail?name=${o.name}" class="text-dark">${o.name}
                                        </a>
                                    </strong>
                                </h5>

                                <h4 class="font-weight-bold text-primary">
                                    <strong>${(o.price/1000000)}00.000đ</strong>
                                </h4>

                            </div>
                            <!--Card content-->

                        </div>
                        <!--Card-->

                    </div>
                    <!--Grid column-->
                </c:forEach>

            </div>
            <!--Grid row-->

        </section>
        <!--Section: Products v.3-->

        <!--Pagination-->
        <nav class="d-flex justify-content-center wow fadeIn">
<%--            <a href="#" class="btn btn-light mb4">Xem thêm!</a>--%>
            <button onclick="loadMore()" class="btn btn-light mb4">Xem thêm</button>
        </nav>
        <!--Pagination-->

    </div>
</main>
<!--Main layout-->

<!--Footer-->
<%@include file="HomeFooter.jsp"%>
<!--Footer-->

<script>
        function loadMore(){
            var amount = document.getElementsByClassName("product").length;
            var tag = "${tag}"
            let link;

            if(tag.length==0){
                link="/NhatMinhApple4_war_exploded/loadMore";
            }else {
                link="/NhatMinhApple4_war_exploded/loadMoreCID";

            }

            $.ajax({
                url: link,
                type: "post",
                data:{
                    exits: amount,
                    cid : "${tag}"
                },
                success: function (data){
                    var row =document.getElementById("content");
                    row.innerHTML+= data;
                },
                error: function (xhr){

                }
            });
        }


        function searchByAjax(ele){
            $.ajax({
                url: "/NhatMinhApple4_war_exploded/searchByAjax",
                type: "post",
                data: {
                    input : ele.value
                },
                success: function (data){
                    var row= document.getElementById("content");
                    row.innerHTML = data;
                },
                error: function (xhr){

                }
            });
        }
</script>
<script src="frontend/javascript/jquery.min.js"></script>
<script src="frontend/javascript/popper.min.js"></script>
<script src="frontend/javascript/bootstrap.min.js"></script>
<script src="frontend/javascript/jsp.js"></script>
<script src="frontend/javascript/login.js"></script>
</body>
</html>
