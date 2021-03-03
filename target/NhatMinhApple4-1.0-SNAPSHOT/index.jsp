<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="frontend/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<h1><%= "Hello World!" %><%!
%>
</h1>
<br/>
<a target="_blank" href="frontend/html/index.html">Chuyển sang Html</a>
<%
    java.util.Date date = new java.util.Date();
%>
<h2>
    Now is
    <%=date.toString()%>
</h2>
<nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
    <a class="navbar-brand" href="#">Logo</a>
</nav>

<div class="container" style="border: 1px solid red; ">
    Container
    <h1>        Bootstrap
        <i class="fas fa-cloud"></i>
        <i class="fas fa-coffee"></i>
        <i class="fas fa-car"></i>
        <i class="fas fa-file"></i>
        <i class="fas fa-bars"></i>
    </h1>
    <p>Xây dựng website sử dụng bootstrap!</p>

    <!-- <div class="row">
        <div class="col-sm-3 text-center" style="background-color:gray ;" >Cột 3</div>
        <div class="col-sm-3 text-center" style="background-color:red ;" >Cột 3</div>
        <div class="col-sm-3 text-center" style="background-color:gray ;" >Cột 3</div>
        <div class="col-sm-3 text-center" style="background-color:red ;" >Cột 3</div>
    </div> -->
    <div class="row">
        <div class="col-sm-4 text-center" style="background-color:#808080;">Cột 4</div>
        <div class="col-sm-8 text-center" style="background-color:#ff0000;">Cột 8</div>
    </div>

    <h2 class="text-uppercase text-secondary">Danh sách học viên</h2>
        <table class="table table-striped table-bordered table-hover">
        <caption class="text-uppercase">
            <div style="float: right;">
                <button onclick="showAddTable()" type="button" class="btn btn-primary btn-sm">Thêm mới <i class="fas fa-coffee"></i></button>
                <button type="button" class="btn btn-info btn-sm">Sắp xếp</button>
                <button type="button" class="btn btn-success btn-sm">Cập nhật</button>
            </div>
        </caption>
            <thead>
        <tr>
            <th>STT</th>
            <th>Mã SV</th>
            <th>Họ Tên</th>
            <th>Email</th>
            <th>Số Điện Thoại</th>
            <th>Môn Đăng Ký</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>01</td>
            <td>20171838</td>
            <td>Hoàng Văn Trung</td>
            <td>trung.hoangvan@gmail.com</td>
            <td>0964509281</td>
            <td>Java Fullstack</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        </tbody>

    </table>
</div>
<p>
        <%
        String value="";
        final String url ="jdbc:mysql://localhost:3306/students";
        final String user ="root";
        final String password="123456789";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection= DriverManager.getConnection(url,user,password);
            Statement statement = connection.createStatement();
            String sql = "select DISTINCT   * from student order by id asc;";

            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String address = rs.getString("address");
                String email = rs.getString("email");
                value+= id+"-"+name+"-"+address+"-"+email+"<br>";
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Không tìm được class");;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        out.println(value);
 %>
<div id="addNewStudentForm" style="background-color: white; display: none; border: 3px solid gray; padding-right: 5px;">
    <form id="stdInputForm" method="post" action="JSPFile/testRequest.jsp" class="needs-validation" novalidate>
        <table class="table table-striped table-bordered table-hover">
            <caption>Thông tin học viên</caption>
            <tr>
                <td><label for="name">Số thứ tự</label></td>
                <td><input name="name" id="name" type="text">Nhập tên</td>
            </tr>
        </table>

        <div>
            <button type="submit" class="btn btn-primary btn-sm">Submit</button>
            <input type="button" class="btn btn-secondary btn-sm" value="Đóng" onclick="closeAddTable()">
        </div>
    </form>
</div>
<div>
</div>
    <script src="frontend/javascript/jquery.min.js"></script>
    <script src="frontend/javascript/popper.min.js"></script>
    <script src="frontend/javascript/bootstrap.min.js"></script>
    <script src="frontend/javascript/jsp.js"></script>

