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
    <link rel="stylesheet" href="styles.css" />

<!-- Customer Information -->

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="./js/information/fonts/icomoon/style.css">

    <link rel="stylesheet" href="./js/information/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./js/information/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="./js/information/css/style.css">

<!-- Customer Information -->  

    <title>Phone Shop</title>
</head>

<body>
  <body>
    <header id="header" class="header">
        <div class="navigation">
            <div class="container">
                <nav class="nav">
                    <div class="nav__hamburger">
                        <svg>
                            <use xlink:href="./images/sprite.svg#icon-menu"></use>
                        </svg>
                    </div>

                    <div class="nav__logo">
                        <a href="/" class="scroll-link">
                            PHONE
                        </a>
                    </div>

                    <div class="nav__menu">
                        <div class="menu__top">
                            <span class="nav__category">PHONE</span>
                            <a href="#" class="close__toggle">
                                <svg>
                                    <use xlink:href="./images/sprite.svg#icon-cross"></use>
                                </svg>
                            </a>
                        </div>
                        <ul class="nav__list">
                            <li class="nav__item">
                                <a href="/" class="nav__link">Home</a>
                            </li>
                            <li class="nav__item">
                                <a href="#" class="nav__link">Products</a>
                            </li>
                            <li class="nav__item">
                                <a href="#" class="nav__link">Blog</a>
                            </li>
                            <li class="nav__item">
                                <a href="#" class="nav__link">Contact</a>
                            </li>
                        </ul>
                    </div>

                    <div class="nav__icons">
                        <a href="#" class="icon__item">
                            <svg class="icon__user">
                                <use xlink:href="./images/sprite.svg#icon-user"></use>
                            </svg>
                        </a>

                        <a href="#" class="icon__item">
                            <svg class="icon__search">
                                <use xlink:href="./images/sprite.svg#icon-search"></use>
                            </svg>
                        </a>

                        <a href="#" class="icon__item">
                            <svg class="icon__cart">
                                <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                            </svg>
                            <span id="cart__total">${cart.getCount()}</span>
                        </a>
                    </div>
                </nav>
            </div>
        </div>
        <div class="page__title-area">
            <div class="container">
                <div class="page__title-container">
                    <ul class="page__titles">
                        <li>
                            <a href="/">
                                <svg>
                                    <use xlink:href="./interface/images/sprite.svg#icon-home"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="page__title">Customer Information</li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

