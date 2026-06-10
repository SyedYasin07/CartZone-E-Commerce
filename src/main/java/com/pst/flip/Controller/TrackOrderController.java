package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.pst.flip.DAO.TrackDAO;
import com.pst.flip.DTO.OrderDTO;

@WebServlet("/trackOrders")
public class TrackOrderController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int userId = 1; // later get from session

        TrackDAO dao = new TrackDAO();

        List<OrderDTO> orders =
                dao.getOrdersByUser(userId);

        request.setAttribute("orders", orders);

        request.getRequestDispatcher("trackOrders.jsp")
               .forward(request, response);
    }
}