package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.NotificationDAO;


@WebServlet("/notifications")
public class NotificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NotificationDAO dao= new NotificationDAO();
		 request.setAttribute(
	                "notifications",
	                dao.getAllNotifications());

	        request.getRequestDispatcher(
	                "notifications.jsp")
	                .forward(request,response);
	}

	

}
