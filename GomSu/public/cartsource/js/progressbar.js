 $(document).ready(function() {
    var current_fs,next_fs, previous_fs;
   var left,opacity,scale;
   var animating;
   // nút next
   $(".next").click(function() {
       if(animating)
        return false;
        animating=true;
        current_fs=$(this).parent();
        next_fs=$(this).parent().next();
        // hoạt động progressbar
        $("#progressbar li").eq($("fieldset").index(next_fs)).addClass('active');
        // hiển thị trường fieldset
        next_fs.show();
        // ẩn đi fieldset hiện tại cùng với style
        current_fs.animate({opacity:0},{
            step:function(now,mx){
                // giãn current_fs xuống 80%
                scale=1-(1-now)*0.2;
                // alert(now);
                // đưa next_fs từ phải (50%)
                left=(now * 50)+"%";
                // tăng độ mờ của next_fs đến 1 
                opacity=1-now;
                current_fs.css({'transform':'scale('+scale+')'});
                next_fs.css({'left':left,'opacity':opacity});
            },
            duration:800,
            complete:function()
            {
                current_fs.hide();
                animating=false;
            },
            // easing:'easeInOutBack'
        });

   });
// nút trở về 
        $(".previous").click(function() {
           if(animating)
                return false;
            animating=true;

            current_fs=$(this).parent();
            previous_fs=$(this).parent().prev();
            // hoạt động progressbar
            $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass('active');

            // hiển thị trường fieldset
            previous_fs.show();
            // ẩn đi fieldset hiện tại cùng với style
            current_fs.animate({opacity:0},{
                step:function(now,mx){
                    // giãn previous_fs từ 80% đến 100%
                    scale=0.8+(1-now)*0.2;
                    // alert(now);
                    // đưa curent_fs từ phải (50%) đến 0%
                    left=((1-now)*50)+"%";
                    // tăng độ mờ của previous_fs đến 1 
                    opacity=1-now;
                    current_fs.css({'left':left});
                    previous_fs.css({'transform':'scale('+scale+')','opacity':opacity});
                },
                duration:800,
                complete:function()
                {
                    current_fs.hide();
                    animating=false;
                },
                // easing:'easeInOutBack'
            });
    });
    // $(".submit").click(function() {
    //     return false;
    // })
});