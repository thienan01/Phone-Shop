package com.Control;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DAO.ProductDAO;
import com.entity.Product;

public class HomeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");	
		if (action.equals("viewDetail")) {
			int id = Integer.parseInt(request.getParameter("id")); 
			ProductDAO productDAO = new ProductDAO(); 
			Product product = productDAO.getProductID(id);
			request.setAttribute("product", product);
			request.getRequestDispatcher("/interface/product.jsp").forward(request, response);
		}
		if (action.equals("getProductByCate")) {
			int idCate = Integer.parseInt(request.getParameter("id"));
			ProductDAO productDAO = new ProductDAO(); 
			Set<Product> productsList = productDAO.getProductByCategory(idCate);
			NumberFormat currency = NumberFormat.getCurrencyInstance();
			for (Product product : productsList) {
				product.getPrice().toString();
			}
			request.setAttribute("pList", productsList);
			request.getRequestDispatcher("/interface/home.jsp").forward(request, response);
			
		}

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	

}
