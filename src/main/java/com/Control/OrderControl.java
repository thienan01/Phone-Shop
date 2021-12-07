package com.Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Cart;
import com.entity.LineItem;
import com.entity.Order;
import com.entity.Product;

public class OrderControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		if (action.equals("addOrder")) {
			Order ordered = (Order) session.getAttribute("order");
			List<Order> orderList = (List<Order>) session.getAttribute("orderList");
			if (orderList == null) {
				orderList = new ArrayList<Order>();
				orderList.add(ordered);
				session.setAttribute("orderList", orderList);
				session.removeAttribute("order");
				request.getRequestDispatcher("/VNPay/success.jsp").forward(request, response);

			} else {
				orderList.add(ordered);
				session.setAttribute("orderList", orderList);
				session.setMaxInactiveInterval(60*60*24);
				session.removeAttribute("order");
				request.getRequestDispatcher("/VNPay/success.jsp").forward(request, response);

			}
		}
		if (action.equals("delete")) {
			String code = request.getParameter("code");
			List<Order> orders = (List<Order>) session.getAttribute("orderList");
			for (Order order : orders) {
				if (order.getCode().equals(code)) {
					orders.remove(order);
				}
			}
			request.getRequestDispatcher("/interface/OrderManagement/order.jsp").forward(request, response);
		}
		if (action.equals("detailProduct")) {
			String code = request.getParameter("code");
			List<Order> orders = (List<Order>) session.getAttribute("orderList");
			for (Order order : orders) {
				if (order.getCode().equals(code)) {
					Cart cart = order.getCart();
					request.setAttribute("cartOrder", cart);
					request.getRequestDispatcher("/interface/OrderManagement/detailOrder.jsp").forward(request, response);
					for (LineItem lineItem : cart.getItems()) {
						System.out.print(lineItem.getProduct().getName());
					}
				}
			}
		}
	}
}
