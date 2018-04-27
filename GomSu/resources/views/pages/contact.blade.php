@extends('master')
@section('content')
<div class="clear"> </div>
<div class="wrap">
    <div class="content">
        <div class="section group">
            <div class="col span_1_of_3">
                <div class="contact_info">
                    <h2>Find Us Here</h2>
                    <div class="map">
                        <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.6208087049135!2d105.82219321450432!3d21.007831886009676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8109765ba5%3A0xd84740ece05680ee!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBUaOG7p3kgTOG7o2k!5e0!3m2!1svi!2s!4v1517630740914"></iframe>
                        <br><small><a href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90%E1%BA%A1i+h%E1%BB%8Dc+Th%E1%BB%A7y+L%E1%BB%A3i/@21.0078319,105.8221932,17z/data=!3m1!4b1!4m5!3m4!1s0x3135ac8109765ba5:0xd84740ece05680ee!8m2!3d21.0078319!4d105.8243819" </a></small>
                    </div>
                </div>
                <div class="company_address">
                    <h2>Thông tin cửa hàng :</h2>
                    <p>Số 175 Tây Sơn</p>
                    <p>Đống Đa, Hà Nội, Việt Nam</p>
                    <p>Điện thoại:(+84) 1900 100C0</p>
                    <p>Fax: (+84) 199 999 999</p>
                    <p>Email: <span><a href="mailto:kienndb@bkav.com">kienndb@bkav.com</a></span></p>
                    <p>Follow on: <span><a href="#">Facebook</a></span>, <span><a href="#">Twitter</a></span></p>
                </div>
            </div>
            <div class="col span_2_of_3">
                <div class="contact-form">
                    <h2>Contact Us</h2>
                    <form action="{!! url('contact')!!}" method="post">
                        <input type="hidden" name="_token" value="{!! csrf_token()!!}">
                        <div>
                            <span><label>NAME</label></span>
                            <span><input type="text" value="" name="name" class="required"></span>
                        </div>
                        <div>
                            <span><label>E-MAIL</label></span>
                            <span><input type="email" value="" name="email" class="required" style="width: 100%;height: 30px;"></span>
                        </div>
                        <div>
                            <span><label>MOBILE.NO</label></span>
                            <span><input type="number" value="" name="number" class="required" style="width: 100%;height: 30px;"></span>
                        </div>
                        <div>
                            <span><label>SUBJECT</label></span>
                            <span><textarea name="message" class="required"> </textarea></span>
                        </div>
                        <div>
                            <span><input type="submit" value="Submit" class="btn btn-success"></span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="clear"> </div>
    </div>
    <div class="clear"> </div>
</div>
@endsection