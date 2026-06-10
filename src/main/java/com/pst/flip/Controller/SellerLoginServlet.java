package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.pst.flip.DAO.SellerDao;

@WebServlet("/sellerLogin")
public class SellerLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");

        SellerDao dao = new SellerDao();

        int sellerId = dao.getSellerIdByEmail(email);

        if(sellerId > 0) {

            HttpSession session = request.getSession();
            session.setAttribute("sellerId", sellerId);

            response.sendRedirect("sellerDashboard.jsp");

        } else {
            response.sendRedirect("sellerLoginFail.jsp");
        }
    }
}


