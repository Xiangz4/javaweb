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
                <small>新增猫猫信息</small>
            </h1>
        </div>
    </div>
    <%--required属性 添加了这个属性之后表单里面必须要添加了属性之后才允许提交--%>
    <form action="${pageContext.request.contextPath}/Add_cat" method="post">
        <div class="form-group">
            <label for="cat_breed">猫品种：</label>
            <input type="text"  name="breed" class="form-control" id="cat_breed" required>
        </div>
        <div class="form-group">
            <label for="cat_personality">帮助者：</label>
            <input type="text"  name="personality" class="form-control" id="cat_personality" required>
        </div>
        <div class="form-group">
            <label for="cat_resident">常住地：</label>
            <input type="text" name="resident" class="form-control" id="cat_resident" required>
        </div>
        <div class="form-group">
            <label for="breed_ID">品种ID：</label>
            <input type="text" name="breedID" class="form-control" id="breed_ID" required>
        </div>
        <div class="form-group">
            <label for="s">提交：</label>
            <input type="submit" class="form-control" id="s" value="添加">
        </div>
    </form>
</div>


</body>
</html>
