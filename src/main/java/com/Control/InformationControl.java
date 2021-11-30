package com.Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.entity.Information;

public class InformationControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		if (action.equals("confirm")) {
			
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String province = request.getParameter("province");
			String address = request.getParameter("address");
			String message = request.getParameter("message");
			Information information = new Information(name, email, phone, province, address, message);
			request.setAttribute("information", information);
			System.out.print(information.getname());
			request.getRequestDispatcher("/interface/confirm.jsp").forward(request,response);
		}
	}
        
}