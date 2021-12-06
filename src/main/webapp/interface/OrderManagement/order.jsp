<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <link rel="shortcut icon" href="./interface/images/favicon.ico" type="image/x-icon" />


  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="./interface/styles.css" />
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<table class="styled-table">
        <thead>
            <tr>
                <th>Order code</th>
                <th>Full name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Message</th>
                <th>Products</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var = "item"  items="${sessionScope.orderList}">
            <tr>
                <td>${item.getCode()}</td>
                <td>${item.getFullName()}</td>
                <td>${item.getEmail()}</td>
                <td>${item.getPhone()}</td>
                <td>${item.getAddress()}</td>
                <td>${item.getMessage()}</td>
                <td><a href="order?action=detailProduct&amp;code=${item.getCode()}">Detail</a></td>
                <td><a href="order?action=delete&amp;code=${item.getCode()}">Delete</a></td>
            </tr>
         </c:forEach>
            <!-- and so on... -->
        </tbody>
    </table>
    <style>
        .styled-table {
    border-collapse: collapse;
    margin: 15px auto 0 auto ;
    font-size: 0.9em;
    font-family: sans-serif;
    width: 95%;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
    </style>
</body>
</html>