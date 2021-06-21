<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signin.css">
</head>

<body>
<div class="body1">

    <!-- //导航栏 -->
    <div class="nav">
        <a href="javascript:;" class="top first1">Home</a>
        <a href="javascript:;" class="top">Project</a>
        <a href="javascript:;" class="top">Teammate</a>
        <a href="javascript:;" class="top">Download</a>
        <a href="javascript:;" class="top">About</a>

        <!-- //logo部分 -->
        <img src="${pageContext.request.contextPath}/images/biglogo2.png" alt="" class="logo">
    </div>

    <!-- //文字内容 -->
    <div class="boxs">
        <div class="text2" style="display:block;">
            <h2>The cat once had a home, but now it's temporarily lost!</h2>
            <p>Please extend your helping hand to help stray cats go home together!</p>
            <p>This project is a public welfare project,</p>
            <p>Only for promotion, not for commercial use.</p>

            <!-- 两个按钮 -->
            <form action="${pageContext.request.contextPath}/sign_up.jsp"><button type="submit" id="zc"
                                                                                  name="signup" class="dwn">Sign-Up</button></form>
            <!-- <div class="dwn"><a href="javascript:;">Download</a> </div> -->
            <div class="sigin1"><a href="${pageContext.request.contextPath}/流浪猫团队的小总结.docx">More</a> </div>
        </div>
        <div class="text2">
            <h2>发士大夫撒旦</h2>
            <p>盛大范德萨分</p>
            <p>You will gain more knowledge and make greater progress</p>
            <p>Through independent thinking543hen asking the seniors.</p>
            <span>--Mr.Xu</span>
        </div>
        <div class="text2 tem">
            <h2>The team consists of three people:</h2>
            <p>Yunfeng Xiang, Junjie luo, Ningru Yang.</p>
            <img src="${pageContext.request.contextPath}/images/luo.jpg" alt="">
            <img src="${pageContext.request.contextPath}/images/luo.jpg" alt="">
            <img src="${pageContext.request.contextPath}/images/luo.jpg" alt="">
            <p>If you have any problems, please contact us. </p>
            <p>Thank you very much!!</p>
        </div>
        <div class="text2">
            <h2>v123123123123</h2>
            <p>盛大范德萨分</p>
            <p>You will gain mo法撒旦e greater progress</p>
            <p>Throu324nsfdgsdfg23g and tg飞洒发asking the seniors.</p>
            <span>--Mr.Xu</span>
        </div>
        <div class="text2 about">
            <img src="${pageContext.request.contextPath}/images/biglogo1.png" alt="" class="photo1">
            <p>小猫曾经也有一个家，只是它现在暂时走丢了而已！</p>
            <p>请伸出您的援助之手，一起助力流浪猫回家！</p>
            <p>本项目是一个公益项目，仅用于宣传推广，不得商用。</p>
            <span>--流浪猫团队启示</span>
        </div>



        <div class="log">
            <span style="color:red;">${sessionScope.Error}</span>
            <h2>LOGIN</h2>
            <br>
            <form action="${pageContext.request.contextPath}/sign_in" method="post">
                <input type="text" placeholder="User Name" id="uname" name="username">
                <input type="password" placeholder="PassWord" id="password" class="password1" name="password">
                <div class="conceal" id='conceal'></div>
                <br>
                <button type="submit" id="zc" name="sub" class="btn">Sign-IN</button>
            </form>
        </div>

        <!-- 顶部时间部分 -->
        <div class="nowday">
            <div class="text text11"></div>
            <div class="text text22"></div>
        </div>

        <!-- //这个是最外边的div -->
    </div>
</div>

</body>
<script>
    //密码隐藏 显示
    var eye = document.querySelector('.conceal');
    var pwd = document.getElementById('password');
    var com = document.querySelector('.Confirm');

    eye.onclick = function () {
        if (pwd.type == 'password') {
            pwd.type = 'text';


            //通过JS来更改背景，   新知识点backgrImage = "url('图片路径')"
            document.querySelector('.conceal').style.backgroundImage = "url('images/zy.png')";
            document.querySelector('.conceal').style.width = '30px';
            document.querySelector('.conceal').style.right = '125px';

        } else {
            pwd.type = 'password';
            document.querySelector('.conceal').style.backgroundImage = "url('images/by.png')";
            document.querySelector('.conceal').style.width = '25px';
            document.querySelector('.conceal').style.right = '130px';
        }
    }

    //时间 函数
    var text1 = document.querySelector('.text11');
    var text2 = document.querySelector('.text22');
    dates();
    setInterval(dates, 1000);
    function dates() {
        var date2 = new Date();
        var year = date2.getFullYear(); //返回当前年份
        var mounth = date2.getMonth() + 1; //返回当前月份+1
        mounth = mounth < 10 ? '0' + mounth : mounth;
        var day = date2.getDate(); //返回当天的天数
        day = day < 10 ? '0' + day : day;
        var weekend = date2.getDay();  //返回周几
        var hours = date2.getHours();  //返回小时
        hours = hours < 10 ? '0' + hours : hours;
        var minutes = date2.getMinutes(); //返回分钟
        minutes = minutes < 10 ? '0' + minutes : minutes;
        var secinds = date2.getSeconds(); //返回秒
        secinds = secinds < 10 ? '0' + secinds : secinds;
        var sum = '';
        var arr = ['周天', '周一', '周二', '周三', '周四', '周五', '周六'];
        text1.innerHTML = year + 'Y - ' + mounth + 'M - ' + day + 'D  ' + ' &nbsp  ' + arr[weekend];
        text2.innerHTML = hours + 'H  -  ' + minutes + 'M  -  ' + secinds + 'S ';
        // sum = alert(year + '年-' + mounth + '月-' + day + '日  ' + arr[weekend]);
        // sum = alert(hours + ' 小时 - ' + minutes + ' 分钟 - ' + secinds + ' 秒   ')
    }

    //NAV变色
    var tops = document.querySelectorAll('.top');
    /* for (var i = 0; i < tops.length; i++) {
        tops[i].onmouseover = function () {
            this.style.background = 'rgb(225, 225, 225)';
            this.style.color = 'rgb(59, 148, 96)';
            // this.style.border = '5px solid white';
        }
        tops[i].onmouseout = function () {
            this.style.background = '';
            this.style.color = '#fff';
        }
    } */
    var content_nav = document.querySelector('.nav');
    var items = document.querySelectorAll('.text2');

    for (var i = 0; i < tops.length; i++) {

        //开始给5个li 设置索引号
        tops[i].setAttribute('index', i);

        tops[i].onclick = function () {
            for (var i = 0; i < tops.length; i++) {
                tops[i].className = '';

            }
            // console.log(lis[i]);
            this.className = 'first1';
            //2.显示内容模块
            var index = this.getAttribute('index');
            for (var i = 0; i < tops.length; i++) {
                items[i].style.display = 'none';

            }
            items[index].style.display = 'block';
        }
    }

</script>

</body>

</html>