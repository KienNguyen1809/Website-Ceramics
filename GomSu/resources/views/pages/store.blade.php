@extends('master') 
@section('content')
<!-- CSS for store page -->
<link href="source/css/style1.css" rel="stylesheet" />

<div class="clear"> </div>
<div class="wrap">
    <div class="content">
        <div class="content-grids">
            <div class="section group">
            @foreach($products as $product) 
               @if($product['promotion_price']!=0)
                <div id="imgcontain" class="images_1_of_4 products-info">
                     <div class="box-sale">
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
                @else
                <div id="imgcontain" class="images_1_of_4 products-info">
                    <div id="imgbox">
                        <img src="source/images/product/{{$product->image}}">
                    </div>
                     <div class="title-product">
                        <a href="{{route('detail', $product->id)}}">{{$product->name}}</a>
                    </div>
                    <div class="sty-sale">                       
                         <h3>{{number_format($product->unit_price)}}đ</h3>
                    </div>
                    <ul>
                        <li><a class="cart" href="{{route('addtoCart', $product->id)}}"> </a></li>
                        <li><a class="i" href="{{route('detail', $product->id)}}"> </a></li>
                        <li><a class="Compar" href="{{route('addtoCompare', $product->id)}}"></a></li>
                    </ul>
                </div>
                @endif
            @endforeach
            </div>
            {!! $products->render() !!}
        </div>
    </div>
    <div class="content-sidebar">
        <h4>Danh mục sản phẩm</h4>
        <ul>
            @foreach($brand as $brandname)
            <li><a href="{{route('brand', $brandname->id)}}">{{$brandname->name}}</a></li>
            @endforeach
        </ul>
        <h4>Giá</h4>
        <ul>
            <li><a href="{{route('price', [0, 500000])}}"> < 5trăm</a></li>
            <li><a href="{{route('price', [500000, 1000000])}}"> 5trăm - 1tr</a></li>
            <li><a href="{{route('price', [10000000, 3000000])}}"> 1tr - 3tr</a></li>
            <li><a href="{{route('price', [3000000, 1000000000])}}"> > 3tr</a></li>
        </ul>
        <h4>Sắp xếp</h4>
        <ul>
            <li><a href="{{route('priceasc')}}">Giá tăng dần</a></li>
            <li><a href="{{route('pricedesc')}}">Giá giảm dần</a></li>
        </ul>
    </div>
</div>
<div class="clear"> </div>
@endsection