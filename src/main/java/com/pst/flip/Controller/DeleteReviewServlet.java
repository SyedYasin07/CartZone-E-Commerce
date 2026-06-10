package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.ReviewDAO;

@WebServlet("/deleteReview")
public class DeleteReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  

		        int reviewId =
		        Integer.parseInt(
		        request.getParameter("reviewId"));

		        int productId =
		        Integer.parseInt(
		        request.getParameter("productId"));

		        ReviewDAO dao =
		        new ReviewDAO();

		        dao.deleteReview(reviewId);

		        response.sendRedirect(
		        "reviews?productId="
		        + productId);
		    }
		
	}