<!-- Body -->
  <main style="font-size: 14pt">
    <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mr-auto">
          <h2>Customer Information</h2>
          <ul class="list-unstyled pl-md-5 mb-5">
            <li class="d-flex text-black mb-2">
              <span class="mr-3"><span class="icon-map"></span></span> 34 Street Name, City Name Here, <br> United States
            </li>
            <li class="d-flex text-black mb-2"><span class="mr-3"><span class="icon-phone"></span></span> +1 (222) 345 6789</li>
            <li class="d-flex text-black"><span class="mr-3"><span class="icon-envelope-o"></span></span> info@mywebsite.com </li>
          </ul>
        </div>

        <div class="col-md-6">
          <form class="mb-5" method="post" id="contactForm" name="contactForm">
            <div class="row">
              
              <div class="col-md-12 form-group">
                <label for="name" class="col-form-label">Name</label>
                <input type="text" class="form-control" name="name" id="name">
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 form-group">
                <label for="email" class="col-form-label">Email</label>
                <input type="text" class="form-control" name="email" id="email">
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 form-group">
                <label for="Phone Number" class="col-form-label">Phone Number</label>
                <input type="text" class="form-control" name="phonenumber" id="phonenumber">
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 form-group">
                <label for="Province" class="col-form-label">Province</label>
                <select name= "flatform">
                  <option value="An Giang">An Giang
                  <option value="BÃ  Rá»a - VÅ©ng TÃ u">BÃ  Rá»a - VÅ©ng TÃ u
                  <option value="Báº¯c Giang">Báº¯c Giang
                  <option value="Báº¯c Káº¡n">Báº¯c Káº¡n
                  <option value="Báº¡c LiÃªu">Báº¡c LiÃªu
                  <option value="Báº¯c Ninh">Báº¯c Ninh
                  <option value="Báº¿n Tre">Báº¿n Tre
                  <option value="BÃ¬nh Äá»nh">BÃ¬nh Äá»nh
                  <option value="BÃ¬nh DÆ°Æ¡ng">BÃ¬nh DÆ°Æ¡ng
                  <option value="BÃ¬nh PhÆ°á»c">BÃ¬nh PhÆ°á»c
                  <option value="BÃ¬nh Thuáº­n">BÃ¬nh Thuáº­n
                  <option value="BÃ¬nh Thuáº­n">BÃ¬nh Thuáº­n
                  <option value="CÃ  Mau">CÃ  Mau
                  <option value="Cao Báº±ng">Cao Báº±ng
                  <option value="Äáº¯k Láº¯k">Äáº¯k Láº¯k
                  <option value="Äáº¯k NÃ´ng">Äáº¯k NÃ´ng
                  <option value="Äiá»n BiÃªn">Äiá»n BiÃªn
                  <option value="Äá»ng Nai">Äá»ng Nai
                  <option value="Äá»ng ThÃ¡p">Äá»ng ThÃ¡p
                  <option value="Äá»ng ThÃ¡p">Äá»ng ThÃ¡p
                  <option value="Gia Lai">Gia Lai
                  <option value="HÃ  Giang">HÃ  Giang
                  <option value="HÃ  Nam">HÃ  Nam
                  <option value="HÃ  TÄ©nh">HÃ  TÄ©nh
                  <option value="Háº£i DÆ°Æ¡ng">Háº£i DÆ°Æ¡ng
                  <option value="Háº­u Giang">Háº­u Giang
                  <option value="HÃ²a BÃ¬nh">HÃ²a BÃ¬nh
                  <option value="HÆ°ng YÃªn">HÆ°ng YÃªn
                  <option value="KhÃ¡nh HÃ²a">KhÃ¡nh HÃ²a
                  <option value="KiÃªn Giang">KiÃªn Giang
                  <option value="Kon Tum">Kon Tum
                  <option value="Lai ChÃ¢u">Lai ChÃ¢u
                  <option value="LÃ¢m Äá»ng">LÃ¢m Äá»ng
                  <option value="Láº¡ng SÆ¡n">Láº¡ng SÆ¡n
                  <option value="LÃ o Cai">LÃ o Cai
                  <option value="Long An">Long An
                  <option value="Nam Äá»nh">Nam Äá»nh
                  <option value="Nghá» An">Nghá» An
                  <option value="Ninh BÃ¬nh">Ninh BÃ¬nh
                  <option value="Ninh Thuáº­n">Ninh Thuáº­n
                  <option value="PhÃº Thá»">PhÃº Thá»
                  <option value="Quáº£ng BÃ¬nh">Quáº£ng BÃ¬nh
                  <option value="Quáº£ng BÃ¬nh">Quáº£ng BÃ¬nh
                  <option value="Quáº£ng NgÃ£i">Quáº£ng NgÃ£i
                  <option value="Quáº£ng Ninh">Quáº£ng Ninh
                  <option value="Quáº£ng Trá»">Quáº£ng Trá»
                  <option value="SÃ³c TrÄng">SÃ³c TrÄng
                  <option value="SÆ¡n La">SÆ¡n La
                  <option value="TÃ¢y Ninh">TÃ¢y Ninh
                  <option value="ThÃ¡i BÃ¬nh">ThÃ¡i BÃ¬nh
                  <option value="ThÃ¡i NguyÃªn">ThÃ¡i NguyÃªn
                  <option value="Thanh HÃ³a">Thanh HÃ³a
                  <option value="Thá»«a ThiÃªn Huáº¿">Thá»«a ThiÃªn Huáº¿
                  <option value="Tiá»n Giang">Tiá»n Giang
                  <option value="TrÃ  Vinh">TrÃ  Vinh
                  <option value="TuyÃªn Quang">TuyÃªn Quang
                  <option value="VÄ©nh Long">VÄ©nh Long
                  <option value="VÄ©nh PhÃºc">VÄ©nh PhÃºc
                  <option value="YÃªn BÃ¡i">YÃªn BÃ¡i
                  <option value="PhÃº YÃªn">PhÃº YÃªn
                  <option value="Tp.Cáº§n ThÆ¡">Tp.Cáº§n ThÆ¡
                  <option value="Tp.ÄÃ  Náºµng">Tp.ÄÃ  Náºµng
                  <option value="Tp.Háº£i PhÃ²ng">Tp.Háº£i PhÃ²ng
                  <option value="Tp.HÃ  Ná»i">Tp.HÃ  Ná»i
                  <option value="TP  HCM">TP HCM
                </select>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 form-group">
                <label for="Address" class="col-form-label">Address</label>
                <input type="text" class="form-control" name="address" id="address">
            </div>

            <div class="row" style="margin-left: 0px; width: 100%;">
              <div class="col-md-12 form-group">
                <label for="message" class="col-form-label">Message</label>
                <textarea class="form-control" name="message" id="message" cols="30" rows="7"></textarea>
              </div>
            </div>
            
            <div class="row" style="margin-left: 0px">
              <div class="col-md-12">
                <input type="submit" value="Send Message" class="btn btn-primary rounded-0 py-2 px-4">
                <span class="submitting"></span>
              </div>
            </div>

          </form>
          </div>
        </div>
      </div> -->
  </div>
  </main>
<!-- End Body -->

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
                                <use xlink:href="./images/sprite.svg#icon-location"></use>
                            </svg>
                        </span>
                        42 Dream House, Dreammy street, 7131 Dreamville, USA
                    </div>
                    <div>
                        <span>
                            <svg>
                                <use xlink:href="./images/sprite.svg#icon-envelop"></use>
                            </svg>
                        </span>
                        company@gmail.com
                    </div>
                    <div>
                        <span>
                            <svg>
                                <use xlink:href="./images/sprite.svg#icon-phone"></use>
                            </svg>
                        </span>
                        456-456-4512
                    </div>
                    <div>
                        <span>
                            <svg>
                                <use xlink:href="./images/sprite.svg#icon-paperplane"></use>
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
            <use xlink:href="./images/sprite.svg#icon-arrow-up"></use>
        </svg>
    </a>

    <!-- Glide Carousel Script -->
    <script src="node_modules/@glidejs/glide/dist/glide.min.js"></script>

    <!-- Animate On Scroll -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <!-- Custom JavaScript -->
    <script src="./js/information/js/jquery-3.3.1.min.js"></script>
    <script src="./js/information/js/popper.min.js"></script>
    <script src="./js/information/js/bootstrap.min.js"></script>
    <script src="./js/information/js/jquery.validate.min.js"></script>
    <script src="./js/information.js"></script>
    <script src="./interface/js/products.js"></script>
    <script src="./interface/js/index.js"></script>
    <script src="./interface/js/slider.js"></script>
</body>

</html>