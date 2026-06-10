package com.pst.flip.Controller;

import java.io.IOException;
import java.util.List;

import com.pst.flip.DAO.ProductDao;
import com.pst.flip.DTO.Flipkart_Dto;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/searchProduct")
public class SearchController extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String keyword =
                request.getParameter("keyword");

        ProductDao dao =
                new ProductDao();

        List<Flipkart_Dto> products =
                dao.searchProducts(keyword);
        if(products.isEmpty()){
            products = dao.getProductsByCategory("Mobile");
            request.setAttribute("message",
                    "No exact match found. Showing similar products.");
        }

        request.setAttribute("products", products);

        request.getRequestDispatcher("searchResult.jsp")
               .forward(request, response);
    }
}