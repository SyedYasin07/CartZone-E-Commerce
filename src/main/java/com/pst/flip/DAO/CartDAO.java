package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.pst.flip.DTO.CartDTO;
import com.pst.util.DB.DBConnection;

public class CartDAO {
//	public void addToCart(CartDTO cart) {
//		Connection con=DBConnection.getConnection();
//		
//		String sql="Insert into cart(user_id,product_id) VALUES (?,?)";
//		try {
//			PreparedStatement ps =con.prepareStatement(sql);
//			ps.setInt(1, cart.getUserId());
//			ps.setInt(2, cart.getProductId());
//			ps.executeUpdate();
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//	}
	public void addToCart(CartDTO cart) {

	    try(Connection con = DBConnection.getConnection()) {

	        String check =
	        "SELECT quantity FROM cart WHERE user_id=? AND product_id=?";

	        PreparedStatement ps = con.prepareStatement(check);

	        ps.setInt(1, cart.getUserId());
	        ps.setInt(2, cart.getProductId());

	        ResultSet rs = ps.executeQuery();

	        if(rs.next()) {

	            String update =
	            "UPDATE cart SET quantity=quantity+1 WHERE user_id=? AND product_id=?";

	            PreparedStatement ups = con.prepareStatement(update);

	            ups.setInt(1, cart.getUserId());
	            ups.setInt(2, cart.getProductId());

	            ups.executeUpdate();

	        } else {

	            String insert =
	            "INSERT INTO cart(user_id,product_id,quantity) VALUES(?,?,1)";

	            PreparedStatement ips = con.prepareStatement(insert);

	            ips.setInt(1, cart.getUserId());
	            ips.setInt(2, cart.getProductId());

	            ips.executeUpdate();
	        }

	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}
	public void deleteFromCart(int productId,int userId)  {
		String sql= "Delete From cart where product_id=? AND user_id=?";
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
    "SELECT p.id, p.name, p.price, p.image, p.category, c.quantity " +
    "FROM cart c " +
    "JOIN products p ON c.product_id = p.id " +
    "WHERE c.user_id = ?";

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
	            cart.setQuantity(rs.getInt("quantity"));

	            list.add(cart);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	public void increaseQuantity(int productId,int userId) {

	    String sql =
	    "UPDATE cart SET quantity=quantity+1 WHERE product_id=? AND user_id=?";

	    try(Connection con=DBConnection.getConnection();
	        PreparedStatement ps=con.prepareStatement(sql)) {

	        ps.setInt(1, productId);
	        ps.setInt(2, userId);

	        ps.executeUpdate();

	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}
	public void decreaseQuantity(int productId,int userId) {

	    String sql =
	    "UPDATE cart SET quantity=quantity-1 WHERE product_id=? AND user_id=? AND quantity>1";

	    try(Connection con=DBConnection.getConnection();
	        PreparedStatement ps=con.prepareStatement(sql)) {

	        ps.setInt(1, productId);
	        ps.setInt(2, userId);

	        ps.executeUpdate();

	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}
	public boolean addToWishlist(int userId, int productId) {

	    String sql =
	        "INSERT INTO wishlist(user_id, product_id) VALUES (?,?)";

	    try(Connection con = DBConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setInt(1, userId);
	        ps.setInt(2, productId);

	        return ps.executeUpdate() > 0;

	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}

	public List<CartDTO> getWishlistByUser(int userId){

	    List<CartDTO> list = new ArrayList<>();

	  String sql =
    "SELECT p.id, p.name, p.price, p.image, p.category " +
    "FROM wishlist w " +
    "JOIN products p ON w.product_id = p.id " +
    "WHERE w.user_id = ?";

	    try(Connection con = DBConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement(sql)){

	        ps.setInt(1, userId);

	        ResultSet rs = ps.executeQuery();

	        while(rs.next()){

	            CartDTO dto = new CartDTO();

	            dto.setProductId(rs.getInt("id"));
	            dto.setName(rs.getString("name"));
	            dto.setPrice(rs.getDouble("price"));
	            dto.setImage(rs.getString("image"));
	            dto.setCatageory(rs.getString("category"));

	            list.add(dto);
	        }

	    }catch(Exception e){
	        e.printStackTrace();
	    }

	    return list;
	}
	public boolean removeFromWishlist(int userId, int productId) {

	    String sql =
	        "DELETE FROM wishlist WHERE user_id=? AND product_id=?";

	    try(Connection con = DBConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setInt(1, userId);
	        ps.setInt(2, productId);

	        return ps.executeUpdate() > 0;

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return false;
	}



}
