package com.pst.flip.Controller;

import java.io.IOException;
import java.util.List;

import com.pst.flip.DAO.ProductDao;
import com.pst.flip.DTO.CartZone_Dto;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/ViewSellerProductsServlet")
public class ViewSellerProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        // 🔐 CHECK SESSION FIRST
        if (session == null || session.getAttribute("sellerId") == null) {
            response.sendRedirect("sellerLogin.jsp"); // or intro.jsp
            return;
        }

        int sellerId = (Integer) session.getAttribute("sellerId");

        ProductDao dao = new ProductDao();
        List<CartZone_Dto> products = dao.getProductsBySeller(sellerId);

        request.setAttribute("products", products);
        request.getRequestDispatcher("sellerProducts.jsp").forward(request, response);
	}

}
