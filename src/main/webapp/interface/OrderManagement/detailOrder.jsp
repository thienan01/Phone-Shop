<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8" />
<title>Detail order</title>
<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap"
	rel="stylesheet" />

<link rel="shortcut icon" href="./interface/images/favicon.ico"
	type="image/x-icon" />


<!-- Carousel -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

<!-- Custom StyleSheet -->
<link rel="stylesheet" href="./interface/styles.css" />
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<section class="section cart__area">
            <div class="container">
                <div class="responsive__cart-area">
                    <form class="cart__form" action="confirm" method = "post">
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
                                    <c:forEach var="item" items="${cartOrder.items}">
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
                    </form>
                </div>
            </div>
        </section>
</body>
</html>