<div>


    <!-- Grid row-->
    <div class="row wow fadeIn">
        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img src="frontend/picture/iphone-11-pro-halo-mobile-den.jpg" class="card-img-top" alt="">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image-->

                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="CheckOut.jsp" class="text-secondary">
                        <h5>Iphone</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="text-dark">Iphone 11 Pro
                                <span class="badge badge-pill bg-danger">Mới</span>
                            </a>
                        </strong>
                    </h5>

                    <h4 class="font-weight-bold text-primary">
                        <strong>1?.000.000đ</strong>
                    </h4>

                </div>
                <!--Card content-->

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img src="frontend/picture/ipxsmax600x600.png" class="card-img-top" alt="">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image-->

                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="CheckOut.jsp" class="text-secondary">
                        <h5>Iphone</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="text-dark">IPhone Xs max
                                <span class="badge badge-pill bg-danger">Mới!</span>
                            </a>
                        </strong>
                    </h5>

                    <h4 class="font-weight-bold text-primary">
                        <strong>1?.000.000đ</strong>
                    </h4>

                </div>
                <!--Card content-->

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img src="frontend/picture/iphone-xs-trang-600x600-200x200.jpg" class="card-img-top" alt="">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image-->

                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="CheckOut.jsp" class="text-secondary">
                        <h5>Iphone</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="text-dark">IPhone Xs
                                <span class="badge badge-pill bg-danger">Mới!</span>
                            </a>
                        </strong>
                    </h5>

                    <h4 class="font-weight-bold text-primary">
                        <strong>1?.000.000đ</strong>
                    </h4>

                </div>
                <!--Card content-->

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

        <!--Fourth column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img src="frontend/picture/(600x600)_crop_iphone-x-64gb-gray-xtmobile.jpg" class="card-img-top" alt="">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image-->

                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="CheckOut.jsp" class="text-secondary">
                        <h5>Iphone</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="text-dark">IPhone X
                                <span class="badge badge-pill bg-danger">Mới!</span>
                            </a>
                        </strong>
                    </h5>

                    <h4 class="font-weight-bold text-primary">
                        <strong>1?.000.000đ</strong>
                    </h4>

                </div>
                <!--Card content-->

            </div>
            <!--Card-->

        </div>
        <!--Fourth column-->
    </div>
    <!-- Grid row-->



    <!--Grid row-->
    <div class="row wow fadeIn">

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img src="frontend/picture/ip8plus.jpg" class="card-img-top" alt="">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image-->

                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="CheckOut.jsp" class="text-secondary">
                        <h5>Iphone</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="text-dark">Iphone 8 plus
                                <span class="badge badge-pill bg-danger">Mới!</span>
                            </a>
                        </strong>
                    </h5>

                    <h4 class="font-weight-bold text-primary">
                        <strong>?.000.000đ$</strong>
                    </h4>

                </div>
                <!--Card content-->

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img src="frontend/picture/ip8.jpg" class="card-img-top" alt="">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image-->

                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="CheckOut.jsp" class="text-secondary">
                        <h5>Iphone</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="text-dark">Iphone 8</a>
                        </strong>
                    </h5>

                    <h4 class="font-weight-bold text-primary">
                        <strong>?.000.000đ</strong>
                    </h4>

                </div>
                <!--Card content-->

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img src="frontend/picture/ip7plus.jpg" class="card-img-top" alt="">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image-->

                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="CheckOut.jsp" class="text-secondary">
                        <h5>Iphone</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="text-dark">Iphone 7 Plus
                                <span class="badge badge-pill bg-danger primary-color">Hot!</span>
                            </a>
                        </strong>
                    </h5>

                    <h4 class="font-weight-bold text-primary">
                        <strong>?.000.000</strong>
                    </h4>

                </div>
                <!--Card content-->

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

        <!--Fourth column-->
        <div class="col-lg-3 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img src="frontend/picture/ip7.jpg" class="card-img-top" alt="">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <!--Card image-->

                <!--Card content-->
                <div class="card-body text-center">
                    <!--Category & Title-->
                    <a href="CheckOut.jsp" class="text-secondary">
                        <h5>Iphone</h5>
                    </a>
                    <h5>
                        <strong>
                            <a href="" class="text-dark">Iphone 7</a>
                        </strong>
                    </h5>

                    <h4 class="font-weight-bold text-primary">
                        <strong>?.000.000đ$</strong>
                    </h4>

                </div>
                <!--Card content-->

            </div>
            <!--Card-->

        </div>
        <!--Fourth column-->

    </div>
    <!--Grid row-->

    <!--Pagination-->
    <nav class="d-flex justify-content-center wow fadeIn">
        <ul class="pagination pg-blue">

            <!--Arrow left-->
            <li class="page-item disabled">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>

            <li class="page-item active">
                <a class="page-link" href="#">1
                    <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="page-item">
                <a class="page-link" href="index.jsp    ">2</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">5?</a>
            </li>

            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>
    </nav>
    <!--Pagination-->

</div>

</body>
</html>