<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<html>

<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .jumbotron {
            height: 470px;
            background: url(${pageContext.request.contextPath}/images/001.gif) no-repeat top center;
            background-size: cover;
            text-align: center;
        }

        .jumbotron h1 {
            margin-top: 100px;
            font-size: 70px;
            /* Text-shadow: 10px 20px 15px rgb(224, 198, 198); */
            -webkit-box-reflect:
                below -6px -webkit-gradient(linear,
                    left top, left bottom,
                    from(rgba(0, 0, 0, 0)),
                    to(rgba(255, 255, 255, 0.3)));
        }

        .btn-group-lg>.btn,
        .btn-lg {
            margin-top: 100px;
            border-radius: 0px;
            background-color: rgba(75, 82, 74, 0.315);
            border: 2px solid #fff;
        }

        .btn-group-lg>.btn:hover,
        .btn-lg:hover {
            background-color: #fff;
            color: black;
            border: none;
            border: 2px solid black;
            transition: all 0.3s;
        }

        .text {
            margin: 0 auto;
            margin-top: 100px;
            text-align: center;
            width: 1200px;
        }

        .text h1 {
            font-size: 40px;
            font-weight: 700;
        }

        .text p {
            /* margin-top: 50px; */
            font-size: 25px;
            font-weight: 300;
            color: rgb(92, 89, 89);
        }

        .p1 {
            margin-top: 120px;
        }

        .jian img {
            /* float: left; */
            width: 150px;
            margin-top: 200px;
            margin-left: 400px;
            margin-bottom: 30px;
        }

        .jian span {
            margin-top: 300px;
            font-size: 30px;
        }

        .s1 {
            margin-left: 360px;
        }

        .s2 {
            margin-left: 320px;
        }

        .s3 {
            margin-left: 270px;
        }

        .text1 span {
            margin-top: 50px;

            font-weight: 100;
            display: inline-block;
            width: 370px;
            font-size: 24px;
            text-align: center;
        }

        .text1 .s1 {
            margin-left: 260px;
        }

        .text1 .s2 {
            margin-top: 30px;
            margin-left: 210px;
            border-left-color: black;
        }

        .text1 .s3 {
            margin-left: 190px;
        }

        .kongbai {
            height: 300px;

        }

        .last {
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
    <div class="jumbotron">
        <h1 style="color: blanchedalmond;">Hello, Admin!</h1>
        <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Redact_cat_info"
                role="button">redact_cat_info</a></p>
    </div>
    <div class="text">
        <h1>About Admin</h1>
        <p>Administrators generally refer to the actual individuals or accounts who are responsible for the maintenance
            or
            management of a certain system or software. Some of them are specialized in management and violate the
            principles.</p>
        <h1 class="p1">About Ordinary users</h1>
        <p>It refers to all the objects receiving a certain product or service, not only a certain kind of people, but
            also all the
            objective things enjoying the service.</p>
    </div>
    <div class="jian">
        <img src="${pageContext.request.contextPath}/images/jiangbei.png" alt="">
        <img src="${pageContext.request.contextPath}/images/people.png" alt="">
        <img src="${pageContext.request.contextPath}/images/bang.png" alt="">
        <br>
        <span class="s1">10 years of work</span>
        <span class="s2">Individual approach</span>
        <span class="s3">We grow for the future</span>
        <div class="text1">
            <span class="s1">We proved ourselves like high prolessionals.<br>working with as small companies os with
                honored work to develop unique producis.</span>
            <span class="s2">Every company has its conception and molto.<br>to grow on par with new lechnologies.</span>
            <span class="s3">We Highly skilled professionals wil help your business<br>We offer wide range of
                services</span>
        </div>
    </div>
    <div class="kongbai"></div>
    <p class="last">Copyright © 1998 - 2021 Tencent. All Rights Reserved. 流浪猫公司 版权所有</p>
</body>

</html>