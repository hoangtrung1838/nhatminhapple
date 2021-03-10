<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 3/8/2021
  Time: 7:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%String[][] test = new String[2][2];%>
<% test[0][0]="trung";%>
<% test[0][1]="rất";%>
<% test[1][0]="đẹp";%>
<% test[1][1]="trai";%>
<%request.setAttribute("s",test);%>
<c:forEach var="o" items="${s}">
    <c:forEach var="h" items="${o}">
        <p>${h}</p>
    </c:forEach>
</c:forEach>
</body>
</html>
