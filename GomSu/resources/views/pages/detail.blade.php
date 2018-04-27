@extends('master')
@section('content')
<div class="clear"> </div>
<div class="wrap">
    <div class="content">
        <div class="content-grids">
            <div class="details-page">
                <div class="back-links">
                    <ul>
                        <li><a href="{{route('index')}}">Trang chủ</a><img src="source/images/arrow.png" alt=""></li>
                        <li><a href="{{route('store')}}">Sản phẩm</a><img src="source/images/arrow.png" alt=""></li>
                        <li><a href="{{route('detail', $product->id)}}">Chi tiết sản phẩm</a><img src="source/images/arrow.png" alt=""></li>
                    </ul>
                </div>
            </div>
            <div class="detalis-image col-md-4">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="source/images/product/{{$product->image}}">
                            <div class="thumb-image"> <img src="source/images/product/{{$product->image}}" data-imagezoom="true" class="img-responsive" alt="" /> </div>
                        </li>
                        <li data-thumb="source/images/product/{{$product->image}}">
                            <div class="thumb-image"> <img src="source/images/product/{{$product->image}}" data-imagezoom="true" class="img-responsive" alt="" /> </div>
                        </li>
                        <li data-thumb="source/images/product/{{$product->image}}">
                            <div class="thumb-image"> <img src="source/images/product/{{$product->image}}" data-imagezoom="true" class="img-responsive" alt="" /> </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="detalis-image-details">
                <div class="brand-value">
                    <h3>{{$product->name}}</h3>
                    <div class="left-value-details">
                        <ul>
                            <li>Giá:</li>
                            <li>
                                <h5>{{number_format($product->unit_price)}}đ</h5>
                            </li> </br>
                            @if($product['promotion_price']!=0)
                              <li>Giá chỉ còn:</li>             
                               <li>
                                 <h5>{{number_format($product->promotion_price)}}đ</h5>
                                @endif
                            </li>
                            <br />
                        </ul>
                    </div>
                    <div class="right-value-details">
                        <p>
                            Số lượng: {{$product->unit}} 
                        </p>
                        <br />
                    </div>
                    <div class="clear"> </div>
                </div>
                <div style="clear: both; float: left;min-height: 100px; width: 100%; padding-left: 10px">
                    <div class="brand-history" style="float: left;">
                        <h3>Mô tả :</h3>
                        <p>
                            {{$product->description}}
                        </p>
                        <p>
                            
                        </p>
                        <a href="{{route('addtoCart', $product->id)}}">Thêm vào giỏ hàng</a>
                    </div>
                </div>
                <div class="clear"> </div>
                @if(Auth::check())
                <div class="comment">
                    <h4>Bình luận về sản phẩm</h4>
                    @if(session('thongbao'))
                        <div class="alert alert-success">
                            {{session('thongbao')}}
                        </div>
                    @endif
                    <form action="comment/{{$product->id}}" method="post" role="form">
                        <div class="form-group">
                            <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <textarea name="comment" class="form-control" rows="4" placeholder="Chúng tôi xin cảm ơn ý kiến đóng góp của khách hàng"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Gửi</button>
                    </form>
                </div>
                @else
                    <h5 style="color:red">Bạn phải đăng nhập mới được bình luận</h5>
                @endif
                @foreach($product->comment as $cm)
                <div class="detail-comment">
                    <div class="image-comment">
                        <img src="source/images/user.png" alt="">
                    </div>
                    <div class="content-comment">
                        <div class="time">
                            {{$cm->user->name}}
                           <span style="font-size: 14px;">{{$cm->created_at}}</span>       
                        </div>
                        <div class="content-main">
                             {{$cm->comment}}

                        </div>
                    </div>
                   
                </div>
                @endforeach
                <div class="clear"></div>
                <div class="share">
                    <ul>
                        <li> <a href="#"><img src="source/images/facebook.png" title="facebook" /> Facebook</a></li>
                        <li> <a href="#"><img src="source/images/twitter.png" title="Twiiter" />Twiiter</a></li>
                        <li> <a href="#"><img src="source/images/rss.png" title="Rss" />Rss</a></li>
                    </ul>
                </div>
                <div class="clear"> </div>
            </div>
            <div class="clear"> </div>
            <div class="menu_container">
                <p class="menu_head">Chi tiết sản phẩm<span class="plusminus">+</span></p>
                <div class="menu_body" style="display: none;">
                    <p>
                         {{$product->description}}
                    </p>
                    
                </div>
                <p class="menu_head">Về sản phẩm<span class="plusminus">+</span></p>
                <div class="menu_body" style="display: none;">
                    <p>Sản phẩm đang <span style="color: red">HOT</span> trên thị trường</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clear"> </div>
</div>

<!-- Script section for picture slider-->
<script src="source/js/jqzoom.pack.1.0.1.js" type="text/javascript"></script>
<link rel="stylesheet" href="source/css/flexslider.css" type="text/css" media="screen" />
<script src="source/js/imagezoom.js"></script>
<!-- FlexSlider -->
<script defer src="source/js/jquery.flexslider.js"></script>
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
    $('.flexslider').flexslider({
        animation: "slide",
        controlNav: "thumbnails"
    });
});
</script>
<script>
$(document).ready(function() {
    $(".menu_body").hide();
    //toggle the componenet with class menu_body
    $(".menu_head").click(function() {
        $(this).next(".menu_body").slideToggle(600);
        var plusmin;
        plusmin = $(this).children(".plusminus").text();

        if (plusmin == '+')
            $(this).children(".plusminus").text('-');
        else
            $(this).children(".plusminus").text('+');
    });
});
</script>
<!-- Script section for picture slider-->
@endsection