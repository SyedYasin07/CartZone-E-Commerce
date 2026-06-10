package com.pst.flip.Controller;

import java.io.IOException;

import com.pst.flip.DAO.CustomerCareDAO;
import com.pst.flip.DTO.CustomerCareDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addTicket")
public class AddTicketServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int userId = 1; // TEMPORARY

        String subject =
                request.getParameter("subject");

        String message =
                request.getParameter("message");

        CustomerCareDTO dto =
                new CustomerCareDTO();

        dto.setUserId(userId);
        dto.setSubject(subject);
        dto.setMessage(message);

        CustomerCareDAO dao =
                new CustomerCareDAO();

        if(dao.addTicket(dto)) {

            response.sendRedirect(
                    "customerCare?success=true");

        } else {

            response.sendRedirect(
                    "customerCare?success=false");
        }
    }
}