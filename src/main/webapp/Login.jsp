<!------ Include the above in your HEAD tag ---------->

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="frontend/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="frontend/css/login.css">
    <title>Bootstrap 4 Login/Register Form</title>
</head>
<body class="bg-secondary">
<jsp:include page="HomeMenu.jsp"></jsp:include>
<div id="logreg-forms">

<%--    form signin--%>
    <form class="form-signin" method="post" action="login">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Đăng nhập</h1>
        <div>
            <input type="text" id="inputEmail" name="inputName" class="form-control" value="${inputName eq null?"":inputName}"
                   placeholder="Tài khoản đăng nhập" required="" autofocus="">
            <input type="password" id="inputPassword" name="inputPass" class="form-control" placeholder="Mật khẩu" required="">
        </div>
        <div class="alert alert-danger mt-2 ${flag ==0?"d-none":""}" role="alert">
            Sai tài khoản hoặc mật khẩu
        </div>
        <div class="form-group form-check">
            <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label " for="exampleCheck1">Lưu mật khẩu</label>
        </div>
        <button class="btn btn-success btn-block mt-2" type="submit"><i class="fas fa-sign-in-alt"></i> Đăng nhập</button>
        <a href="#" id="forgot_pswd">Quên mật khẩu?</a>
        <hr>
        <!-- <p>Don't have an account!</p>  -->
        <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Đăng ký</button>
    </form>
<%--form signin--%>


<%--form reset--%>
    <form action="login" class="form-reset">
        <input type="email" id="resetEmail" class="form-control" placeholder="Email" required="" autofocus="">
        <button class="btn btn-primary btn-block" type="submit">Đặt lại mật khẩu</button>
        <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Trở lại</a>
    </form>

<%--form reset--%>

<%--form signup--%>
    <form action="signup" method="post" class="form-signup">
        <div>
            <h6 class="text-danger">*Tên đăng nhập chỉ gồm chữ không dấu và số, không phân biệt chữ hoa và chữ thường.</h6>
        </div>
        <input type="text" id="user-name" name="subUserName" class="form-control" placeholder="Tên đầy đủ" required="" autofocus="">
        <div  id="checkExits" class="alert alert-danger mt-2}" style="display: none" role="alert">
            Tài khoản đã tồn tại
        </div>
        <input type="text" id="user-email" name="subAccount" onchange="checkAccount(this)" class="form-control" placeholder="Tên đăng nhập" required autofocus="">

        <input type="password" id="user-pass" name="subPass" class="form-control" placeholder="Mật khẩu" required autofocus="">
        <input type="password" id="user-repeatpass" class="form-control" onchange="checkPass(this)" o placeholder="Nhập lại mật khẩu" required autofocus="">
        <div  id="checkRePass" class="alert alert-danger mt-2}" style="display: none" role="alert">
            Mật khẩu nhập lại phải giống nhau
        </div>
        <button class="btn btn-primary btn-block"  type="submit"><i class="fas fa-user-plus"></i> Đăng ký
        </button>
        <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Trở về</a>
    </form>
<%--form signup--%>
</div>
<input type="text" id="allAccName" class="d-none" value="${allAccName}">



<script src="frontend/javascript/jquery.min.js"></script>
<script src="frontend/javascript/popper.min.js"></script>
<script src="frontend/javascript/bootstrap.min.js"></script>
<script src="frontend/javascript/jsp.js"></script>
<script src="frontend/javascript/login.js"></script>
<script src="frontend/javascript/login100001111111122221.js"></script>
</body>
</html>