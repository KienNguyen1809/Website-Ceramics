@extends('master')
@section('content')
<!--start-image-slider---->
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 1
        $("#slider1").responsiveSlides({
            maxwidth: 1600,
            speed: 600
    });
});
</script>

<div class="wrap">
    <div class="image-slider" style="margin-top: 5px;">
        <!-- Slideshow 1 -->
        <ul class="rslides" id="slider1">
            @foreach($slide as $slide)
            <li><a href="{{$slide->link}}">
                    <img src="source/images/slide/{{$slide->image}}" alt=""></a>
            </li>
            @endforeach
        </ul>
        <!-- Slideshow 2 -->
    </div>
    <!--End-image-slider---->
    <div class="box-icon">
        <div class="col-sm-3 box-icon-cart" style="padding-right: 0px;color:#d0e1e6">
            <div class="box-image">
                <img src="source/images/giaohang1.jpg" alt="">
            </div>
            <div class="box-word">
                <span style="color:#923507">Giao hàng tận nơi<br>
                 trên toàn quốc</span>
            </div>
        </div>
        <div class="col-sm-3 box-icon-cart" style="color:#e6d1a1">
            <div class="box-image">
                 <img src="source/images/Proship.VN_1425443537.3931.png" alt="">
            </div>
            <div class="box-word">
                <span style="color:#062956">Cam kết đổi trả<br>
                 trong vòng 48h</span>
            </div>
        </div>
        <div class="col-sm-3 box-icon-cart" style="color:#e0eaa9">
            <div class="box-image">
                 <img src="source/images/Proship.VN_1425460777.9849.png" alt="">
            </div>
            <div class="box-word">
              <span style="color:#880f08">Phục vụ từ <br>
                thứ 2 - thứ 7</span>  
            </div>
        </div>
    </div>
</div>
<div class="clear"> </div>
<div class="wrap">
    <div class="content">
        {{-- câu lệnh --}}
        <section class="content-main">
            <div class="content-grids">
            <h4>Sản phẩm mới <span class="view-add"><a href="{{route('store')}}">Xem Thêm...</a></span></h4>
            <div class="section group">
            @foreach($products as $product)   
                <div id="imgcontain" class="grid_1_of_4 images_1_of_4 products-info">
                    <div id="imgbox"><img src="source/images/product/{{$product->image}}" ></div>
                    <a href="{{route('detail', $product->id)}}">{{$product->name}}</a>
                    <h3>{{number_format($product->unit_price)}}đ</h3>
                    <ul>
                        <li><a class="cart" href="{{route('addtoCart', $product->id)}}"> </a></li>
                        <li><a class="i" href="{{route('detail', $product->id)}}"> </a></li>
                    </ul>
                </div>
            @endforeach
            </div>
        </div>
         <div class="clear"></div>
        {{-- sản phẩm khuyến mại --}}
        <div class="content-grids">
            <h4>Sản khuyến mãi <span class="view-add"><a href="{{route('promotion')}}">Xem Thêm...</a></span></h4>
            <div class="section group">
            @foreach($product_sale as $product_sale)   
                <div id="imgcontain" class="grid_1_of_4 images_1_of_4 products-info">
                   
                    <div id="imgbox">
                         <div class="box-sale">
                            <span class="price-sale">SALE 
                                {{round(((($product_sale->unit_price)-($product_sale->promotion_price))*100)/($product_sale->unit_price))}}%
                            </span>
                        </div>
                        <img src="source/images/product/{{$product_sale->image}}" >
                    </div>
                        <div class="title-product">
                            <a href="{{route('detail', $product_sale->id)}}">{{$product_sale->name}}</a>
                        </div>
                    <div class="sty-sale">
                        <h3 style="text-decoration: line-through;">{{number_format($product_sale->unit_price)}}đ</h3>
                        <h3>{{number_format($product_sale->promotion_price)}}đ</h3>
                    </div>
                    <ul>
                        <li><a class="cart" href="{{route('addtoCart', $product_sale->id)}}"> </a></li>
                        <li><a class="i" href="{{route('detail', $product_sale->id)}}"> </a></li>
                    </ul>
                </div>
            @endforeach
            </div>
        </div>
        </section>
        <div class="modal-center ">
            <div class="modal-header">
                <h4 class="modal-title">
                     <button type="button" class="close" >&times;</button>
                    Đăng ký email
                </h4>
                <span style="color:#151414">Nhận ngay các chương trình khuyến mãi,ưu đãi chúng tôi</span>
            </div>
            <form action="{{'index'}}" method="post" role="form">
                 <input type="hidden" name="_token" value="{!! csrf_token()!!}">
                <input type="email" class="required form-control" name="mail" style="width: 290px;display: inline-block;margin-top: 10px" >
                <button class="btn btn-success" type="submit">Đăng Ký</button>
            </form>
        </div>
        {{-- end mail --}}
        <script>
            $(document).ready(function() {
              
                $('.modal-center').hide();
                $('.modal-center').fadeIn(1000);
                
                $('.close').click(function(e){
                    $('.modal-center').fadeOut(700);
                    $('#overlay').removeClass('blur-in');
                    $('#overlay').addClass('blur-out');
                    e.stopPropagation();
                });
        });
    </script>
    </div>
    <div class="clear"></div>
        <div class="content-sidebar danhmuc ">
            <h4>Danh mục sản phẩm</h4>
            <ul>
                @foreach($brand as $brandname)
                <li><a href="{{route('brand', $brandname->id)}}">{{$brandname->name}}</a></li>
                @endforeach
            </ul>
        </div>
    <div class="clear"> </div>
</div>
@endsection