
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
			<form class="contact100-form validate-form">
				<span class="contact100-form-title">
					Confirm Your Information
				</span>
				<div class="wrap-input100 validate-input">
					<span class="label-input100">Your Name: ${information.name}</span>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<span class="label-input100">Email: ${information.email}</span>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<span class="label-input100">Phone Number: ${information.phone}</span>
					<span class="focus-input100"></span>
				</div>
				<div>
				<span class="label-input100">Province: ${information.province}</span>
					<span class="focus-input100"></span>
				</div>
				
				
				<div class="wrap-input100 validate-input">
					<span class="label-input100">Your Address: ${information.address}</span>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<span class="label-input100">Message: ${information.message}</span>
					<span class="focus-input100"></span>
				</div>
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<section class="section cart__area">
            <div class="container">
                <div class="responsive__cart-area">
                    <form class="cart__form">
                        <div class="cart__table table-responsive">
                            <table width="100%" class="table">
                                <thead>
                                    <tr>
                                        <th>PRODUCT</th>
                                        <th>NAME</th>
                                        <th>UNIT PRICE</th>
                                        <th>QUANTITY</th>
                                        <th>TOTAL</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="item" items="${cart.items}">
										<tr>
                                        <td class="product__thumbnail">
                                            <a href="#">
                                                <img src="${item.product.getImage()}" alt="">
                                            </a>
                                        </td>
                                        <td class="product__name">
                                            <a href="#">${item.product.getName()}</a>
                                            <br><br>
                                            <small>${item.product.getColor()}</small>
                                        </td>
                                        <td class="product__price">
                                            <div class="price">
                                                <span class="new__price">${item.product.getPriceFormat()}</span>
                                            </div>
                                        </td>
                                        <td class="product__quantity">
                                            <div class="input-counter">
                                                <div>
                                                    <input type="text" value="${item.getQuantity()}" class="counter-btn" name="quantity" >
                                                    <input type="hidden" name="id" value="${item.product.getId()}">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="product__subtotal">
                                            <div class="price">
                                                <span class="new__price">${item.getTotalFormat()}</span>
                                            </div>
                                            <a href="cart?action=cart&amp;id=${item.product.getId()}&amp;quantity=0">
                                            </a>
                                        </td>
                                    </tr>
                                    </c:forEach>
                   
                                </tbody>
                            </table>
                        </div>
                        <div class="cart__totals">
                            <h3>Cart Totals</h3>
                            <ul>
                                <li>
                                    Shipping
                                    <span>$0</span>
                                </li>
                                <li>
                                    Total 
                                    <span class="new__price">${cart.getTotalCartFormat()}</span>
                                </li>
                            </ul>
                            <div id="paypal-button-container">
                        	</div>
                        	<div > 
                        		<a href="cart?action=pay&amp;amount=${cart.getTotalCartBigDecimal()}" class="button">VN-PAY</a>
                        	</div>
                        	<div> 
                        		<a href="http://localhost:8080/Smartphone-Shop-main/VNPay/vnpay_return1.jsp" class="button" style="margin-top: 10px;">Cancel</a>
                        	</div>
                            <!-- <a href="">PROCEED TO CHECKOUT</a> -->
                        </div>
                    </form>
                </div>
            </div>
        </section>
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
