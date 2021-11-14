package com.Control;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ProductDAO;
import com.entity.Product;

public class LoadProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductDAO productDAO = new ProductDAO();
		List<Product> productsList = productDAO.getAllProducts();
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		for (Product product : productsList) {
			product.getPrice().toString();
		}
		request.setAttribute("pList", productsList);
		request.getRequestDispatcher("/interface/home.jsp").forward(request, response);
		
	}


}
