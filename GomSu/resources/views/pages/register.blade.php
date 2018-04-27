@extends('master')
@section('content')
	<div class="inner-header">
		<div class="container">
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="{{route('index')}}">Trang chủ</a> / <span>Đăng kí</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	<div class="container">
		<div id="content">
			
			<form action="{{route('register')}}" method="post" class="beta-form-checkout form-horizontal">
			<input type="hidden" name="_token" value="{{csrf_token()}}">
				<div class="row">
					<div class="col-sm-3"></div>
					@if(count($errors)>0)
						<div class="alert alert-danger">
							@foreach($errors->all() as $err)
							{{$err}}
							@endforeach
						</div>
					@endif
					@if(Session::has('thanhcong'))
						<div class="alert alert-success">{{Session::get('thanhcong')}}</div>
					@endif
					<div class="col-sm-7">
						<fieldset style="border:1px solid black; border-radius: 5px; margin-right: 20%; padding-left: 20px; padding-bottom: 10px; box-shadow: 10px 10px 5px #888888;padding-right: 10px;">
							<legend style="font-size: 150%">Đăng ký</legend>
						<div class="space20">&nbsp;</div>

						{{-- <div class="col1">
							<p>Email address :</p>
							<p>Fullname :</p>
							<p>Password :</p>
							<p>Retype Password :</p>
						</div>
						<div class="col2">
							<input type="email" name="email" class="form-control" required>
							<br/>
							<input type="text" name="fullname" class="form-control" required><br/>
	                        <input type="password" name="password" class="form-control" required><br/>
	                        <input type="password" class="form-control" name="re_password" placeholder="Nhập lại mật khẩu" />
						</div>
						<div class="form-block">
							<button type="submit" class="btn btn-primary" id="btndangky">Đăng ký</button>
						</div> --}}
						<div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">Email address</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" id="inputEmail3" placeholder="Email address" name="email" required>
						    </div>
						 </div>
					  	<div class="form-group">
					    	<label for="inputEmail3" class="col-sm-2 control-label">Full Name</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="inputEmail3" placeholder="Fullname" name="fullname" required>
						    </div>
					  	</div>
						 <div class="form-group">
						    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
						    <div class="col-sm-10">
						      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password" required>
						    </div>
						 </div>
						  <div class="form-group">
						    <label for="inputPassword3" class="col-sm-2 control-label">Reset Password</label>
						    <div class="col-sm-10">
						      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="re_password">
						    </div>
						 </div>
					  	<div class="form-group">
						    <div class="col-sm-offset-4 col-sm-10">
						      <button type="submit" class="btn btn-primary" id="btndangky">Đăng ký</button>
						    </div>
					  	</div>
						</fieldset>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</form>
		</div> <!-- #content -->
	</div> <!-- .container -->
	<style type="text/css">
		.col1{
			height: 90%;
			width: 21%;
			float: left;
		}
		.col2{
			height: 90%;
			width: 79%;
			float: right;
		}
		.col2 input{
			margin-top: 5px;
			border-radius: 5px;
		}
		.col1 p{
			margin-top: 7px;
		}
		#btndangky{
			border-radius: 5px;
			margin-top: 10px;
			height: 30px;
			width: 90px;
		}
		#btndangky:hover{
			background-color: #004466;
			color: #ff9900;
		}
	</style>
@endsection