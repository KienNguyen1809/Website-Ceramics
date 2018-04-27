<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Thông tin đơn hàng</title>
	
	<style>
		table {
		    font-family: arial, sans-serif;
		    border-collapse: collapse;
		    width: 100%;
		}

		td, th {
		    border: 1px solid #dddddd;
		    text-align: left;
		    padding: 8px;
		}
	</style>
</head>
<body>
	<div class="title" style="margin-left:300px;font-size: 20px;color:#d66e12">Thông tin đơn hàng</div>
	<table>
		
		<tr>
			<td>Họ tên:</td>
			<td>{{$name}}</td>
		</tr>
		<tr>
			<td>Địa chỉ email:</td>
			<td>{{$email}}</td>
		</tr>
		<tr>
			<td>Địa chỉ giao hàng:</td>
			<td>{{$address}}</td>
		</tr>
		<tr>
			<td>Số điện thoại:</td>
			<td>{{$phone_number}}</td>
		</tr>
		<tr>
			<td>Sản phẩm:</td>
			<td>{{$id_product}}</td>
		</tr>
		<tr>
			<td>Số lượng:</td>
			<td>{{$quantity}}</td>
		</tr>
		<tr>
			<td>Giá:</td>
			<td>{{$unit_price}}</td>
		</tr>
		<tr>
			<td>Phương thức thanh tóan:</td>
			<td>{{$payment}}</td>
		</tr>
		<tr>
			<td>Tổng tiền:</td>
			<td>{{$total}}</td>
		</tr>
	</table>
	
<h4 style="color:#d14836">Chương trình khuyến mãi áp dụng từ ngày 28/2 đến hết 2/3 cho những khách hàng mua hóa đơn trị giá từ 3000000 được tặng kèm phụ kiện</h4>
	Gốm sứ THANK cảm ơn bạn đã mua sản phẩm chúng tôi<br>
	Chúng tôi sẽ sớm giao hàng cho bạn
</body>
</html>

