package com.pst.flip.Controller;
import java.io.IOException;

import com.pst.flip.DAO.HelpDAO;
import com.pst.flip.DTO.HelpDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RaiseTicketController")
public class RaiseTicketController
extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String issueType =
                request.getParameter("issueType");

        String description =
                request.getParameter("description");

        HelpDTO dto =
                new HelpDTO();

        dto.setUserId(1); // temporary
        dto.setIssueType(issueType);
        dto.setDescription(description);

        HelpDAO dao =
                new HelpDAO();

        dao.createTicket(dto);

        response.sendRedirect(
                "ticketSuccess.jsp");
    }
}