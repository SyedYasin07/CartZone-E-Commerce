package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.pst.flip.DAO.CartDAO;
import com.pst.flip.DTO.CartDTO;


@WebServlet("/viewWishlist")
public class ViewWishlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId =1;
		CartDAO dao = new CartDAO();
		List<CartDTO> list = dao.getWishlistByUser(userId);
		request.setAttribute("wishlist", list);

        request.getRequestDispatcher("wishlist.jsp")
               .forward(request, response);
	}

	
	}


