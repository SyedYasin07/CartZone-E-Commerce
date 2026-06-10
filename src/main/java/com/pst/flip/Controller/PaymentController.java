package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/payment")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    String pid = request.getParameter("productId");
	    String address = request.getParameter("address");
//	    String color = request.getParameter("color");
//        String size = request.getParameter("size");
//        String ram = request.getParameter("ram");
//        String storage = request.getParameter("storage");
//        String screenSize = request.getParameter("screenSize");

        System.out.println("DEBUG productId = " + pid);
//        System.out.println("DEBUG color = " + color);
//        System.out.println("DEBUG size = " + size);
//        System.out.println("DEBUG ram = " + ram);
//        System.out.println("DEBUG storage = " + storage);
//        System.out.println("DEBUG screenSize = " + screenSize);

	    System.out.println("DEBUG productId = " + pid);

	    // Validation
	    if (pid == null || pid.trim().isEmpty()) {
	        response.sendRedirect("error.jsp");
	        return;
	    }

	    int productId;
	    try {
	        productId = Integer.parseInt(pid);
	    } catch (NumberFormatException e) {
	        response.sendRedirect("error.jsp");
	        return;
	    }

	    request.getSession().setAttribute("productId", productId); 
	    request.getSession().setAttribute("address", address); 
//	    request.getSession().setAttribute("color", color);
//        request.getSession().setAttribute("size", size);
//        request.getSession().setAttribute("ram", ram);
//        request.getSession().setAttribute("storage", storage);
//        request.getSession().setAttribute("screenSize", screenSize);
	    request.getRequestDispatcher("Payment.jsp").forward(request, response);
	}


}
