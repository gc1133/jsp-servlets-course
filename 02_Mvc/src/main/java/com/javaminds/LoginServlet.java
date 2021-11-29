package com.javaminds;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javaminds.dto.User;
import com.javaminds.service.LoginService;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId, password;
		userId = req.getParameter("userId");
		password = req.getParameter("password");
		
		LoginService loginService = new LoginService();
		boolean result = loginService.authenticate(userId, password);
		
		if(result == true) {
			User user = loginService.getUserDetails(userId);
			
			// Option 1
//			HttpSession session = req.getSession();
//			session.setAttribute("user", user);
//			resp.sendRedirect("success.jsp");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("success.jsp");
			req.setAttribute("user", user);
			dispatcher.forward(req, resp);
			
			return;
		} else {
			resp.sendRedirect("login.jsp");
			return;
		}
	}

}
