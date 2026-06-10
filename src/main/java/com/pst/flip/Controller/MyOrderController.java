package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ArrayList;

import com.pst.flip.DAO.OrderDAO;
import com.pst.flip.DTO.OrderDTO;


@WebServlet("/myOrders")
public class MyOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId=1;
		OrderDAO dao= new OrderDAO();
		List<OrderDTO> orders= dao.getOrdersByUser(userId);
		request.setAttribute("orders", orders);
		request.getRequestDispatcher("myOrders.jsp").forward(request, response);
	}

}
