<%@ page import="com.xxx.pojo.Cat_info" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--Bootstrap--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h1>
                <small>流浪猫列表————全部流浪猫信息</small>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/jsp/add.jsp">新增流浪猫信息</a>
        </div>
        <div>
            <form action="${pageContext.request.contextPath}/querycat" method="post">
                <span style="color: red">${error} ${sessionScope.success}</span>
                <input type="text" name="cat_breed" placeholder="请输入要查询猫猫的品种">
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>

    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <table class="table table-hover table-striped">
            <thread>
                <tr>
                    <th>猫猫种类</th>
                    <th>帮助者</th>
                    <th>常住地</th>
                    <th>品种ID</th>
                    <th>操作</th>
                </tr>
            </thread>
            <tbody>
            <c:forEach var="list" items="${sessionScope.list}">
                <tr>
                    <td>${list.breed}</td>
                    <td>${list.personality}</td>
                    <td>${list.resident}</td>
                    <td>${list.breed_id}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/update_cat?breeid=${list.breed_id}">修改</a>
                        &nbsp;| &nbsp;
                        <a href="${pageContext.request.contextPath}/delete_cat?breeid=${list.breed_id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>
</div>

</body>
</html>
