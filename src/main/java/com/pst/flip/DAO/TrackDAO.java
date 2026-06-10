package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pst.flip.DTO.OrderDTO;
import com.pst.util.DB.DBConnection;

public class TrackDAO {

	public List<OrderDTO> getOrdersByUser(int userId) {
	    List<OrderDTO> list = new ArrayList<>();

	    String sql =    "SELECT o.order_id, p.name AS product_name, o.Address, " +
	    	    "o.payment_mode, o.order_date, o.order_status " +
	    	    "FROM flip.orders o " +
	    	    "JOIN flip.products p ON o.product_id = p.id " +
	    	    "WHERE o.user_id = ?";

	    try (Connection con = DBConnection.getConnection();
	         PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setInt(1, userId);

	        try (ResultSet rs = ps.executeQuery()) {
	            while (rs.next()) {
	                OrderDTO o = new OrderDTO();
	                o.setOrderId(rs.getInt("order_id"));
	                o.setProductName(rs.getString("product_name"));
	                o.setAddress(rs.getString("Address"));
	                o.setPaymentMode(rs.getString("payment_mode"));
	                o.setOrderDate(rs.getString("order_date"));
	                o.setOrderStatus(rs.getString("order_status"));


//or .toString() if your DTO uses String
	                list.add(o);
	            }
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
}