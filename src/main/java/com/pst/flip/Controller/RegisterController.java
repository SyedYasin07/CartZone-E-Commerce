package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.userDao;
import com.pst.flip.DTO.userDto;

@WebServlet("/register")
public class RegisterController extends HttpServlet {

    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {

        userDto user = new userDto();

        user.setName(req.getParameter("name"));
        user.setEmail(req.getParameter("email"));
        user.setPhone(Long.parseLong(req.getParameter("phone")));
        user.setPassword(req.getParameter("password"));
        user.setAddress(req.getParameter("address"));

        userDao dao = new userDao();

        boolean result = dao.registerUser(user);

        if(result) {
            resp.sendRedirect("Login.jsp");
        }
        else {
            resp.sendRedirect("Register.jsp");
        }
    }
}