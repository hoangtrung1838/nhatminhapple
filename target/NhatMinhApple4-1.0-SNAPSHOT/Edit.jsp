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
<body>

<jsp:include page="HomeMenu.jsp"></jsp:include>


<c:if test="${acc ne null&&acc.isAdmin==1}">
    <div id="editProduct" class="mt-5">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="edit" method="post">
                    <div class="modal-header bg-secondary">
                        <h4 class="modal-title">Cập nhật sản phẩm</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Mã sản phẩm</label>
                            <input name="id" type="text" class="form-control" readonly value="${product.id}">
                        </div>
                        <div class="form-group">
                            <label>Tên</label>
                            <input name="name" type="text" class="form-control" required value="${product.name}">
                        </div>
                        <div class="form-group">
                            <label>Dung lượng</label>
                            <input name="memory" type="text" class="form-control" value="${product.memory}" required>
                        </div>
                        <div class="form-group">
                            <label>Màu</label>
                            <input name="color" type="text" class="form-control" value="${product.color}" required>
                        </div>
                        <div class="form-group">
                            <label>Ảnh</label>
                            <input name="image" type="text" class="form-control" value="${product.image}" required>
                        </div>

                        <div class="form-group">
                            <label>Giá</label>
                            <input name="price" type="text" class="form-control" value="${product.price}" required>
                        </div>
                        <div class="form-group">
                            <label>Mô tả</label>
                            <input name="title" type="text" class="form-control" value="${product.title}" required>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select name="category" class="form-select" aria-label="Default select example">
                                <c:forEach items="${a.allCategory}" var="o">
                                    <option  ${o.cid eq product.categoryID?"selected":""} value="${o.cid}">${o.cname}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Mới</label>
                            <select name="isNew" class="form-select" aria-label="Default select example">
                                <option ${product.isNew eq "0"?"selected":""} value="0">Không</option>
                                <option ${product.isNew eq "1"?"selected":""} value="1">Có</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Khuyến mãi</label>
                            <select name="isSale" class="form-select" aria-label="Default select example">
                                <option ${product.isNew eq "0"?"selected":""} value="0">Không</option>
                                <option ${product.isSale eq "1"?"selected":""} value="1">Có</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Số lượng</label>
                            <input name="amount" type="text" class="form-control" value="${product.amount}" required>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <a href="productManager" class="btn  btn-primary" >Cancel</a>
                        <input type="submit" class="btn btn-success" value="Cập nhật">
                    </div>
                </form>
            </div>
        </div>
    </div>
</c:if>

<script src="frontend/javascript/jquery.min.js"></script>
<script src="frontend/javascript/popper.min.js"></script>
<script src="frontend/javascript/bootstrap.min.js"></script>
</body>
</html>
