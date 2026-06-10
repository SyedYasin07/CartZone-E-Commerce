package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

import com.pst.flip.DAO.OrderDAO;
import com.pst.flip.DTO.OrderDTO;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null) {
            response.sendRedirect("error.jsp");
            return;
        }

        Integer productId =
                (Integer) session.getAttribute("productId");

        String address =
                (String) session.getAttribute("address");

        String color =
                (String) session.getAttribute("color");

        String size =
                (String) session.getAttribute("size");

        String ram =
                (String) session.getAttribute("ram");

        String storage =
                (String) session.getAttribute("storage");

        String screenSize =
                (String) session.getAttribute("screenSize");

        if (productId == null || address == null) {
            response.sendRedirect("error.jsp");
            return;
        }

        String payment =
                request.getParameter("payment");

        OrderDTO order = new OrderDTO();

        order.setUserId(1);   // later use logged-in user
        order.setProductId(productId);
        order.setPaymentMode(payment);
        order.setAddress(address);

       order.setColor(color);
        order.setSize(size);
        order.setRam(ram);
        order.setStorage(storage);
        order.setScreenSize(screenSize);

        System.out.println(order);

        OrderDAO dao = new OrderDAO();
        dao.buy(order);

        session.removeAttribute("productId");
        session.removeAttribute("address");
        session.removeAttribute("color");
        session.removeAttribute("size");
        session.removeAttribute("ram");
        session.removeAttribute("storage");
        session.removeAttribute("screenSize");

        response.sendRedirect("orderSuccess.jsp");
    }
}