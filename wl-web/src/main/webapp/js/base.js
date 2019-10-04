$(document).ready(function () {

    //回到顶部的动画实现
    $(window).bind('scroll', function () {
        //算出鼠标移动到顶部的高度。
        var scrollt = document.documentElement.scrollTop + document.body.scrollTop;
        if (scrollt >= 300) {
            $('#dialogue').attr("src", "../../images/dialogue_box2.png");
            //鼠标移进33娘
            $('#toTopImg').mouseover(function () {
                $('#toTopImg').attr('src', '../../images/331.png');
                $('.dialogue').show().fadeIn('slow');
            });
            //鼠标移出33娘
            $('#toTopImg').mouseout(function () {
                $('#toTopImg').attr('src', '../../images/335.png');
                $('.dialogue').show().fadeOut('slow');
            });
            //鼠标点击33娘
            $('#toTopImg').click(function () {
                $('#toTopImg').attr('src', '../../images/336.png');
                $('.dialogue').show().fadeOut('fast');
            })

        } else if (scrollt < 300) {
            $('#dialogue').attr("src", "../../images/white.png");
        }
    });

    //.info随着滚轮移动到一定位置
    $(document).scroll(function () {
        if ($(document).scrollTop() > '320') {
            $('.info').offset({
                top: $(document).scrollTop() + 10
            });

            $('.addButton').offset({
                top: $(document).scrollTop() + 10
            });

            $('.info').addClass('shadow1');

            $('.info').removeClass('shadow2');
        } else if ($(document).scrollTop() <= '320') {
            $('.info').offset({
                top: 330
            });

            $('.addButton').offset({
                top: 350
            });

            $('.info').addClass('shadow2');

            $('.info').removeClass('shadow1');
        }
    });


    //返回顶部实现
// ie7 下传入元素 ie8 及以上可以传入选择符字符串


});

