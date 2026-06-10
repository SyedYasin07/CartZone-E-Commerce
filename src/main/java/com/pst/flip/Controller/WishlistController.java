package com.pst.flip.Controller;
import com.pst.flip.DAO.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.pst.flip.DAO.CartDAO;


@WebServlet("/wishlist")
public class WishlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId=Integer.parseInt(request.getParameter("productId"));
		int userId=1;
		CartDAO dao= new CartDAO();
		dao.addToWishlist(userId, productId);
		response.sendRedirect("viewWishlist");
	}

}
