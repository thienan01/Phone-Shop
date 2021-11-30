<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<header id="header" class="header">
    <div class="navigation">
      <div class="container">
        <nav class="nav">
          <div class="nav__hamburger">
            <svg>
              <use xlink:href="./interface/images/sprite.svg#icon-menu"></use>
            </svg>
          </div>

          <div class="nav__logo">
            <a href="LoadProduct" class="scroll-link">
              PHONE
            </a>
          </div>

          <div class="nav__menu">
            <div class="menu__top">
              <span class="nav__category">PHONE</span>
              <a href="#" class="close__toggle">
                <svg>
                  <use xlink:href="./interface/images/sprite.svg#icon-cross"></use>
                </svg>
              </a>
            </div>
            <ul class="nav__list">
              <li class="nav__item">
                   <a href="LoadProduct" class="nav__link">Home</a>
              </li>
              <li class="nav__item">
                <a href="#category" class="nav__link scroll-link">Category</a>
              </li>
              <li class="nav__item">
                <a href="#news" class="nav__link scroll-link">Blog</a>
              </li>
              <li class="nav__item">
                <a href="#contact" class="nav__link scroll-link">Contact</a>
              </li>
              <c:if test="${sessionScope.acc.getIsAdmin() == 1}">
              <li class="nav__item">
                        <a href="home?action=upload" class="nav__link">Upload</a>
              </li>
              </c:if>
            </ul>
          </div>

          <div class="nav__icons">
          
             <form action="home">
             	<input type ="hidden" name ="action" value="Search">
            	<div class="search-box">
        			<img src="./interface/images/searchIcon.png">
        			<input type="text" class="search" placeholder="Search" name = "textSearch">
    			</div>
            </form>

            <a href="home?action=login" class="icon__item" style="margin-left: 10px">
              <svg class="icon__user">
                <use xlink:href="./interface/images/sprite.svg#icon-user"></use>
              </svg>
            </a>

            <a href="cart?action=goToCart" class="icon__item">
              <svg class="icon__cart">
                <use xlink:href="./interface/images/sprite.svg#icon-shopping-basket"></use>
              </svg>
              <span id="cart__total">${cart.getCount()}</span>
            </a>
          </div>
          <c:if test="${sessionScope.acc != null}">
          	<a href="login?action=logout">(Log out)</a>
          </c:if>
        </nav>
      </div>
      
    </div>