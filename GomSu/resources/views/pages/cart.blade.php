@extends('master')
@section('content')
<link href="cartsource/css/style.css" rel="stylesheet" type="text/css" media="all">
<link href="cartsource/css/progressbar.css" rel="stylesheet" type="text/css" media="all">
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="cartsource/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="cartsource/js/progressbar.js"></script>
<div class="container" style="min-height: 1000px;">
	<form action="{{route('postCheckout')}}" method="post" id="msform">
	<input type="hidden" name="_token" value="{{csrf_token()}}">
	<div class="row">
		<ul id="progressbar">
            <li class="active">Đơn hàng</li>
            <li>Thanh Toán</li>
            {{-- <li>Hoàn tất</li> --}}
         </ul>
         <fieldset>
                <div class="col-lg-12">
						<div class="content">	
							@if(Session::has('cart'))
							<div class="content2">
								<div class="line1">
									<h2>Đơn hàng </h2>
								</div>
								@foreach($product_cart as $product)
								<div class="line2">
									<div class="line-info">
										<img src="source/images/product/{{$product['item']['image']}}" alt="shirts" class="item">
									</div>
									<div class="line-info">
										<p>{{$product['item']['name']}}</p>
									</div>
									<div class="line-info">
										@if($product['item']['promotion_price']!=0)
										<p>{{$product['qty']}} &times; {{number_format($product['item']['promotion_price'])}}đ</p>
										@else
										<p>{{$product['qty']}} &times; {{number_format($product['item']['unit_price'])}}đ</p>
										@endif
									</div>
									
									<a class="alert-close1" href="{{route('delfromCart',$product['item']['id'])}}"><img src="cartsource/images/close.png" alt="close"></a>
									<div class="clear"></div>
								</div>
								@endforeach
							</div>
							@else
							<p>Đặt hàng thành công</p>
							@endif
						</div>
					</div>
               
                <a href="{{route('store')}}">
                	<input type="button" class="action-button" value="Xem hàng" />
                </a>
                @if(Session::has('cart'))
                <input type="button" name="next" class="next action-button" value="Next" />
                @endif
         </fieldset>
         {{-- step2 --}}
     <fieldset>
       @if(!Auth::check())
		<div class="cart-order">
			<h2>Thông tin thanh toán</h2>
		</div>
		<div class="col-lg-12">
			<div class="content" style="width: 100%">
				<div class="content2" style="clear: both">
					<div style=" width: 50%; min-height: 300px;float: left;">
						<div class="space"></div>
						<div class="form-block">
							<label for="name">Họ tên<span style="color:red">(*)</span>: </label>
							<input type="text" name="name" id="name" placeholder="Họ tên" required>
						</div>
						<div class="space"></div>
						<div class="form-block">
							<label style="margin-left: -140px">Giới tính :</label>
							<input id="gender" type="radio" class="input-radio" name="gender" value="nam" checked="checked" style="width: 5%"><span style="margin-right: 10px">Nam</span>
							<input id="gender" type="radio" class="input-radio" name="gender" value="nữ" style="width: 5%"><span>Nữ</span>
										
						</div>
						<div class="space"></div>
						<div class="form-block">
							<label for="email">Email<span style="color:red">(*)</span>:</label>
							<input type="email" id="email" name="email" required placeholder="expample@gmail.com">
						</div>
						
						<div class="space"></div>
						<div class="form-block">
							<label for="phone">Điện thoại <span style="color:red">(*)</span>:</label>
							<input type="text" id="phone" name="phone" required>
						</div>
						<div class="space"></div>
						<ul class="payment_methods methods" style="margin-left: 5px;">
							<li class="payment_method_bacs">
								<input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
								<label for="payment_method_bacs">Thanh toán khi nhận hàng </label>						
							</li>

							<li class="payment_method_cheque">
								<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="ATM" data-order_button_text="" style="margin-left: -100px">
								<label for="payment_method_cheque" >Chuyển khoản </label>					
							</li>	
						</ul>
						<p style="margin-left: 5px; margin-top: 10px; font-size: 150%; color: #ff6600;">Total: @if(Session::has('cart')){{number_format($totalPrice)}} @else 0 @endif đ</p>
					</div>
					<div class="colleft">
						<div class="space"></div>
						<div class="form-block">
							<label for="adress">Địa chỉ<span style="color:red">(*)</span>:</label>
							<textarea id="address" name="address" class="text" placeholder="Street Address" required>	
							</textarea>
						</div>
						<div class="form-block">
							<label for="notes">Ghi chú :</label>
							<textarea id="notes" name="notes" class="text"></textarea>
						</div>
					</div>
					<div style="width: 70%; height: 30%;display: inline-block;margin-top: 20px;">
						{{-- <input  type="submit" value="Place Order" name="next" class="action-button"> --}}
					</div>
				</div>
			</div>

		</div>
		@else
		<div class="col-lg-6">
			<div class="content">
				<div class="content2" style="clear: both">
					<div style="float: left; width: 50%; height: 100%">
						<div class="space"></div>
						<div class="form-block">
							<label for="name">Họ tên: </label>
							<input type="text" name="name" value="{{Auth::user()->name}}" required placeholder="Họ tên">
						</div>
						<div class="space"></div>
						<div class="form-block">
							<label>Giới tính :</label>
							<input id="gender" type="radio" class="input-radio" name="gender" value="nam" checked="checked" style="width: 5%"><span style="margin-right: 10px">Nam</span>
							<input id="gender" type="radio" class="input-radio" name="gender" value="nữ" style="width: 5%"><span>Nữ</span>
										
						</div>
						<div class="space"></div>
						<div class="form-block">
							<label for="email">Email :</label>
							<input type="email" id="email" name="email" required value="{{Auth::user()->email}}" placeholder="expample@gmail.com">
						</div>
						
						<div class="space"></div>
						<div class="form-block">
							<label for="phone">Điện thoại :</label>
							<input type="text" id="phone" name="phone" required>
						</div>
						<div class="space"></div>
						<ul class="payment_methods methods" style="margin-left: 5px;">
							<li class="payment_method_bacs">
								<input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
								<label for="payment_method_bacs">Thanh toán khi nhận hàng </label>						
							</li>

							<li class="payment_method_cheque">
								<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="ATM" data-order_button_text="">
								<label for="payment_method_cheque">Chuyển khoản </label>					
							</li>	
						</ul>
						<p style="margin-left: 5px; margin-top: 10px; font-size: 150%; color: #ff6600;">Total: @if(Session::has('cart')){{number_format($totalPrice)}} @else 0 @endif đ</p>
					</div>
					<div class="colleft">
						<div class="space"></div>
						<div class="form-block">
							<label for="adress">Địa chỉ :</label>
							<textarea id="address" name="address" class="text" placeholder="Street Address" required>	
							</textarea>
						</div>
						<div class="form-block">
							<label for="notes">Ghi chú :</label>
							<textarea id="notes" name="notes" class="text"></textarea>
						</div>
					</div>
					<div style="width: 100%; height: 30%; ">
						<input style="margin-top: 15px;" type="submit" value="Place Order">
					</div>
				</div>
			</div>
		</div>
		@endif   
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input  type="submit" value="Place Order"  class="action-button">
        </fieldset>
		{{-- <fieldset>
			bạn đã mua hàng thành công chúng tôi liên hệ cho bạn
		</fieldset> --}}
	</div>
</form>
</div>
@endsection
