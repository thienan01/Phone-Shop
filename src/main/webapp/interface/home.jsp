
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="./interface/styles.css" />

  <title>Phone Shop</title>
</head>

<body>
  
	<!-- Header -->
  <jsp:include page="header.jsp"></jsp:include>
  
  <!-- Hero -->
    <div class="hero">
      <div class="glide" id="glide_1">
        <div class="glide__track" data-glide-el="track">
          <ul class="glide__slides">
            <li class="glide__slide">
              <div class="hero__center">
                <div class="hero__left">
                  <span class="">New Inspiration 2020</span>
                  <h1 class="">PHONES MADE FOR YOU!</h1>
                  <p>Trending from mobile and headphone style collection</p>
                  <a href="#"><button class="hero__btn">SHOP NOW</button></a>
                </div>
                <div class="hero__right">
                  <div class="hero__img-container">
                    <img class="banner_01" src="./interface/images/banner_01.png" alt="banner2" />
                  </div>
                </div>
              </div>
            </li>
            <li class="glide__slide">
              <div class="hero__center">
                <div class="hero__left">
                  <span>New Inspiration 2020</span>
                  <h1>PHONES MADE FOR YOU!</h1>
                  <p>Trending from mobile and headphone style collection</p>
                  <a href="#"><button class="hero__btn">SHOP NOW</button></a>
                </div>
                <div class="hero__right">
                  <img class="banner_02" src="./interface/images/banner_02.png" alt="banner2" />
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="glide__bullets" data-glide-el="controls[nav]">
          <button class="glide__bullet" data-glide-dir="=0"></button>
          <button class="glide__bullet" data-glide-dir="=1"></button>
        </div>

        <div class="glide__arrows" data-glide-el="controls">
          <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
            <svg>
              <use xlink:href="./images/sprite.svg#icon-arrow-left2"></use>
            </svg>
          </button>
          <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
            <svg>
              <use xlink:href="./images/sprite.svg#icon-arrow-right2"></use>
            </svg>
          </button>
        </div>
      </div>
    </div>
  </header>
  <!-- End Header -->
  <!-- End Header -->

  <!-- Main -->
  <main id="main">
    <div class="container">
      <!-- Collection -->
      <section id="collection" class="section collection">
        <div class="collection__container" data-aos="fade-up" data-aos-duration="1200">
          <div class="collection__box">
            <div class="img__container">
              <img class="collection_02" src="./interface/images/collection_02.png" alt="">
            </div>
            <div class="collection__content">
              <div class="collection__data">
                <span>New Colors Introduced</span>
                <h1>HEADPHONES</h1>
                <a href="#shop">SHOP NOW</a>
              </div>
            </div>
          </div>
          <div class="collection__box">
            <div class="img__container">
              <img class="collection_01" src="./interface/images/collection_01.png" alt="">
            </div>
            <div class="collection__content">
              <div class="collection__data">
                <span>Phone Device Presets</span>
                <h1>SMARTPHONES</h1>
                <a href="#">SHOP NOW</a>
              </div>
            </div>
          </div>
      </section>

      <!-- Latest Products
      <section class="section latest__products" id="latest">
        <div class="title__container">
          <div class="section__title active" data-id="Latest Products">
            <span class="dot"></span>
            <h1 class="primary__title">Latest Products</h1>
          </div>
        </div>
        <div class="container" data-aos="fade-up" data-aos-duration="1200">
          <div class="glide" id="glide_2">
            <div class="glide__track" data-glide-el="track">
              <ul class="glide__slides latest-center">                
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="images/products/iPhone/iphone1.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>apple</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./interface/images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./interface/images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./interface/images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./interface/images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./interface/images/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$550</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Add To Cart</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./interface/images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                      <li>
                        <a data-tip="Add To Wishlist" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./interface/images/sprite.svg#icon-heart-o"></use>
                          </svg>
                        </a>
                      </li>
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./interface/images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
				</li>
              </ul>
            </div>

            <div class="glide__arrows" data-glide-el="controls">
              <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                <svg>
                  <use xlink:href="./interface/images/sprite.svg#icon-arrow-left2"></use>
                </svg>
              </button>
              <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                <svg>
                  <use xlink:href="./interface/images/sprite.svg#icon-arrow-right2"></use>
                </svg>
              </button>
            </div>
          </div>
        </div>
      </section> -->

      <section class="category__section section" id="category">
        <div class="tab__list">
          <div class="title__container tabs">
            <div class="section__titles category__titles ">
              <div class="section__title filter-btn active" data-id="All Products">
                 <span class="dot"></span>
                <a href="LoadProduct" class="primary__title">All Products</a>            
              </div>
            </div>
            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Trending Products">
                <span class="dot"></span>
                <h1 class="primary__title"><a href="home?action=getProductByCate&amp;id=2" class="primary__title" style="color:555">Iphone</a></h1>            
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Special Products">
                <span class="dot"></span>
                <a href="home?action=getProductByCate&amp;id=1" class="primary__title" style="color:555;">Samsung</a>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Featured Products">
                <span class="dot"></span>
                <a href="home?action=getProductByCate&amp;id=4" class="primary__title" style="color:555;">Oppo</a>
              </div>
            </div>
            
            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Featured Products">
                <span class="dot"></span>
                <a href="home?action=getProductByCate&amp;id=3" class="primary__title" style="color:555;">Xiaomi</a>
              </div>
            </div>
          </div>
        </div>
        <div>
        <form action="home">
        	<input type="hidden" name="action" value="SearchByPrice">
        	<select name="rangePrice" id="colors" class="select-box">
                        <option value="5to10">0-10 triệu</option>
                        <option value="10to20">10-20 triệu</option>
                        <option value="up30">Trên 20 triệu</option>
            </select>
            <input type=image src="./interface/images/refreshprice.png" alt="Submit Me" style="width:20px">
        </form>
        </div>
        <div class="category__container" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center">
         	<c:forEach var = "item"  items="${pList}">
         		<li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="${item.getImage()}" alt="product">
                    </div>
                    <div class="product__footer">
                    	<a href="home?action=viewDetail&amp;id=${item.getId()}" id="clickToViewDetail">
                      	<h3 id="phonename">${item.getName()}</h3>
                     	 <div class="rating">
                        	<svg>
                        	  <use xlink:href="./interface/images/sprite.svg#icon-star-full"></use>
                       	 </svg>
                       	 <svg>
                       	   <use xlink:href="./interface/images/sprite.svg#icon-star-full"></use>
                       	 </svg>
                       	 <svg>
                       	   <use xlink:href="./interface/images/sprite.svg#icon-star-full"></use>
                       	 </svg>
                       	 <svg>
                        	  <use xlink:href="./interface/images/sprite.svg#icon-star-full"></use>
                        	</svg>
                       	 <svg>
                        	  <use xlink:href="./interface/images/sprite.svg#icon-star-empty"></use>
                       	 </svg>
                     	 </div>
                      	<div class="product__price">
                        <h4>${item.getPriceFormat()} VND</h4>
                      </div>
                      </a>
                      <a href="cart?action=cart&amp;id=${item.getId()}"><button type="submit" class="product__btn">Add To Cart</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./interface/images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                      <li>
                        <a data-tip="Add To Wishlist" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./interface/images/sprite.svg#icon-heart-o"></use>
                          </svg>
                        </a>
                      </li>
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./interface/images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
</li>
         	</c:forEach>
				
    	</div>
    </section>

    <!-- Facility Section -->
    <section class="facility__section section" id="facility">
      <div class="container">
        <div class="facility__contianer" data-aos="fade-up" data-aos-duration="1200">
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
    </div>

    <!-- Testimonial Section -->
    

    <!--New Section  -->
    <section class="section news" id="news">
      <div class="container">
        <div class="title__container">
          <div class="section__titles">
            <div class="section__title active">
              <span class="dot"></span>
              <h1 class="primary__title">Phone News</h1>
            </div>
          </div>
        </div>
        <div class="news__container">
          <div class="glide" id="glide_5">
            <div class="glide__track" data-glide-el="track">
              <ul class="glide__slides">
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./interface/images/news1.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By Admin</span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                      <a href="#"><button>Read More</button></a>
                    </div>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./interface/images/news2.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By Admin</span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                      <a href="#"><button>Read More</button></a>
                    </div>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./interface/images/news3.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By Admin</span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                      <a href="#"><button>Read More</button></a>
                    </div>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./interface/images/news4.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By Admin</span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                      <a href="#"><button>Read More</button></a>
                    </div>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="new__card">
                    <div class="card__header">
                      <img src="./interface/images/news5.jpg" alt="">
                    </div>
                    <div class="card__footer">
                      <h3>Styling White Shirts After A Cool Day</h3>
                      <span>By Admin</span>
                      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo praesentium, numquam non
                        provident rem sed minus natus unde vel modi!</p>
                      <a href="#"><button>Read More</button></a>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>

        </div>
      </div>
    </section>

    <!-- NewsLetter -->
    <section class="section newsletter" id="contact">
      <div class="container">
        <div class="newsletter__content">
          <div class="newsletter__data">
            <h3>SUBSCRIBE TO OUR NEWSLETTER</h3>
            <p>A short sentence describing what someone will receive by subscribing</p>
          </div>
          <form action="#">
            <input type="email" placeholder="Enter your email address" class="newsletter__email">
            <a class="newsletter__link" href="#">subscribe</a>
          </form>
        </div>
      </div>
    </section>

  </main>

  <!-- End Main -->

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
    </div>
  </footer>

  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="./interface/images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>


  <!-- Glide Carousel Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
  <!-- Animate On Scroll -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- Custom JavaScript -->
  <script src="./interface/js/products.js"></script>
  <script src="./interface/js/index.js"></script>
  <script src="./interface/js/slider.js"></script>

</body>

</html>