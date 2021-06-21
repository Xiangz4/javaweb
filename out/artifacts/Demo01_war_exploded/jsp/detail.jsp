<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<html>

<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    section {
        position: relative;
        width: 100%;
        height: 300px;
    }

    .bigbody .cat_info {
        position: absolute;
        width: 300px;
        margin-left: 500px;
        margin-top: 60px;
    }

    .catimg {
        width: 250px;
        margin-top: 60px;

    }

    * {
        padding: 0;
        margin: 0;
    }

    body {
        background: url(../images/zcbgc.png) top center no-repeat;
        background-size: cover;
        display: flex;
    }

    li {
        list-style: none;
    }

    .bigbody {
        position: relative;
        margin: 100px 200px;
        width: 1300px;
        height: 600px;
        background-color: #fff;
        box-shadow: 0px 15px 35px 0 rgba(94, 25, 51, 0.6);
        box-sizing: border-box;
        background-color: rgba(96, 62, 177, 0.7);
    }

    input,
    button {
        background-color: transparent;
        border: none;
        border-bottom: 1px solid #fff;
        outline: none;
    }

    header {
        text-align: center;
        margin-left: 120px;
        width: 250px;
        height: 50px;
        font-size: 20px;
        /* background: #999999; */
        color: rgb(218, 231, 231);
        text-align: center;
        line-height: 50px;
        font-weight: 700;
    }

    section {
        text-align: right;
        margin-left: 80px;
        width: 300px;
        margin-top: 20px;
        margin-bottom: 5px;
        color: #999999
    }

    section input {
        color: rgb(255, 255, 255);
        margin-bottom: 10px;
    }

    section p {
        width: 250px;
    }

    section span {
        font-weight: bold;
    }

    input {
        width: 159px;

    }

    footer input {
        color: white;
        width: 100px;
        height: 30px;
        background-color: rgb(79, 72, 199);
        border: none;
        /* border: 1px solid rgb(240, 233, 235); */
        border-radius: 5px;
        margin-top: 5px;
        margin-left: 180px;
        color: rgb(247, 245, 246);
        text-transform: uppercase;
    }

    label {
        width: 80px;
        /* height: 30px; */
        /* display: inline-block; */
        text-align: center;
        font-size: 18px;

        color: rgb(206, 210, 218);
    }

    .submit:hover {
        background: rgba(79, 56, 163);
        border: 1px solid rgb(61, 55, 182);
        border-radius: 5px;
        color: #fff;
        box-shadow: 0 0 5px rgb(90, 86, 165),
            0 0 25px rgb(90, 86, 165),
            0 0 50px rgb(90, 86, 165),
            0 0 100px rgb(90, 86, 165);
    }

    .biglogo {
        position: absolute;
        top: 70px;
        left: 53%;
        width: 350px;
        height: 150px;
        background: url(${pageContext.request.contextPath}images/biglogo1.png) no-repeat top center;
        background-size: cover;
    }

    .text1 {
        position: absolute;
        top: 260px;
        left: 55%;
        width: 350px;
        height: 150px;
        font-size: 14px;
        color: rgb(243, 243, 243);
    }

    h3 {
        font-size: 40px;
        margin-top: 40px;
    }
</style>

<body>
    <div class="bigbody">
        <header>
            <h3>Information</h3>
            <img src="${pageContext.request.contextPath}/images/cat5.jpg" class="catimg">
        </header>
        <section>
            <div class="cat_info">
                <div class="panel panel-default">
                    <div class="panel-heading">品种</div>
                    <div class="panel-body">
                        ${sessionScope.breed}
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">常住地</div>
                    <div class="panel-body">
                        ${sessionScope.resident}
                    </div>
                </div>

            </div>
        </section>
    </div>
</body>

</html>