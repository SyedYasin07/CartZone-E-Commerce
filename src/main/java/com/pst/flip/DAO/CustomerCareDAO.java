package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pst.flip.DTO.CustomerCareDTO;
import com.pst.util.DB.DBConnection;

public class CustomerCareDAO {

    // Add New Ticket
    public boolean addTicket(CustomerCareDTO dto) {

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
                    "insert into customer_care(user_id,subject,message) values(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, dto.getUserId());
            ps.setString(2, dto.getSubject());
            ps.setString(3, dto.getMessage());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // Get Tickets By User
    public List<CustomerCareDTO> getTicketsByUser(int userId) {

        List<CustomerCareDTO> list =
                new ArrayList<>();

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
                    "select * from customer_care where user_id=? order by created_at desc";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, userId);

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()) {

                CustomerCareDTO dto =
                        new CustomerCareDTO();

                dto.setTicketId(
                        rs.getInt("ticket_id"));

                dto.setUserId(
                        rs.getInt("user_id"));

                dto.setSubject(
                        rs.getString("subject"));

                dto.setMessage(
                        rs.getString("message"));

                dto.setStatus(
                        rs.getString("status"));

                dto.setCreatedAt(
                        rs.getTimestamp("created_at"));

                list.add(dto);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Admin - View All Tickets
    public List<CustomerCareDTO> getAllTickets() {

        List<CustomerCareDTO> list =
                new ArrayList<>();

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
                    "select * from customer_care order by created_at desc";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()) {

                CustomerCareDTO dto =
                        new CustomerCareDTO();

                dto.setTicketId(
                        rs.getInt("ticket_id"));

                dto.setUserId(
                        rs.getInt("user_id"));

                dto.setSubject(
                        rs.getString("subject"));

                dto.setMessage(
                        rs.getString("message"));

                dto.setStatus(
                        rs.getString("status"));

                dto.setCreatedAt(
                        rs.getTimestamp("created_at"));

                list.add(dto);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Admin - Update Ticket Status
    public boolean updateTicketStatus(int ticketId,
                                      String status) {

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
                    "update customer_care set status=? where ticket_id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, status);
            ps.setInt(2, ticketId);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}