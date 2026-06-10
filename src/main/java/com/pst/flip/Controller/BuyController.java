package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/buy")
public class BuyController extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int productId =
                Integer.parseInt(request.getParameter("productId"));

        String color = request.getParameter("color");
        String size = request.getParameter("size");
        String ram = request.getParameter("ram");
        String storage = request.getParameter("storage");
        String screenSize = request.getParameter("screenSize");

        HttpSession session = request.getSession();

        session.setAttribute("productId", productId);
        session.setAttribute("color", color);
        session.setAttribute("size", size);
        session.setAttribute("ram", ram);
        session.setAttribute("storage", storage);
        session.setAttribute("screenSize", screenSize);
        System.out.println("BUY color = " + request.getParameter("color"));
        System.out.println("BUY size = " + request.getParameter("size"));
        System.out.println("BUY ram = " + request.getParameter("ram"));
        System.out.println("BUY storage = " + request.getParameter("storage"));
        System.out.println("BUY screenSize = " + request.getParameter("screenSize"));

        request.getRequestDispatcher("Address.jsp")
               .forward(request, response);
    }
}