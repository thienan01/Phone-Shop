<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  	<meta charset="UTF-8" />
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

	<title>Phone Shop</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="upload">
				<span class="contact100-form-title">
					Upload Product
				</span>
				
				<div class="wrap-input100 validate-input" data-validate="IdCategory is required">
					<span class="label-input100">Category:</span><br>
					<select name="cateID" id="colors" class="select-box">
                        <option value="1">1. Samsung</option>
                        <option value="2">2. Iphone</option>
                        <option value="3">3. Xiaomi</option>
                        <option value="4">4. Oppo</option>
            		</select>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Product's brand name is required">
					<span class="label-input100">Brand</span>
					<input class="input100" type="text" name="brand" placeholder="Enter the product's brand name">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Name is required">
					<span class="label-input100">Name</span>
					<input class="input100" type="text" name="name" placeholder="Enter product's name">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Price is required">
					<span class="label-input100">Price</span>
					<input class="input100" type="text" name="price" placeholder="Enter product's price">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Color is required">
					<span class="label-input100">Color</span>
					<input class="input100" type="text" name="color" placeholder="Enter product's color">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Status is required">
					<span class="label-input100">Status</span>
					<input class="input100" type="text" name="status" placeholder="Enter product's status">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Detail is required">
					<span class="label-input100">Detail</span>
					<textarea class="input100" name="detail" placeholder="Enter product's detail"></textarea>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Description is required">
					<span class="label-input100">Description</span>
					<textarea class="input100" name="description" placeholder="Enter product's description"></textarea>
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate = "Color is required">
					<span class="label-input100">Image</span>
					<input class="input100" type="text" name="image" placeholder="Enter product's image">
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span>
								Upload Product
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
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

</body>
</html>
