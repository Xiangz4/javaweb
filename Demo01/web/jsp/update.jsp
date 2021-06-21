<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h1>
                <small>修改猫猫信息</small>
            </h1>
        </div>
    </div>
    <%--required属性 添加了这个属性之后表单里面必须要添加了属性之后才允许提交--%>
    <form action="${pageContext.request.contextPath}/update" method="post">
        <div class="form-group">
            <label for="breed">品种名称：</label>
            <input type="text"  name="cat_breed" class="form-control" id="breed" required>
        </div>
        <div class="form-group">
            <label for="personality">帮助者：</label>
            <input type="text"  name="cat_personality" class="form-control" id="personality" required>
        </div>
        <div class="form-group">
            <label for="cat_resident">常住地：</label>
            <input type="text" class="form-control" id="cat_resident" name="resident" required>
        </div>
        <div class="form-group">
            <label for="s">提交</label>
            <input type="submit"  name="detail" class="form-control" id="s" value="修改">
        </div>
    </form>
</div>
</body>
</html>
