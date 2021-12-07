package com.Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductDAO;
import com.entity.Cart;
import com.entity.LineItem;
import com.entity.Product;

public class CartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("cart")) {
			
			String idProduct = request.getParameter("id");
			String quantityString = request.getParameter("quantity");

			HttpSession session = request.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			if (cart == null) {
				cart = new Cart();
			}
			int quantity;
			try {
				quantity = Integer.parseInt(quantityString);
				if (quantity < 0 ) {
					quantity = 1;
				}
			} catch (NumberFormatException nfe) {
				quantity = 1;
			}
			if (idProduct != null) {
				ProductDAO productDAO = new ProductDAO();
				
				Product product = productDAO.getProductID(Integer.parseInt(idProduct));

				LineItem lineItem = new LineItem();
				lineItem.setProduct(product);
				lineItem.setQuantity(quantity);
				if (quantity > 0) {
					cart.addItem(lineItem);
				} else if (quantity == 0) {
					cart.removeItem(lineItem);
				}
			}
			  session.setAttribute("cart", cart);
			  request.getRequestDispatcher("/interface/cart.jsp").forward(request,response);
			 
		}
		if(action.equals("goToCart")) {
			request.getRequestDispatcher("/interface/cart.jsp").forward(request, response);
		}
		if(action.equals("test")) {
			request.getRequestDispatcher("/interface/information.jsp").forward(request, response);}
		if(action.equals("fail")) {
			request.getRequestDispatcher("/VNPay/fail.jsp").forward(request, response);}
	}

}
