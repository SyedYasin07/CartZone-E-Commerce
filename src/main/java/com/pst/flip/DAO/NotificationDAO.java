package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pst.util.DB.DBConnection;
import com.pst.flip.DTO.NotificationDTO;

public class NotificationDAO {
	
	public List<NotificationDTO> getAllNotifications() {

	    List<NotificationDTO> list = new ArrayList<>();

	    try {

	        Connection con = DBConnection.getConnection();

	        String sql =
	                "select * from notifications order by notification_id desc";

	        PreparedStatement ps =
	                con.prepareStatement(sql);

	        ResultSet rs = ps.executeQuery();

	        while(rs.next()) {

	            NotificationDTO dto =
	                    new NotificationDTO();

	            dto.setNotificationId(
	                    rs.getInt("notification_id"));

	            dto.setMessage(
	                    rs.getString("message"));

	            list.add(dto);
	        }

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
}
