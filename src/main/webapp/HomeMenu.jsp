<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Navbar -->


<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">

        <!-- Brand -->

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <!-- Left -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="navbar-brand waves-effect" href="home">
                        <strong class="text-primary">Trang chủ</strong>
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="https://www.facebook.com/pages/C%E1%BB%ADa%20H%C3%A0ng%20Di%20%C4%90%E1%BB%99ng%20Nh%E1%BA%ADt%20Minh%20Apple/667472823770008/" class="nav-link waves-effect" target="_blank">
                        <strong>Facebook</strong>
                        <i class="fab fa-facebook-f"></i>
                    </a>
                </li>

            </ul>

            <!-- Right -->
            <ul class="navbar-nav nav-flex-icons">
                <li class="nav-item">
                    <a class="nav-link waves-effect" href="checkout">
                        <span class="badge red z-depth-1 mr-1"> 0 </span>
                        <i class="fas fa-shopping-cart"></i>
                        <span class="clearfix d-none d-sm-inline-block"> Giỏ hàng </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link waves-effect ${acc eq null?"":"d-none"}"  href="login" >Đăng nhập</a>
                </li>
                <c:if test="${acc.isAdmin==1}">
                    <li class="nav-item">
                        <a class="nav-link waves-effect" href="accountManager">Quản lý tài khoản</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link waves-effect" href="productManager">Quản lý kho</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link waves-effect ${acc eq null?"d-none":""}"  href="checkout" >${acc.userName}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link waves-effect ${acc eq null?"d-none":""}" href="logout">Đăng xuất</a>
                </li>

            </ul>

        </div>

    </div>
</nav>
<!-- Navbar -->

