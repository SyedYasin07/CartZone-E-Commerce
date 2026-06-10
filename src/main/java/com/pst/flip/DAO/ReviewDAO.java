package com.pst.flip.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pst.flip.DTO.ReviewDTO;
import com.pst.util.DB.DBConnection;


public class ReviewDAO {

    // Add Review
    public boolean addReview(ReviewDTO dto) {

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
                    "insert into flip.reviews(product_id,user_id,rating,review_text) values(?,?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, dto.getProductId());
            ps.setInt(2, dto.getUserId());
            ps.setInt(3, dto.getRating());
            ps.setString(4, dto.getReviewText());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // Get Reviews By Product Id
    public List<ReviewDTO> getReviewsByProductId(int productId) {

        List<ReviewDTO> list =
                new ArrayList<>();

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
                    "select * from flip.reviews where product_id=? order by review_date desc";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, productId);

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()) {

                ReviewDTO dto =
                        new ReviewDTO();

                dto.setReviewId(
                        rs.getInt("review_id"));

                dto.setProductId(
                        rs.getInt("product_id"));

                dto.setUserId(
                        rs.getInt("user_id"));

                dto.setRating(
                        rs.getInt("rating"));

                dto.setReviewText(
                        rs.getString("review_text"));

                dto.setReview_date(
                        rs.getTimestamp("review_date"));

                list.add(dto);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Average Rating
    public double getAverageRating(int productId) {

        double avgRating = 0;

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
                    "select avg(rating) as avg_rating from flip.reviews where product_id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, productId);

            ResultSet rs =
                    ps.executeQuery();

            if(rs.next()) {

                avgRating =
                        rs.getDouble("avg_rating");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return avgRating;
    }

    // Total Reviews Count
    public int getReviewCount(int productId) {

        int count = 0;

        try {

            Connection con =
                    DBConnection.getConnection();

            String sql =
                    "select count(*) as total from flip.reviews where product_id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, productId);

            ResultSet rs =
                    ps.executeQuery();

            if(rs.next()) {

                count =
                        rs.getInt("total");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }
    public boolean deleteReview(int reviewId) {

        String sql =
        "delete from flip.reviews where review_id=?";

        try {

            Connection con =
            DBConnection.getConnection();

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setInt(1, reviewId);

            return ps.executeUpdate() > 0;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}