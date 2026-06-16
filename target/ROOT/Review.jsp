<%@page import="java.util.List"%>
<%@page import="com.pst.flip.DTO.ReviewDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/ico" href="images/favicon.ico">
<title>Product Reviews</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f1f3f6;
    padding:40px;
}

.container{
    max-width:900px;
    margin:auto;
}

.review-form{
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    margin-bottom:30px;
}

.review-form h2{
    color:#2874f0;
    margin-bottom:20px;
}

select,
textarea{
    width:100%;
    padding:12px;
    margin-top:10px;
    margin-bottom:20px;

    border:1px solid #ddd;
    border-radius:8px;
}

textarea{
    resize:none;
    height:120px;
}

button{
    background:#2874f0;
    color:white;

    border:none;

    padding:12px 25px;

    border-radius:8px;

    cursor:pointer;

    font-size:16px;
}

button:hover{
    background:#0b57d0;
}

.review-list{
    background:white;
    border-radius:15px;
    padding:25px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.review-list h2{
    color:#333;
    margin-bottom:20px;
}

.review-card{
    padding:20px;
    border-bottom:1px solid #eee;
}

.review-card:last-child{
    border-bottom:none;
}

.rating{
    color:#ff9800;
    font-size:18px;
    margin-bottom:8px;
}

.review-text{
    color:#444;
    margin-bottom:10px;
}

.review-date{
    color:#888;
    font-size:13px;
}

.no-review{
    text-align:center;
    color:#777;
    padding:30px;
}
.success-box{
    background:#e8f5e9;
    color:#2e7d32;
    padding:15px;
    margin-bottom:20px;
    border-left:5px solid #2e7d32;
    border-radius:8px;
    font-weight:600;
    box-shadow:0 3px 10px rgba(0,0,0,.08);
}

</style>
</head>

<body>

<%
Integer productId =
(Integer)request.getAttribute("productId");

List<ReviewDTO> reviews =
(List<ReviewDTO>)request.getAttribute("reviews");
%>

<div class="container">

    <!-- Review Form -->

   <%
String successMessage =
(String)request.getAttribute("successMessage");

if(successMessage != null){
%>

<div class="success-box">
    ✅ <%= successMessage %>
</div>

<%
}
%>

<div class="review-form">

    <h2>Write a Review</h2>

    <form action="addReview" method="post">

        <input type="hidden"
               name="productId"
               value="<%=productId%>">

        <label>Rating</label>

        <select name="rating" required>

            <option value="">
                Select Rating
            </option>

            <option value="1">
                ⭐ 1 Star
            </option>

            <option value="2">
                ⭐⭐ 2 Stars
            </option>

            <option value="3">
                ⭐⭐⭐ 3 Stars
            </option>

            <option value="4">
                ⭐⭐⭐⭐ 4 Stars
            </option>

            <option value="5">
                ⭐⭐⭐⭐⭐ 5 Stars
            </option>

        </select>

        <label>Review</label>

        <textarea
            name="reviewText"
            placeholder="Write your review here..."
            required></textarea>

        <button type="submit">
            Submit Review
        </button>

    </form>

</div>

    <!-- Reviews -->

    <div class="review-list">

        <h2>Customer Reviews</h2>

        <%
        if(reviews != null &&
           !reviews.isEmpty()){

            for(ReviewDTO r : reviews){
        %>

        <div class="review-card">

            <div class="rating">

                <%
                for(int i=1;
                    i<=r.getRating();
                    i++){
                %>

                ⭐

                <%
                }
                %>

            </div>

            <div class="review-text">

                <%=r.getReviewText()%>

            </div>

            <div class="review-date">

                <%=r.getReview_date()%>

            </div>
            <form action="deleteReview" method="post">

    <input type="hidden"
           name="reviewId"
           value="<%=r.getReviewId()%>">

    <input type="hidden"
           name="productId"
           value="<%=productId%>">

    <button type="submit">
        Delete Review
    </button>

</form>

        </div>

        <%
            }
        }else{
        %>

        <div class="no-review">

            No reviews available yet.

        </div>

        <%
        }
        %>

    </div>

</div>

</body>
</html>