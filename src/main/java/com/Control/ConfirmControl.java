package com.Control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Util.EmailUtil;
import com.entity.Cart;
import com.entity.Order;

public class ConfirmControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String host;
	private String port;
	private String username;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		username = context.getInitParameter("username");
		pass = context.getInitParameter("pass");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		if (action.equals("confirm")) {
			String fullName = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			String message = request.getParameter("message");
			HttpSession session = request.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			String resultMessage = "";

			String code = EmailUtil.getRandom();

			// create new user using all information
			Order order = new Order(code, fullName, email, phone, address, message, cart);

			// call the send email method
			boolean test;
			try {
				test = EmailUtil.sendEmail(host, port, username, pass, email, "Email Verification",
						"Your order code: " + order.getCode());
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				test = false;
			}

			// check if the email send successfully
			if (test) {
				session.setAttribute("order", order);
			} else {
				resultMessage = "There were an error. Please try again!";
			}
			request.getRequestDispatcher("/interface/confirm.jsp").forward(request, response);
		}

		if (action.equals("verify")) {
			try (PrintWriter out = response.getWriter()) {
				HttpSession session = request.getSession();
				Order order = (Order) session.getAttribute("order");
				String num1 = request.getParameter("num1");
				String num2 = request.getParameter("num2");
				String num3 = request.getParameter("num3");
				String num4 = request.getParameter("num4");
				String num5 = request.getParameter("num5");
				String num6 = request.getParameter("num6");
				String code = num1 +num2+num3+num4+num5+num6;
				System.out.print("code nhap:"+code);
				System.out.print("co sann:"+ order.getCode());
				if (code.equals(order.getCode())) {
					request.getRequestDispatcher("/VNPay/index.jsp").forward(request, response);
				} else {
					out.println("Incorrect order code!");
				}
			}
		}

	}

}
