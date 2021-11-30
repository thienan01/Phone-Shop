package com.Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DAO.ProductDAO;
import com.entity.Product;

public class UploadProductControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product product = new Product();
		int cateID = Integer.parseInt(request.getParameter("cateID"));
		product.setBrand(request.getParameter("brand"));
		product.setName(request.getParameter("name"));
		product.setPrice(Double.parseDouble(request.getParameter("price")));
		product.setColor(request.getParameter("color"));
		product.setStatus(request.getParameter("status"));
		product.setDetail(request.getParameter("detail"));
		product.setDescription(request.getParameter("description"));
		product.setImage(request.getParameter("image"));
		ProductDAO productDAO = new ProductDAO();
		productDAO.insertProduct(product, cateID);
		request.getRequestDispatcher("LoadProduct").forward(request, response);;
	}

}
