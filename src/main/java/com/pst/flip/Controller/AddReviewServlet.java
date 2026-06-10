package com.pst.flip.Controller;

import java.io.IOException;

import com.pst.flip.DAO.ReviewDAO;
import com.pst.flip.DTO.ReviewDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//@WebServlet("/addReview")
//public class AddReviewServlet extends HttpServlet {
//
//    @Override
//    protected void doPost(HttpServletRequest request,
//                          HttpServletResponse response)
//            throws ServletException, IOException {
//
//        HttpSession session =
//                request.getSession(false);
//
//        if(session == null ||
//           session.getAttribute("userId") == null) {
//
//            response.sendRedirect("intro.jsp");
//            return;
//        }
//
//        int userId =
//                (Integer) session.getAttribute("userId");
//
//        int productId =
//                Integer.parseInt(
//                        request.getParameter("productId"));
//
//        int rating =
//                Integer.parseInt(
//                        request.getParameter("rating"));
//
//        String reviewText =
//                request.getParameter("reviewText");
//
//        ReviewDTO dto =
//                new ReviewDTO();
//
//        dto.setProductId(productId);
//        dto.setUserId(userId);
//        dto.setRating(rating);
//        dto.setReviewText(reviewText);
//
//        ReviewDAO dao =
//                new ReviewDAO();
//
//        if(dao.addReview(dto)) {
//
//            request.setAttribute(
//                    "successMessage",
//                    "Review Added Successfully!");
//
//            request.setAttribute(
//                    "productId",
//                    productId);
//
//            request.setAttribute(
//                    "reviews",
//                    dao.getReviewsByProductId(productId));
//
//            request.getRequestDispatcher(
//                    "Review.jsp")
//                    .forward(request, response);
//
//        } else {
//
//            response.sendRedirect(
//                    "reviewFail.jsp");
//        }
//    }
//}
@WebServlet("/addReview")
public class AddReviewServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int userId = 1; // TEMPORARY TEST USER

        int productId =
                Integer.parseInt(
                        request.getParameter("productId"));

        int rating =
                Integer.parseInt(
                        request.getParameter("rating"));

        String reviewText =
                request.getParameter("reviewText");

        ReviewDTO dto = new ReviewDTO();

        dto.setProductId(productId);
        dto.setUserId(userId);
        dto.setRating(rating);
        dto.setReviewText(reviewText);

        ReviewDAO dao = new ReviewDAO();

        if(dao.addReview(dto)) {

            request.setAttribute(
                    "successMessage",
                    "Review Added Successfully!");

            request.setAttribute(
                    "productId",
                    productId);

            request.setAttribute(
                    "reviews",
                    dao.getReviewsByProductId(productId));

            request.getRequestDispatcher(
                    "Review.jsp")
                    .forward(request, response);

        } else {

            response.sendRedirect(
                    "reviewFail.jsp");
        }
    }
}