package com.Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductDAO;
import com.entity.Account;

public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  action = request.getParameter("action");
		if (action.equals("login")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			ProductDAO productDAO = new ProductDAO();
			Boolean exist = false;
			List<Account> accounts = productDAO.getAccounts();
			Account acc = new Account(); 
			for (Account account : accounts) {
				if (account.getUserName().equals(username) && account.getPassWord().equals(password)) {
					acc.setUserName(username);
					acc.setPassWord(password);
					acc.setIsAdmin(account.getIsAdmin());
					exist = true;
				}
			}
			if (exist) {
				HttpSession session =request.getSession();
				session.setAttribute("acc", acc);
				Account a = (Account) session.getAttribute("acc");
				System.out.print(a.getIsAdmin());
				response.sendRedirect("./index.jsp");
			}
			else {
				Integer mess = 1; 
				request.setAttribute("mess", mess);
				request.getRequestDispatcher("/interface/Login/login.jsp").forward(request,response);
			}
		
		}
		if (action.equals("logout")) {
			HttpSession session = request.getSession();
			session.removeAttribute("acc");
			response.sendRedirect("./index.jsp");
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

}
