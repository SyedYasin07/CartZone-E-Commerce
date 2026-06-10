package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pst.flip.DTO.DBConnection;
import com.pst.flip.DTO.OrderDTO;

public class OrderDAO {
		
	
		public void buy(OrderDTO orders) {
			Connection con=DBConnection.getConnection();
			String sql = "INSERT INTO flip.orders(user_Id, Address, Product_Id, Payment_Mode, order_status, color, size, ram, storage, screen_size) VALUES (?,?,?,?,?,?,?,?,?,?)";
			try {
				PreparedStatement ps= con.prepareStatement(sql);
//				ps.setInt(1, orders.getOrderId());
				ps.setInt(1, orders.getUserId());
				ps.setString(2, orders.getAddress());
				ps.setInt(3, orders.getProductId());
				ps.setString(4, orders.getPaymentMode());
				ps.setString(5, "PLACED");
				ps.setString(6, orders.getColor());
				ps.setString(7, orders.getSize());
				ps.setString(8, orders.getRam());
				ps.setString(9, orders.getStorage());
				ps.setString(10, orders.getScreenSize());

				ps.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		public void deleteOrder(int orderId) {
		    String sql = "DELETE FROM flip.orders WHERE order_id = ?";

		    try (Connection con = DBConnection.getConnection();
		         PreparedStatement ps = con.prepareStatement(sql)) {

		        ps.setInt(1, orderId);
		        ps.executeUpdate();

		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		}
		public OrderDTO getOrderById(int orderId) {
		    OrderDTO o = null;

		    String sql = "SELECT o.order_id, p.name AS product_name, p.image AS product_image, " +
		             "o.Address, o.payment_mode, o.order_date, o.order_status, " +
		             "o.color, o.size, o.ram, o.storage, o.screen_size " +
		             "FROM flip.orders o " +
		             "JOIN flip.products p ON o.product_id = p.id " +
		             "WHERE o.order_id = ?";

		    try (Connection con = DBConnection.getConnection();
		         PreparedStatement ps = con.prepareStatement(sql)) {

		        ps.setInt(1, orderId);

		        ResultSet rs = ps.executeQuery();

		        if (rs.next()) {
		            o = new OrderDTO();

		            o.setOrderId(rs.getInt("order_id"));
		            o.setProductName(rs.getString("product_name"));
		            o.setAddress(rs.getString("Address"));
		            o.setPaymentMode(rs.getString("payment_mode"));
		            o.setOrderDate(rs.getString("order_date"));
		            o.setOrderStatus(rs.getString("order_status"));
		            o.setProductImage(rs.getString("product_image"));
		            o.setColor(rs.getString("color"));
		            o.setSize(rs.getString("size"));
		            o.setRam(rs.getString("ram"));
		            o.setStorage(rs.getString("storage"));
		            o.setScreenSize(rs.getString("screen_size"));
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return o;
		}
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


// or .toString() if your DTO uses String
		                list.add(o);
		            }
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return list;
		}
			

		
}
