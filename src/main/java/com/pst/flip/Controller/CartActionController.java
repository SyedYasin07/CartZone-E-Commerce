package com.pst.flip.Controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.CartDAO;


@WebServlet("/cartAction")
public class CartActionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		int id= Integer.parseInt(request.getParameter("id"));
		
		
		CartDAO dao= new CartDAO();
		if("delete".equals(action)) {
			int userId=1;
			dao.deleteFromCart(id, userId);
			response.sendRedirect("viewCart");
		}else if("increase".equals(action)) {
			int userId=1;
			dao.increaseQuantity(id, userId);
			response.sendRedirect("viewCart");
			
		}else if("decrease".equals(action)) {
			int userId=1;
			dao.decreaseQuantity(id, userId);
			response.sendRedirect("viewCart");
		}
	}

	

}
