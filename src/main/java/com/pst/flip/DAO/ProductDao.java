package com.pst.flip.DAO;

import com.pst.flip.DTO.Flipkart_Dto;
import com.pst.util.DB.DBConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {

    public List<Flipkart_Dto> getAllProducts() {
        List<Flipkart_Dto> list = new ArrayList<>();

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM flip.products");
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Flipkart_Dto p = new Flipkart_Dto();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));
                p.setCategory(rs.getString("category"));

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
