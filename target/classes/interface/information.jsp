<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
  	
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/css/util.css">
	<link rel="stylesheet" type="text/css" href="./interface/uploadProduct/css/main.css">
<!--===============================================================================================-->


<!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

    <link rel="shortcut icon" href="./interface/images/favicon.ico" type="image/x-icon" />

    <!-- Carousel -->
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.core.min.css" />
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.theme.min.css" />

    <!-- Animate On Scroll -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />


    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="./interface/styles.css" />
    <script src="./interface/selectprovince.js"></script>

	<title>Phone Shop</title>
</head>
<body>
	 <jsp:include page="header.jsp"></jsp:include>

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="confirm" method="post">
				<input type="hidden" name="action" value="confirm">  
				<span class="contact100-form-title">
					Customer Information
				</span>
				<div class="wrap-input100 validate-input">
					<span class="label-input100">Your Name</span>
					<input class="input100" type="text" name="name" placeholder="Enter your name">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<span class="label-input100">Email</span>
					<input class="input100" type="text" name="email" placeholder="Enter your email addess">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<span class="label-input100">Phone Number</span>
					<input class="input100" type="number" name="phone" placeholder="Enter your phone number">
					<span class="focus-input100"></span>
				</div>
				<div>
				<span class="label-input100">Province</span>
				<select name= "province">
					<option value="An Giang">An Giang
					<option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu
					<option value="Bắc Giang">Bắc Giang
					<option value="Bắc Kạn">Bắc Kạn
					<option value="Bạc Liêu">Bạc Liêu
					<option value="Bắc Ninh">Bắc Ninh
					<option value="Bến Tre">Bến Tre
					<option value="Bình Định">Bình Định
					<option value="Bình Dương">Bình Dương
					<option value="Bình Phước">Bình Phước
					<option value="Bình Thuận">Bình Thuận
					<option value="Bình Thuận">Bình Thuận
					<option value="Cà Mau">Cà Mau
					<option value="Cao Bằng">Cao Bằng
					<option value="Đắk Lắk">Đắk Lắk
					<option value="Đắk Nông">Đắk Nông
					<option value="Điện Biên">Điện Biên
					<option value="Đồng Nai">Đồng Nai
					<option value="Đồng Tháp">Đồng Tháp
					<option value="Đồng Tháp">Đồng Tháp
					<option value="Gia Lai">Gia Lai
					<option value="Hà Giang">Hà Giang
					<option value="Hà Nam">Hà Nam
					<option value="Hà Tĩnh">Hà Tĩnh
					<option value="Hải Dương">Hải Dương
					<option value="Hậu Giang">Hậu Giang
					<option value="Hòa Bình">Hòa Bình
					<option value="Hưng Yên">Hưng Yên
					<option value="Khánh Hòa">Khánh Hòa
					<option value="Kiên Giang">Kiên Giang
					<option value="Kon Tum">Kon Tum
					<option value="Lai Châu">Lai Châu
					<option value="Lâm Đồng">Lâm Đồng
					<option value="Lạng Sơn">Lạng Sơn
					<option value="Lào Cai">Lào Cai
					<option value="Long An">Long An
					<option value="Nam Định">Nam Định
					<option value="Nghệ An">Nghệ An
					<option value="Ninh Bình">Ninh Bình
					<option value="Ninh Thuận">Ninh Thuận
					<option value="Phú Thọ">Phú Thọ
					<option value="Quảng Bình">Quảng Bình
					<option value="Quảng Bình">Quảng Bình
					<option value="Quảng Ngãi">Quảng Ngãi
					<option value="Quảng Ninh">Quảng Ninh
					<option value="Quảng Trị">Quảng Trị
					<option value="Sóc Trăng">Sóc Trăng
					<option value="Sơn La">Sơn La
					<option value="Tây Ninh">Tây Ninh
					<option value="Thái Bình">Thái Bình
					<option value="Thái Nguyên">Thái Nguyên
					<option value="Thanh Hóa">Thanh Hóa
					<option value="Thừa Thiên Huế">Thừa Thiên Huế
					<option value="Tiền Giang">Tiền Giang
					<option value="Trà Vinh">Trà Vinh
					<option value="Tuyên Quang">Tuyên Quang
					<option value="Vĩnh Long">Vĩnh Long
					<option value="Vĩnh Phúc">Vĩnh Phúc
					<option value="Yên Bái">Yên Bái
					<option value="Phú Yên">Phú Yên
					<option value="Tp.Cần Thơ">Tp.Cần Thơ
					<option value="Tp.Đà Nẵng">Tp.Đà Nẵng
					<option value="Tp.Hải Phòng">Tp.Hải Phòng
					<option value="Tp.Hà Nội">Tp.Hà Nội
					<option value="TP  HCM">TP HCM
					</select>
					<span class="focus-input100"></span>
				</div>
				
				
				<div class="wrap-input100 validate-input">
					<span class="label-input100">Your Address</span>
					<input class="input100" type="text" name="address" placeholder="Enter your home address">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<span class="label-input100">Message</span>
					<textarea class="input100" name="message" placeholder="Your message here..."></textarea>
					<span class="focus-input100"></span>
				</div>
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span>
								Submit
								<i class="fa fa-long-arrow-right m-l-7"></i>
							</span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	<footer id="footer" class="section footer">
    <div class="container">
      <div class="footer__top">
        <div class="footer-top__box">
          <h3>EXTRAS</h3>
          <a href="#">Brands</a>
          <a href="#">Gift Certificates</a>
          <a href="#">Affiliate</a>
          <a href="#">Specials</a>
          <a href="#">Site Map</a>
        </div>
        <div class="footer-top__box">
          <h3>INFORMATION</h3>
          <a href="#">About Us</a>
          <a href="#">Privacy Policy</a>
          <a href="#">Terms & Conditions</a>
          <a href="#">Contact Us</a>
          <a href="#">Site Map</a>
        </div>
        <div class="footer-top__box">
          <h3>MY ACCOUNT</h3>
          <a href="#">My Account</a>
          <a href="#">Order History</a>
          <a href="#">Wish List</a>
          <a href="#">Newsletter</a>
          <a href="#">Returns</a>
        </div>
        <div class="footer-top__box">
          <h3>CONTACT US</h3>
          <div>
            <span>
              <svg>
                <use xlink:href="./interface/images/sprite.svg#icon-location"></use>
              </svg>
            </span>
            192 Le Van Viet, Quan 9, TP HCM
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./interface/images/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
            Thienan12359@gmail.com
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./interface/images/sprite.svg#icon-phone"></use>
              </svg>
            </span>
            0383865402
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./interface/images/sprite.svg#icon-paperplane"></use>
              </svg>
            </span>
            Ho Chi Minh
          </div>
        </div>
      </div>
    </div>
    <div class="footer__bottom">
      <div class="footer-bottom__box">

      </div>
      <div class="footer-bottom__box">

      </div>
    </div>
  </footer>

<!--===============================================================================================-->
	<script src="./interface/uploadProduct/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="./interface/uploadProduct/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="./interface/uploadProduct/vendor/bootstrap/js/popper.js"></script>
	<script src="./interface/uploadProduct/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="v./interface/uploadProduct/endor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="./interface/uploadProduct/vendor/daterangepicker/moment.min.js"></script>
	<script src="./interface/uploadProduct/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="./interface/uploadProduct/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="./interface/uploadProduct/js/uploadProduct.js"></script>
	<script src="./interface/js/products.js"></script>
    <script src="./interface/js/index.js"></script>
    <script src="./interface/js/slider.js"></script>
    

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script>
  SelectProvince({
    target: "#tinhvn",
    on: data => {
      console.log(data)
    }
  })
</script>

</body>
</html>
