<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="intity.Product" %>
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

<%--Get and Set Attribute--%>
<% String name = request.getParameter("name");%>
<% request.setAttribute("name",name); %>
<% Product product = a.getOneProductByName(name);%>
<% request.setAttribute("o",product);%>
<%--Get and Set Attribute--%>


<c:if test="${name ne null}">
    <!--Main layout-->
    <main class="mt-5 pt-4">
        <div class="container dark-grey-text mt-5">
            <!--Grid row-->
            <div class="row wow fadeIn">

                <!--Grid column-->
                <div class="col-md-6 mb-4 ">
                    <div id="show" class="text-center">
                        <img src="${o.image}" class="img-fluid" alt="">
                        <h1>${name}</h1>
                    </div>
                    <nav class="d-flex justify-content-center wow fadeIn">
                        <ul class="pagination pg-blue">
                            <c:forEach var="p" items="${a.getAllProductByName(name)}">
                                <li class="page-item ">
                                    <a class="page-link" onclick="changeImage(${p.id})" href="#">${p.color}</a>
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
                                <span class="badge purple mr-1">${o.name}</span>
                            </a>
                            <a href="">
                                <span class="badge blue mr-1">${o.isNew eq 1?"New":""}</span>
                            </a>
                            <a href="">
                                <span class="badge red mr-1">${o.isSale eq 1?"Sale":""}</span>
                            </a>
                        </div>

                        <p class="lead text-primary">
                            <span>${o.price/1000000}00.000đ</span>
                        </p>

                        <p class="lead font-weight-bold">Mô tả</p>

                        <p>${o.title}</p>

                        <form class="d-flex justify-content-left" method="get" action="Detail.jsp">
                            <!-- Default input -->

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
        </div>
    </main>
    <!--Main layout-->
</c:if>

<!--Footer-->
<%@include file="HomeFooter.jsp"%>
<!--/.Footer-->

<script>
    function changeImage(productID){
        $.ajax({
            url: "/NhatMinhApple4_war_exploded/detailImg",
            type: "post",
            data: {
                pID : productID
            },
            success: function (data){
                var img = document.getElementById("show");
                img.innerHTML = data;
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
<script src="frontend/javascript/Detail.js"></script>
</body>
</html>
