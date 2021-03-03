<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
    <link rel="stylesheet" href="frontend/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:useBean id="a" class="dao.DAO"></jsp:useBean>
</head>
<body class="">
<!-- Navbar -->
<%@include file="HomeMenu.jsp"%>
<<!-- Navbar -->

<!--Main layout-->
<main class="mt-5 pt-4">
    <div class="container dark-grey-text mt-5">


        <% String name = request.getParameter("name");%>
        <% request.setAttribute("name",name); %>
        <%out.println("Gửi tên nè bạn ei "+name+"<br>");%>
        <% String color = request.getParameter("color");%>
        <% request.setAttribute("color",color);%>
        <% out.println("color nè bạn ei "+color+"<br>");%>
        <% String id = request.getParameter("id");%>
        <% request.setAttribute("id",id);%>
        <% out.print("id nài bạn eii: "+ id);%>

        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-md-6 mb-4 ">

                <img src="${(a.getProductByID(id).image eq null)?a.getOneProductByName(name).image:a.getProductByID(id).image}" class="img-fluid" alt="">
<h1>name ${name}</h1>
                <nav class="d-flex justify-content-center wow fadeIn">
                    <ul class="pagination pg-blue">
                        <c:forEach var="o" items="${a.getAllProductByName(name)}">
                            <li class="page-item ${color eq o.color?"active":""} ">
                                <a class="page-link" href="Detail.jsp?name=${o.name}&color=${o.color}&id=${o.id}">${o.color}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </nav>

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-6 mb-4">

                <!--Content-->
                <div class="p-4">

                    <div class="mb-3">
                        <a href="${o.image}">
                            <span class="badge purple mr-1">${name}</span>
                        </a>
                        <a href="">
                            <span class="badge blue mr-1">New</span>
                        </a>
                        <a href="">
                            <span class="badge red mr-1">Bestseller</span>
                        </a>
                    </div>

                    <p class="lead">
              <span class="mr-1">
                <del>$200</del>
              </span>
                        <span>$100</span>
                    </p>

                    <p class="lead font-weight-bold">Description</p>

                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Et dolor suscipit libero eos atque quia ipsa
                        sint voluptatibus!
                        Beatae sit assumenda asperiores iure at maxime atque repellendus maiores quia sapiente.</p>

                    <form class="d-flex justify-content-left" method="get" action="Detail.jsp">
                        <!-- Default input -->
                        <input name="name" value="${name}"  style="display: none">
                        <input name="color" value="${color}" style="display: none" >
                        <input name="id" value="${id}" style="display: none" >

                        <input type="number" value="1" aria-label="Search" class="form-control" style="width: 100px">
                        <button class="btn btn-primary btn-md my-0 p" type="submit">Thêm vào giỏ
                            <i class="fas fa-shopping-cart ml-1"></i>
                        </button>

                    </form>

                </div>
                <!--Content-->

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

        <hr>

        <!--Grid row-->
        <div class="row d-flex justify-content-center wow fadeIn">

            <!--Grid column-->
            <div class="col-md-6 text-center">

                <h4 class="my-4 h4">Additional information</h4>

                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus suscipit modi sapiente illo soluta odit
                    voluptates,
                    quibusdam officia. Neque quibusdam quas a quis porro? Molestias illo neque eum in laborum.</p>

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-lg-4 col-md-12 mb-4">

                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/11.jpg" class="img-fluid" alt="">

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">

                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/12.jpg" class="img-fluid" alt="">

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">

                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg" class="img-fluid" alt="">

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

    </div>
</main>
<!--Main layout-->

<!--Footer-->
<%@include file="HomeFooter.jsp"%>
<!--/.Footer-->

<script src="frontend/javascript/jquery.min.js"></script>
<script src="frontend/javascript/popper.min.js"></script>
<script src="frontend/javascript/bootstrap.min.js"></script>
<script src="frontend/javascript/jsp.js"></script>
<script src="frontend/javascript/Detail.js"></script>
</body>
</html>
