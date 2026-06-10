package com.pst.flip.DTO;
public class Flipkart_Dto {
   
	@Override
	public String toString() {
		return "Flipkart_Dto [id=" + id + ", name=" + name + ", price=" + price + ", image=" + image + ", category="
				+ category + ", sellerId=" + sellerId + ", color=" + color + ", size=" + size + ", ram=" + ram
				+ ", storage=" + storage + ", displaySize=" + displaySize + "]";
	}
	private int id;
    private String name;
    private double price;
    private String image;
    private String category;
    private int sellerId;
    private String color;
    private String size;
    private String ram;
    private String storage;
    private String displaySize;
    

    public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getStorage() {
		return storage;
	}
	public void setStorage(String storage) {
		this.storage = storage;
	}
	public String getDisplaySize() {
		return displaySize;
	}
	public void setDisplaySize(String displaySize) {
		this.displaySize = displaySize;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	// Getters & Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public String getImage() { return image; }
    public void setImage(String image) { this.image = image; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
}
