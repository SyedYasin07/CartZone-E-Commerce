package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.pst.flip.DTO.userDto;
import com.pst.util.DB.DBConnection;

public class LoginDao {
	public userDto loginUser(String email, String password) {

	    String sql = "SELECT * FROM users WHERE email=? AND password=?";

	    try(Connection con = DBConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setString(1, email);
	        ps.setString(2, password);

	        ResultSet rs = ps.executeQuery();

	        if(rs.next()) {

	            userDto user = new userDto();

	            user.setId(rs.getInt("id"));
	            user.setName(rs.getString("name"));
	            user.setEmail(rs.getString("email"));
	            user.setPhone(rs.getLong("phone"));
	            user.setAddress(rs.getString("address"));

	            return user;
	        }else{
				System.out.println("UserNotFound");
			}

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return null;
	}

}
