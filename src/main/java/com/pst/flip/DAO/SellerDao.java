package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.pst.flip.DTO.DBConnection;
import com.pst.flip.DTO.SellerDto;


public class SellerDao {
	public boolean registerSeller(SellerDto dto) {

	    String sql =
	    "INSERT INTO sellers(seller_name,email,phone,business_name,gst_number,address) VALUES(?,?,?,?,?,?)";

	    try(Connection con = DBConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setString(1, dto.getSellerName());
	        ps.setString(2, dto.getEmail());
	        ps.setString(3, dto.getPhone());
	        ps.setString(4, dto.getBusinessName());
	        ps.setString(5, dto.getGstNumber());
	        ps.setString(6, dto.getAddress());

	        return ps.executeUpdate() > 0;

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return false;
	}
	public int getSellerIdByEmail(String email) {

	    String sql = "SELECT seller_id FROM sellers WHERE email=?";

	    try (Connection con = DBConnection.getConnection();
	         PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setString(1, email);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            return rs.getInt("seller_id");
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return -1;
	}
}
