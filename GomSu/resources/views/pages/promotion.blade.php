@extends('master') 
@section('content')
<!-- CSS for store page -->
<link href="source/css/style1.css" rel="stylesheet" />

<div class="clear"> </div>
<div class="wrap">
    <div class="content">
        <div class="content-grids-promotion">
            <div class="section group">
            @foreach($product_promotion as $product) 
                <div id="imgcontain" class="images_1_of_4 products-info">
                     <div class="box-sale" style="margin-left: 120px">
                        <span class="price-sale">SALE
                         {{round(((($product->unit_price)-($product->promotion_price))*100)/($product->unit_price))}}%
                        </span>
                    </div>
                    <div id="imgbox">
                        <img src="source/images/product/{{$product->image}}">
                    </div>
                     <div class="title-product">
                        <a href="{{route('detail', $product->id)}}">{{$product->name}}</a>
                    </div>
                    <div class="sty-sale">    
                        <h3 style="text-decoration: line-through;">{{number_format($product->unit_price)}}đ</h3>                   
                         <h3>{{number_format($product->promotion_price)}}đ</h3>
                    </div>
                    <ul>
                        <li><a class="cart" href="{{route('addtoCart', $product->id)}}"> </a></li>
                        <li><a class="i" href="{{route('detail', $product->id)}}"> </a></li>
                        <li><a class="Compar" href="{{route('addtoCompare', $product->id)}}"></a></li>
                    </ul>
                </div>
            @endforeach
            </div>
            {{-- {!! $product_promotion->render() !!} --}}
        </div>
    </div>
</div>
<div class="clear"> </div>
@endsection