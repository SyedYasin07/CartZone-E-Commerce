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
             PreparedStatement ps = con.prepareStatement("SELECT * FROM products");
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Flipkart_Dto p = new Flipkart_Dto();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));
                p.setCategory(rs.getString("category"));
                p.setColor(rs.getString("color"));
                p.setSize(rs.getString("size"));
                p.setRam(rs.getString("ram"));
                p.setStorage(rs.getString("storage"));
                p.setDisplaySize(rs.getString("display_size"));


                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Flipkart_Dto> getProductsBySeller(int sellerId){

        List<Flipkart_Dto> list = new ArrayList<>();

        String sql =
        "SELECT * FROM products WHERE seller_id=?";

        try(Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)){

            ps.setInt(1, sellerId);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){

            	Flipkart_Dto dto = new Flipkart_Dto();

                dto.setId(rs.getInt("id"));
                dto.setName(rs.getString("name"));
                dto.setPrice(rs.getDouble("price"));
                dto.setImage(rs.getString("image"));
                dto.setCategory(rs.getString("category"));
                dto.setSellerId(rs.getInt("seller_id"));
                dto.setColor(rs.getString("color"));
                dto.setSize(rs.getString("size"));
                dto.setRam(rs.getString("ram"));
                dto.setStorage(rs.getString("storage"));
                dto.setDisplaySize(rs.getString("display_size"));

                list.add(dto);
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }
    public void addProduct(Flipkart_Dto dto) {

        String sql = "INSERT INTO products(name, price, image, category, seller_id) VALUES(?,?,?,?,?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, dto.getName());
            ps.setDouble(2, dto.getPrice());
            ps.setString(3, dto.getImage());
            ps.setString(4, dto.getCategory());
            ps.setInt(5, dto.getSellerId());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
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
    public boolean updateProduct(int productId, String name, double price,
            String image, String category) {

String sql = "UPDATE products SET name=?, price=?, image=?, category=? WHERE id=?";

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
    public List<Flipkart_Dto> searchProducts(String keyword){

        List<Flipkart_Dto> list =
                new ArrayList<>();

        String sql =
        "SELECT * FROM products WHERE name LIKE ? OR category LIKE ?";

        try(Connection con =
                DBConnection.getConnection();

            PreparedStatement ps =
                con.prepareStatement(sql)) {

            ps.setString(1, "%" + keyword + "%");
            ps.setString(2, "%" + keyword + "%");
            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()){

            	Flipkart_Dto p =
                        new Flipkart_Dto();

                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));
                p.setCategory(rs.getString("category"));
                p.setColor(rs.getString("color"));
                p.setSize(rs.getString("size"));
                p.setRam(rs.getString("ram"));
                p.setStorage(rs.getString("storage"));
                p.setDisplaySize(rs.getString("display_size"));
         

                list.add(p);
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }
    public List<Flipkart_Dto> getProductsByCategory(String category){

        List<Flipkart_Dto> list = new ArrayList<>();

        String sql =
            "SELECT * FROM products WHERE category=?";

        try(Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, category);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){

                Flipkart_Dto p = new Flipkart_Dto();

                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));
                p.setCategory(rs.getString("category"));
                p.setColor(rs.getString("color"));
                p.setSize(rs.getString("size"));
                p.setRam(rs.getString("ram"));
                p.setStorage(rs.getString("storage"));
                p.setDisplaySize(rs.getString("display_size"));

                list.add(p);
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }
    public Flipkart_Dto getProductById(int id) {

        Flipkart_Dto p = null;

        String sql = "SELECT * FROM products WHERE id=?";

        try(Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                p = new Flipkart_Dto();

                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));
                p.setCategory(rs.getString("category"));

                p.setColor(rs.getString("color"));
                p.setSize(rs.getString("size"));
                p.setRam(rs.getString("ram"));
                p.setStorage(rs.getString("storage"));
                p.setDisplaySize(rs.getString("display_size"));
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return p;
    }
    
}
