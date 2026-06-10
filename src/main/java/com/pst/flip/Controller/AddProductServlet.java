//package com.pst.flip.Controller;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//
//import com.pst.flip.DAO.ProductDao;
//import com.pst.flip.DTO.Flipkart_Dto;
//
//
//@WebServlet("/AddProductServlet")
//public class AddProductServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession(false);
//		int sellerId = (int) session.getAttribute("sellerId"); // temporary
//
//		Flipkart_Dto dto = new Flipkart_Dto();
//
//		dto.setName(request.getParameter("name"));
//		dto.setPrice(
//		Double.parseDouble(
//		request.getParameter("price")));
//
//		dto.setImage(request.getParameter("image"));
//		dto.setCategory(
//		request.getParameter("category"));
//
//		dto.setSellerId(sellerId);
//
//		ProductDao dao = new ProductDao();
//
//		dao.addProduct(dto);
//
//		response.sendRedirect("ViewSellerProductsServlet");
//	}
//
//}
package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.pst.flip.DAO.ProductDao;
import com.pst.flip.DTO.Flipkart_Dto;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 🔐 Get session safely
        HttpSession session = request.getSession(false);

        // ❌ If not logged in → redirect
        if (session == null || session.getAttribute("sellerId") == null) {
            response.sendRedirect("sellerLogin.jsp"); // or intro.jsp
            return;
        }

        // ✅ Safe cast
        int sellerId = (Integer) session.getAttribute("sellerId");

        // 📦 Create DTO
        Flipkart_Dto dto = new Flipkart_Dto();
        dto.setName(request.getParameter("name"));
        dto.setPrice(Double.parseDouble(request.getParameter("price")));
        dto.setImage(request.getParameter("image"));
        dto.setCategory(request.getParameter("category"));
        dto.setSellerId(sellerId);

        // 💾 Save product
        ProductDao dao = new ProductDao();
        dao.addProduct(dto);

        // 🔁 Redirect after success
        response.sendRedirect("ViewSellerProductsServlet");
    }
}
