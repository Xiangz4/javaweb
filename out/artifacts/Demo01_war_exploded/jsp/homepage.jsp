<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<html>

<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .navbar-brand img {
            width: 30px;
            margin-top: -6px;
        }

        .thumbnail img {
            width: 350px;
            height: 230px;
        }

        .col-sm-6 .thumbnail {
            width: 500px;
            height: 400px;
            text-align: center;
            margin-left: 50px;
        }

        .navbar .collapse .navbar-form .btn-default:hover {
            background-color: rgb(65, 68, 202) !important;
            color: rgb(255, 255, 255);
        }
    </style>
</head>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <!-- <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                  <a class="navbar-brand" href="#">
                    <img src="../images/biglogo3.png">
                </a> -->
        </div> -->
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
            style="position: fixed;z-index: 2; background-color: rgb(241, 238, 238); width: 100%;margin: 0;padding: 0;top: 0;">
            <ul class="nav navbar-nav">
                <li><a class="navbar-brand" href="#">
                        <img src="../images/biglogo3.png">
                    </a></li>
                <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Another</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false">Varieties <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Orange cat</a></li>
                        <li><a href="#">Persian cat</a></li>
                        <li><a href="#">Dragen-Li
                            </a></li>
                        <li><a href="#">Shorthair</a></li>
                        <li><a href="#">Longhair</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Other varieties</a></li>

                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="../sign_in.html">sign out</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false" style="color: #000;">Personal settings<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">information</a></li>
                        <li><a href="#">Adoption</a></li>
                        <li><a href="#">Snote</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="../sign_in.html">sign out</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="row">
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat1.jfif">
                <div class="caption">
                    <h3>橘猫</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat2.jfif" alt="...">
                <div class="caption">
                    <h3>橘猫1</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail?breed=橘猫1" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat3.jpg" alt="...">
                <div class="caption">
                    <h3>橘猫2</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail?breed=橘猫2" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat6.jfif" alt="...">
                <div class="caption">
                    <h3>橘猫3</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail?breed=橘猫3" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat5.jpg" alt="...">
                <div class="caption">
                    <h3>橘猫4</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail?breed=橘猫4" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat4.jfif" alt="...">
                <div class="caption">
                    <h3>橘猫5</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail?breed=橘猫5" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat1.jfif">
                <div class="caption">
                    <h3>橘猫6</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail?breed=橘猫6" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat2.jfif" alt="...">
                <div class="caption">
                    <h3>橘猫7</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail?breed=橘猫7" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="../images/cat3.jpg" alt="...">
                <div class="caption">
                    <h3>橘猫8</h3>
                    <p>地点：一饭门口</p>
                    <p><a href="${pageContex.request.contextPath}/Cat_detail?breed=橘猫8" class="btn btn-primary"
                            role="button">more</a></p>
                </div>
            </div>
        </div>
    </div>
</body>

</html>