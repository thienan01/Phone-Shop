<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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

    <main id="main">
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
                                                <form action="cart" method="get">
                                                    <span class="minus-btn">
                                                        <svg>
                                                            <use xlink:href="./interface/images/sprite.svg#icon-minus"></use>
                                                        </svg>
                                                    </span>
                                                    <input type="text" min="1" value="${item.getQuantity()}" max="10" class="counter-btn" name="quantity" >
                                                    
                                                    <span class="plus-btn">
                                                        <svg>
                                                            <use xlink:href="./interface/images/sprite.svg#icon-plus"></use>
                                                        </svg>
                                                    </span>
                                                    <input type="hidden" name="id" value="${item.product.getId()}">
                                                    <input type="hidden" name="action" value="cart">
                                                    <input type="submit" value="Update" id="updatebtn">
                                                </form>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="product__subtotal">
                                            <div class="price">
                                                <span class="new__price">${item.getTotalFormat()}</span>
                                            </div>
                                            <a href="cart?action=cart&amp;id=${item.product.getId()}&amp;quantity=0" class="remove__cart-item">
                                                <svg>
                                                    <use xlink:href="./interface/images/sprite.svg#icon-trash"></use>
                                                </svg>
                                            </a>
                                        </td>
                                    </tr>
                                    </c:forEach>
                   
                                </tbody>
                            </table>
                        </div>

                        <div class="cart-btns">
                            <div class="continue__shopping">
                                <a href="LoadProduct">Continue Shopping</a>
                            </div>
                            <div class="check__shipping">
                                <input type="checkbox">
                                <span>Shipping(+7$)</span>
                            </div>
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
                        		<a href="cart?action=pay" class="button">Vn-Pay</a>
                        	</div>
                            <!-- <a href="">PROCEED TO CHECKOUT</a> -->
                        </div>
                    </form>
                </div>
            </div>
        </section>

        <!-- Facility Section -->
        <section class="facility__section section" id="facility">
            <div class="container">
                <div class="facility__contianer">
                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="./interface/images/sprite.svg#icon-airplane"></use>
                            </svg>
                        </div>
                        <p>FREE SHIPPING WORLD WIDE</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="./interface/images/sprite.svg#icon-credit-card-alt"></use>
                            </svg>
                        </div>
                        <p>100% MONEY BACK GUARANTEE</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="./interface/images/sprite.svg#icon-credit-card"></use>
                            </svg>
                        </div>
                        <p>MANY PAYMENT GATWAYS</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="./interface/images/sprite.svg#icon-headphones"></use>
                            </svg>
                        </div>
                        <p>24/7 ONLINE SUPPORT</p>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
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
                        42 Dream House, Dreammy street, 7131 Dreamville, USA
                    </div>
                    <div>
                        <span>
                            <svg>
                                <use xlink:href="./interface/images/sprite.svg#icon-envelop"></use>
                            </svg>
                        </span>
                        company@gmail.com
                    </div>
                    <div>
                        <span>
                            <svg>
                                <use xlink:href="./interface/images/sprite.svg#icon-phone"></use>
                            </svg>
                        </span>
                        456-456-4512
                    </div>
                    <div>
                        <span>
                            <svg>
                                <use xlink:href="./interface/images/sprite.svg#icon-paperplane"></use>
                            </svg>
                        </span>
                        Dream City, USA
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
        </div>
    </footer>

    <!-- End Footer -->

    <!-- Go To -->

    <a href="#header" class="goto-top scroll-link">
        <svg>
            <use xlink:href="./interface/images/sprite.svg#icon-arrow-up"></use>
        </svg>
    </a>

    <!-- Glide Carousel Script -->
    <script src="node_modules/@glidejs/glide/dist/glide.min.js"></script>

    <!-- Animate On Scroll -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <!-- Custom JavaScript -->
    <script src="./interface/js/products.js"></script>
    <script src="./interface/js/index.js"></script>
    <script src="./interface/js/slider.js"></script>
    <script type="text/javascript" src="https://www.paypal.com/sdk/js?client-id=AVNbpleF-rB5-9TunkBQpwod45gN-4QGZTwxa3L5gtMFOX36Dx8mQZ0lBgQRccl9Dt1je3cBxymUu8-9"></script>
    <script>
    paypal.Buttons({
    	createOrder: function(data, actions){
    		return actions.order.create({
    			intent: 'CAPTURE',
    			payer: {
    				name: {
    					given_name: "",
    					surname: ""
    				}
    		
    				
    			},
    			purchase_units: [{
    				amount: {
    					value: "99.0",
    					currency_code: "USD"
    				}
    			}]
    			
    		
    			
    		});
    	}
    }).render("#paypal-button-container");
    </script>
</body>

</html>