package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.SellerDao;
import com.pst.flip.DTO.SellerDto;


@WebServlet("/sellerRegister")
public class SellerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//
//        SellerDto dto = new  SellerDto();
//
//        dto.setSellerName(
//                request.getParameter("name"));
//
//        dto.setEmail(
//                request.getParameter("email"));
//
//        dto.setPhone(
//                request.getParameter("phone"));
//
//        dto.setBusinessName(
//                request.getParameter("business"));
//
//        dto.setGstNumber(
//                request.getParameter("gst"));
//
//        dto.setAddress(
//                request.getParameter("address"));
//
//        SellerDao dao = new SellerDao();
//
//        if(dao.registerSeller(dto)) {
//
//            response.sendRedirect(
//                    "sellerSuccess.jsp");
//
//        } else {
//
//            response.sendRedirect(
//                    "sellerFail.jsp");
//	}
//
//}
	protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
throws ServletException, IOException {

String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String business = request.getParameter("business");
String gst = request.getParameter("gst");
String address = request.getParameter("address");

if(name == null || name.trim().isEmpty() ||
email == null || email.trim().isEmpty() ||
phone == null || phone.trim().isEmpty() ||
business == null || business.trim().isEmpty() ||
gst == null || gst.trim().isEmpty() ||
address == null || address.trim().isEmpty()) {

response.sendRedirect("sellerFail.jsp");
return;
}

SellerDto dto = new SellerDto();

dto.setSellerName(name);
dto.setEmail(email);
dto.setPhone(phone);
dto.setBusinessName(business);
dto.setGstNumber(gst);
dto.setAddress(address);

SellerDao dao = new SellerDao();

if(dao.registerSeller(dto)) {
response.sendRedirect("sellerSuccess.jsp");
} else {
response.sendRedirect("sellerFail.jsp");
}
}
}
