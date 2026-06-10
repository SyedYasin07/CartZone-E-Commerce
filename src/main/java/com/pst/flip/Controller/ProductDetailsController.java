package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.ProductDao;
import com.pst.flip.DTO.Flipkart_Dto;

@WebServlet("/productDetails")
public class ProductDetailsController extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        ProductDao dao = new ProductDao();

        Flipkart_Dto product = dao.getProductById(id);

        request.setAttribute("product", product);

        request.getRequestDispatcher("productDetails.jsp")
               .forward(request, response);
    }
}