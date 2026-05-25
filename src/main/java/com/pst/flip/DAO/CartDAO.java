package com.pst.flip.DAO;

import com.pst.flip.DTO.CartDTO;
import com.pst.util.DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
	public void addToCart(CartDTO cart) {
		Connection con=DBConnection.getConnection();
		
		String sql="Insert into flip.cart(user_id,product_id) VALUES (?,?)";
		try {
			PreparedStatement ps =con.prepareStatement(sql);
			ps.setInt(1, cart.getUserId());
			ps.setInt(2, cart.getProductId());
			ps.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public void deleteFromCart(int productId,int userId)  {
		String sql= "Delete From flip.cart where product_id=? AND user_id=?";
		try(Connection con=DBConnection.getConnection();
				PreparedStatement ps=con.prepareStatement(sql)){
			ps.setInt(1, productId);
			ps.setInt(2, userId);
			ps.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public List<CartDTO> getCartByUser(int userId) {

	    List<CartDTO> list = new ArrayList<>();

	    String sql = 
	        "SELECT p.id, p.name, p.price, p.image,p.category"+
	        "FROM flip.cart c "+
	        "JOIN flip.products p ON c.product_id = p.id"+
	        "WHERE c.user_id = ?"
	    ;

	    try (Connection con = DBConnection.getConnection();
	         PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setInt(1, userId);
	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            CartDTO cart = new CartDTO();
	            cart.setProductId(rs.getInt("id"));
	            cart.setName(rs.getString("name"));
	            cart.setPrice(rs.getDouble("price"));
	            cart.setImage(rs.getString("image"));
	            cart.setCatageory(rs.getString("category"));

	            list.add(cart);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}





}
