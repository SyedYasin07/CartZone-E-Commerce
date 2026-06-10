package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.DeleteProduct;
import com.pst.flip.DAO.ProductDao;


@WebServlet("/deleteProduct")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void doPost(
	            HttpServletRequest request,
	            HttpServletResponse response)
	            throws ServletException, IOException {

	        int productId =
	        Integer.parseInt(
	        request.getParameter("productId"));

	        ProductDao dao =
	        new ProductDao();

	        dao.deleteProduct(productId);

	        response.sendRedirect(
	        "ViewSellerProductsServlet");
	 }

}
