package com.pst.flip.Controller;

import java.io.IOException;
import java.util.List;

import com.pst.flip.DAO.CustomerCareDAO;
import com.pst.flip.DTO.CustomerCareDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/customerCare")
public class CustomerCareServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int userId = 1;

        CustomerCareDAO dao =
                new CustomerCareDAO();

        List<CustomerCareDTO> tickets =
                dao.getTicketsByUser(userId);

        request.setAttribute(
                "tickets",
                tickets);
        String success =
                request.getParameter("success");

        if("true".equals(success)) {

            request.setAttribute(
                    "successMessage",
                    "✅ Ticket Submitted Successfully!");
        }

        request.getRequestDispatcher(
                "customerCare.jsp")
                .forward(request, response);
    }
}