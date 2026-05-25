package com.pst.flip.DAO;

import com.pst.flip.DTO.OrderDTO;
import com.pst.util.DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {
		
	
		public void buy(OrderDTO orders) {
			Connection con=DBConnection.getConnection();
			String sql="insert into flip.orders(user_Id,Address,Product_Id,Payment_Mode,order_status) values (?,?,?,?,?)";
			try {
				PreparedStatement ps= con.prepareStatement(sql);
//				ps.setInt(1, orders.getOrderId());
				ps.setInt(1, orders.getUserId());
				ps.setString(2, orders.getAddress());
				ps.setInt(3, orders.getProductId());
				ps.setString(4, orders.getPaymentMode());
				ps.setString(5, "PLACED");
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

		    String sql = "SELECT o.order_id, p.name AS product_name,p.image AS product_image, o.Address, " +
		                 "o.payment_mode, o.order_date, o.order_status " +
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
