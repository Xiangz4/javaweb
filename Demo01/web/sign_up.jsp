<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Registration page</title>
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
        }

        body {
            background: url(images/zcbgc.png) top center no-repeat;
            background-size: cover;
            display: flex;
        }

        li {
            list-style: none;
        }

        .bigbody {
            position: relative;
            margin-top: 100px;
            margin-left: 17%;
            width: 900px;
            height: 400px;
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

        ::-webkit-input-placeholder {
            color: rgb(156, 157, 209);
            font-size: 14px;
        }

        header {

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
            background: url(images/biglogo1.png) no-repeat top center;
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
    </style>
</head>

<body>
<form action="${pageContext.request.contextPath}/sign_up" autocomplete="on">
    <div class="bigbody">
        <div class="biglogo"></div>
        <div class="text1">————Every time you help, you save a life. Please boldly lend a helping hand to protect
            stray
            cats.</div>
        <header>
            <h3>User registration</h3>
        </header>
        <section>
            <label for="name">User name：
                <input type="text" id="name" autofocus="autofocus" placeholder="请输入用户名" required="required"
                       pattern="[a-zA-Z]\w{5,14}" title="请输入6-15位，且首位是字母的用户名	" /></label><br />
            <label for="pass">Password：
                <input type="password" id="pass" autocomplete="off" placeholder="请输入密码" required="required"
                       pattern="\w{6,20}" title="请输入6-20位的密码" /></label><br />
            <label for="email">Email：
                <input type="email" id="email" placeholder="请输入email" required="required" /></label><br />
<%--            <label for="tel">Tel：--%>
<%--                <input type="text" id="tel" placeholder="请输入手机号" required="required"--%>
<%--                       pattern="1[3|ff4|5|8]\d{9}" /></label><br />--%>
<%--            <label for="qq">QQ：--%>
<%--                <input type="number" id="qq" min="10000" max="99999999999" placeholder="请输入QQ号" /></label><br />--%>
<%--            <label for="web">Introduce：--%>
<%--                <input type="url" id="web" placeholder="请输入个性签名" /></label><br />--%>
            <label for="bir">Birth：
                <input type="date" id="bir"></label><br />
            <label for="pic">Photo upload：
                <input type="file" id="pic" multiple="multiple"></label><br />
        </section>
        <footer>
            <input type="submit" class="submit" value="submit">
        </footer>
    </div>
</form>
</body>

</html>