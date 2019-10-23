<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="footer">
    <span>Copyright © 2019,  Write Less</span>
    <br><br>
    <p style="color: #8590A6">Designed and built with Spring by
        <a href="https://github.com/ZenGx1n" style="color: white">@曾鑫</a> ,
        <a href="javascript:void(0)" style="color: white">@申翰钧</a> ,
        <a href="javascript:void(0)" style="color: white">@林胜浩</a> ,
        <a href="javascript:void(0)" style="color: white">@莫剑深</a> .
        </p>
    <p style="color: #8590A6">write less, know more.</p>
</div>
<div class="backTop">
    <div class="dialogue">
        <img src="../../images/dialogue_box2.png" alt="" id="dialogue"/>
    </div>
    <div class="toTop" id="toTop">
        <img src="../../images/335.png" id="toTopImg"/>
    </div>
</div>
<div class="sideNav">
    <ul class="list-group" id="sideNavUl">
        <li class="list-group-item active" onclick="javascript:window.location.href='/message/new_list'">最新发布</li>
        <li class="list-group-item" onclick="javascript:window.location.href='/message/agree_message'">最多点赞</li>
        <li class="list-group-item">最多收藏</li>
    </ul>
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
                    <a class="btn btn-lg iconColor nav-link" href="/logout"><i class="fa fa-power-off"></i>&nbsp;&nbsp;退出</a>
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
                    position: 'fixed',
                    top: -20
                });

                $('.sideNav').offset({
                    top: $(document).scrollTop() + 100
                });
            } else if ($(document).scrollTop() <= '320') {
                $('.infoHidden').css({
                    position: 'absolute',
                    top: 300
                });

                $('.sideNav').offset({
                    top: 450
                });
            }
        });

        //鼠标移动到头像触发事件
        $('#headImg1').mouseover(function () {
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