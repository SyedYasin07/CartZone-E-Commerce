package com.pst.flip.DTO;
public class OrderDTO {
	private int orderId;
	private String address;
    public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	private String orderDate;
    private String orderStatus;
    private String productName;
    private int UserId;
    private int ProductId;
    private String PaymentMode;
    private String productImage;
    private String color;
    private String size;
    private String ram;
    private String storage;
    private String screenSize;
    	

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
	public String getScreenSize() {
		return screenSize;
	}
	public void setScreenSize(String screenSize) {
		this.screenSize = screenSize;
	}
	
	
	public int getOrderId() {
		return orderId;
	}
	
	@Override
	public String toString() {
		return "OrderDTO [orderId=" + orderId + ", address=" + address + ", orderDate=" + orderDate + ", orderStatus="
				+ orderStatus + ", productName=" + productName + ", UserId=" + UserId + ", ProductId=" + ProductId
				+ ", PaymentMode=" + PaymentMode + ", productImage=" + productImage + ", color=" + color + ", size="
				+ size + ", ram=" + ram + ", storage=" + storage + ", screenSize=" + screenSize + "]";
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getOrderDate() {
        return orderDate;
    }
    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderStatus() {
        return orderStatus;
    }
    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getProductName() {
        return productName;
    }
    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getUserId() {
        return UserId;
    }
    public void setUserId(int userId) {
        this.UserId = userId;
    }

    public int getProductId() {
        return ProductId;
    }
    public void setProductId(int productId) {
        this.ProductId = productId;
    }

    public String getPaymentMode() {
        return PaymentMode;
    }
    public void setPaymentMode(String paymentMode) {
        this.PaymentMode = paymentMode;
    }
    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }
}
