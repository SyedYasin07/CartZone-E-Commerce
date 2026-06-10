package com.pst.flip.DTO;

public class CartDTO {

    private int userId;
    private int productId;

    // ADD THESE 👇
    private String name;
    private double price;
    private String image;
    private String catageory;
    private int quantity;

    public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getCatageory() {
		return catageory;
	}
	public void setCatageory(String catageory) {
		this.catageory = catageory;
	}
	// getters & setters
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public int getProductId() { return productId; }
    public void setProductId(int productId) { this.productId = productId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public String getImage() { return image; }
    public void setImage(String image) { this.image = image; }
	@Override
	public String toString() {
		return "CartDTO [userId=" + userId + ", productId=" + productId + ", name=" + name + ", price=" + price
				+ ", image=" + image + ", catageory=" + catageory + ", quantity=" + quantity + " ]";
	}
    
}
