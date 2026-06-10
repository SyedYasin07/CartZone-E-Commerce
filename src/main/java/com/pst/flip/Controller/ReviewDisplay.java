package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.ReviewDAO;


@WebServlet("/reviews")
public class ReviewDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	 protected void doGet(HttpServletRequest request,
	            HttpServletResponse response)
	            throws ServletException, IOException {

	        ReviewDAO dao = new ReviewDAO();

	        int productId = 1; // temporary

	        request.setAttribute(
	                "productId",
	                productId);

	        request.setAttribute(
	                "reviews",
	                dao.getReviewsByProductId(productId));

	        request.getRequestDispatcher(
	                "Review.jsp")
	                .forward(request, response);
	    }
	}
	


