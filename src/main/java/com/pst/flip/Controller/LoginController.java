package com.pst.flip.Controller;

import java.io.IOException;

import com.pst.flip.DAO.LoginDao;
import com.pst.flip.DTO.userDto;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        System.out.println("Email =["+ email +"]");
         System.out.println("Password =["+ password +"]");

        LoginDao dao = new LoginDao();

        userDto user = dao.loginUser(email, password);
        if(user != null) {

            HttpSession session = req.getSession();

            session.setAttribute("user", user);

            resp.sendRedirect("intro.jsp");
        }
        else {

        	

        	    resp.sendRedirect("error.jsp?msg=Invalid Email or Password");
        	

//            req.getRequestDispatcher("Login.jsp")
//               .forward(req, resp);
        }
    }
}