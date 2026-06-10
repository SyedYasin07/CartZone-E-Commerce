package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pst.flip.DTO.DBConnection;

public class UpdateProduct {
	public boolean updateProduct(int productId, String name, double price,
            String image, String category) {

String sql = "UPDATE flip.products SET name=?, price=?, image=?, category=? WHERE id=?";

try (Connection con = DBConnection.getConnection();
PreparedStatement ps = con.prepareStatement(sql)) {

ps.setString(1, name);
ps.setDouble(2, price);
ps.setString(3, image);
ps.setString(4, category);
ps.setInt(5, productId);

int rows = ps.executeUpdate();

System.out.println("Rows Updated = " + rows);

return rows > 0;

} catch (Exception e) {
e.printStackTrace();
}

return false;
}
}
