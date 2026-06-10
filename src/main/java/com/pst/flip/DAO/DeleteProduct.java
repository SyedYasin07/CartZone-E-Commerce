package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pst.util.DB.DBConnection;

public class DeleteProduct {
	public boolean deleteProduct(int productId){

	    String sql =
	    "DELETE FROM products WHERE id=?";

	    try(Connection con = DBConnection.getConnection();
	        PreparedStatement ps =
	        con.prepareStatement(sql)){

	        ps.setInt(1, productId);

	        return ps.executeUpdate() > 0;

	    }catch(Exception e){
	        e.printStackTrace();
	    }

	    return false;
	}
}
