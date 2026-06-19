package com.pst.flip.Controller;

import java.io.IOException;
import java.util.List;

import com.pst.flip.DAO.ProductDao;
import com.pst.flip.DTO.CartZone_Dto;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        ProductDao dao = new ProductDao();
        List<CartZone_Dto> products = dao.getAllProducts();

        req.setAttribute("products", products);
        RequestDispatcher rd = req.getRequestDispatcher("intro.jsp");
        rd.forward(req, resp);
    }
}
