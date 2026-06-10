package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.ProductDao;
import com.pst.flip.DAO.UpdateProduct;

@WebServlet("/updateProduct")
public class UpdateProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int productId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String image = request.getParameter("image");
        String category = request.getParameter("category");

        ProductDao dao = new ProductDao();
        dao.updateProduct(productId, name, price, image, category);

        response.sendRedirect("ViewSellerProductsServlet");
    }
}