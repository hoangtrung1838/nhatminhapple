<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý sản phẩm</title>
    <link rel="stylesheet" href="frontend/css/bootstrap777.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:useBean id="a" class="dao.DAO"></jsp:useBean>
</head>
<body>
<jsp:include page="HomeMenu.jsp"></jsp:include>

    <div class="container border mt-5 pt-5 mt-lg-5">
        <c:if test="${acc ne null&&acc.isAdmin==1}">
            <form>
                <table class="table table-striped table-bordered table-hover overflow-auto text-center">
                    <nav class="navbar navbar-expand-lg navbar-dark text-dark bg-dark lighten mt-3 mb-5">
                        <!-- Navbar brand -->
                        <!-- Collapse button -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <!-- Collapsible content -->
                        <div class="collapse navbar-collapse" id="basicExampleNav">

                            <!-- Links -->
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item ml-2 mr-2">
                                    <a href="signup"  class="btn btn-success" data-toggle="modal">Thêm tài khoản</a>
                                </li>
                            </ul>
                            <!-- Links -->

                        </div>
                        <!-- Collapsible content -->

                    </nav>
                        <%--            table head--%>
                    <thead class="mt-2">
                    <tr class="row">
                        <th class="col-2">ID</th>
                        <th class="col-4">Tên tài khoản</th>
                        <th class="col-2">Mật khẩu</th>
                        <th class="col-2">Tên người dùng</th>
                        <th class="col-2">Trạng thái</th>

                    </tr>
                    </thead>
                        <%--            table head--%>
                    -------

                        <%--table body--%>
                    <tbody>
                    <c:forEach var="o" items="${listAccount}">
                        <tr class="row">
                            <td class="col-2 overflow-auto">${o.id}</td>
                            <td class="col-4 overflow-auto">${o.accName}</td>
                            <td class="col-2 overflow-auto">${o.pass}</td>
                            <td class="col-2 overflow-auto">${o.userName}</td>
                            <td class="col-2 overflow-auto">${o.isAdmin==1?"Admin":"Khách"}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                        <%--table body--%>


                </table>

                    <%--        table--%>
            </form>
        </c:if>

    </div>

<jsp:include page="HomeFooter.jsp"></jsp:include>
</body>
</html>
