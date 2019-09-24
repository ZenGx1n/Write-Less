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

        //鼠标移动到头像触发事件
        $('.infoImg').mouseover(function () {
            $('.infoHidden').css({
                display: 'block'
            })
        });
        // $('.infoImg').mouseout(function () {
        //     $('#headImg').css({
        //         width: 100,
        //         height: 100
        //     })
        // });
    });
</script>
</body>
</html>