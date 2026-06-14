package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pst.flip.DTO.userDto;
import com.pst.util.DB.DBConnection;

public class userDao {


public boolean registerUser(userDto user) {

    String sql = "INSERT INTO users(name,email,phone,password,address) VALUES(?,?,?,?,?)";

    try(Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql)) {

        ps.setString(1, user.getName());
        ps.setString(2, user.getEmail());
        ps.setLong(3, user.getPhone());
        ps.setString(4, user.getPassword());
        ps.setString(5, user.getAddress());

        return ps.executeUpdate() > 0;

    } catch(Exception e) {
        e.printStackTrace();
    }

    return false;
}
}