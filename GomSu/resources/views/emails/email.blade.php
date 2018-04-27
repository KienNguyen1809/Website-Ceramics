<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	{{-- <link rel="stylesheet" href="../../../public/source/css/style1.css"> --}}
	<link rel="stylesheet" href="../../../public/source/css/style.css">
</head>
<body>
	<h4>Các sản phẩm mới khuyến mãi hot  </h4>
	{{-- <span style="color:red">{{$km}}</span><br> --}}
	 <div class="content-grids-promotion">
            <div class="section group">
            {{-- @foreach($product_promotion as $product)  --}}
                <div id="imgcontain" class="images_1_of_4 products-info">
                    <div id="imgbox">
                      <img src="../../../public/source/images/product/{{$image}}" alt="" style="width: 400px;height: 300px">
                    </div>
                     <div class="title-product">
                        <span style="font-size: 16px;font-weight: bold;">{{$name}}</span>
                    </div>
                     <span class="price-sale">SALE:
                         {{round((((($unit_price)-($promotion_price))*100)/($unit_price)))}}%
                        </span>
                    <div class="sty-sale">    
                       <h3 style="text-decoration: line-through;"> Gía :{{number_format($unit_price)}}đ</h3>                   
                        <h3>Gía chỉ còn: {{number_format($promotion_price)}}đ</h3>
                    </div>
                    
                </div>
           {{--  @endforeach --}}
            </div>
            {{-- {!! $product_promotion->render() !!} --}}
        </div>
	<a href="http://localhost/GomSu/public/detail/14">Xem chi tiết sản phẩm</a><br>
	<a href="http://localhost/GomSu/public/promotion">Chương trình khuyến mãi</a>

    	<h4>Các sảm phẩm bạn {{$mail}}</h4>

</body>
</html>