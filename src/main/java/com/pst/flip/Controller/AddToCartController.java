package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.CartDAO;
import com.pst.flip.DTO.CartDTO;


@WebServlet("/addToCart")
public class AddToCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId =Integer.parseInt(request.getParameter("productId"));
		CartDTO cart= new CartDTO();
		cart.setProductId(productId);
		cart.setUserId(1);
		CartDAO dao= new CartDAO();
		dao.addToCart(cart);
		response.sendRedirect("cartSuccess.jsp");
	}

}
