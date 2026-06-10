package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pst.flip.DTO.HelpDTO;
import com.pst.util.DB.DBConnection;

public class HelpDAO {

    public boolean createTicket(HelpDTO dto) {

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
            "insert into help_tickets(user_id,issue_type,description,status) values(?,?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, dto.getUserId());
            ps.setString(2, dto.getIssueType());
            ps.setString(3, dto.getDescription());
            ps.setString(4, "Open");

            return ps.executeUpdate() > 0;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}