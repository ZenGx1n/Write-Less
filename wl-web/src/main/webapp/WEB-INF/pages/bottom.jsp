<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="footer">
    Copyright © 2019-2020 Write Less. write less, know more
</div>
<div class="backTop">
    <div class="dialogue">
        <img src="../../images/dialogue_box2.png" alt="" id="dialogue"/>
    </div>
    <div class="toTop" id="toTop">
        <img src="../../images/335.png" id="toTopImg"/>
    </div>
</div>
<div class="infoHidden media mt-3">
    <img src="../../images/male.jpg" style="width: 120px; height: 120px; border-radius: 50%; cursor: pointer"
         id="headImg"/>
    <div class="media-body">
        <nav class="navbar navbar-expand-sm">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="btn btn-lg iconColor nav-link" href="#"><i
                            class="fa fa-envelope"></i>&nbsp;&nbsp;消息</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-lg iconColor nav-link" href="#"><i class="fa fa-trash"></i>&nbsp;&nbsp;注销</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-lg iconColor nav-link" href="#"><i class="fa fa-power-off"></i>&nbsp;&nbsp;退出</a>
                </li>
            </ul>
        </nav>
    </div>
</div>
<script type="text/javascript" src="/js/scrollToTop.js"></script>
<script type="text/javascript" src="/js/base.js"></script>
<script>
    $(function () {
        var pos = document.body.scrollHeight + 100 + "px";
        $('#footer').css({
            top: pos
        });

        var topElement = document.getElementById("toTop");
        var toTop = new ScrollToTop(topElement, {
            showWhen: 200,
            speed: 50
        })

        $(document).scroll(function () {
            if ($(document).scrollTop() > '320') {

                $('.infoHidden').css({
                   top: -20
                });
            } else if ($(document).scrollTop() <= '320') {
                $('.infoHidden').offset({
                    top: 300
                });
            }
        });

        //鼠标移动到头像触发事件
        $('.infoImg').mouseover(function () {
            $('#headImg').show().fadeIn();
            $('.infoHidden').show().fadeIn('slow');
        });
        $('.infoHidden').mouseleave(function () {
            $('.infoHidden').show().fadeOut('slow');
        });
    });
</script>
</body>
</html>