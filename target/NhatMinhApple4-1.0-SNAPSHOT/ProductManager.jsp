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


<%--add form--%>
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="add" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Add Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên</label>
                        <input name="name" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Dung lượng</label>
                        <input name="memory" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Màu</label>
                        <input name="color" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Ảnh</label>
                        <input name="image" type="text" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label>Giá</label>
                        <input name="price" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <input name="title" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Category</label>
                        <select name="category" class="form-select" aria-label="Default select example">
                            <c:forEach items="${a.allCategory}" var="o">
                                <option value="${o.cid}">${o.cname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Mới</label>
                        <select name="isNew" class="form-select" aria-label="Default select example">
                            <option value="0">Không</option>
                            <option value="1">Có</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Khuyến mãi</label>
                        <select name="isSale" class="form-select" aria-label="Default select example">
                            <option value="0">Không</option>
                            <option value="1">Có</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Số lượng</label>
                        <input name="amount" type="text" class="form-control" required>
                    </div>


                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>
<%--add form--%>

<%--Infor--%>
<div class="container border mt-5 pt-5 mt-lg-5">

    <%--Form--%>
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
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal">Thêm sản phẩm mới</a>
                        </li>
<%--                        <li class="nav-item ml-2 mr-2 ">--%>
<%--                            <a href="#"  class="btn btn-success" data-toggle="modal">Cập nhật</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a href="#"  class="btn btn-success" data-toggle="modal">Xóa</a>--%>
<%--                        </li>--%>
                    </ul>
                <!-- Links -->

                </div>
            <!-- Collapsible content -->

            </nav>
                <%--            table head--%>
            <thead class="mt-2">
            <tr class="row">
                <th class="col-1">Mã sản phẩm</th>
                <th class="col-1">Tên sản phẩm</th>
                <th class="col-1">Dung lượng</th>
                <th class="col-1">Màu</th>
                <th class="col-1">Link ảnh</th>
                <th class="col-1">Giá</th>
                <th class="col-1">Mô tả</th>
                <th class="col-1">Mã loại sản phẩm</th>
                <th class="col-1">Mới</th>
                <th class="col-1">Giảm giá</th>
                <th class="col-1">Số lượng</th>
                <th class="col-1">Thao tác </th>
            </tr>
            </thead>
<%--            table head--%>
            -------

            <%--table body--%>
            <tbody>
            <c:forEach var="o" items="${listAll}">
                <tr class="row">
                    <td class="col-1 overflow-auto">${o.id}
                        <img src="${o.image}" class="img-thumbnail img-fluid"></td>
                    <td class="col-1 overflow-auto">${o.name}</td>
                    <td class="col-1 overflow-auto">${o.memory}</td>
                    <td class="col-1 overflow-auto">${o.color}</td>
                    <td class="col-1 overflow-auto" title="${o.image}"> ${o.image}</td>
                    <td class="col-1 overflow-auto">${(o.price/1000000)} tr</td>
                    <td class="col-1 overflow-auto">${o.title}</td>
                    <td class="col-1 overflow-auto">${o.categoryID}</td>
                    <td class="col-1 overflow-auto">${o.isNew==1?"Có":"Không"}</td>
                    <td class="col-1 overflow-auto">${o.isSale==1?"Có":"Không"}</td>
                    <td class="col-1 overflow-auto">${o.amount}</td>
                    <td class="col-1">
                        <a class="nav-item"  href="loadProduct?id=${o.id}"> <i class="fas fa-broom" title="Chỉnh sửa"></i></a>
                        <a class="nav-item" href="delete?id=${o.id}"><i class="ml-2 fas fa-backspace" title="Xóa"></i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
            <%--table body--%>


        </table>

<%--        table--%>
    </form>
</c:if>
<%--Form--%>


</div>
<%--Infor--%>


<jsp:include page="HomeFooter.jsp"></jsp:include>
<script src="frontend/javascript/jquery.min.js"></script>
<script src="frontend/javascript/popper.min.js"></script>
<script src="frontend/javascript/bootstrap.min.js"></script>
</body>
</html>
