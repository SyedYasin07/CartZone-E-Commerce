# 🛒 CartZone E-Commerce - Full Stack E-Commerce Platform

![Java](https://img.shields.io/badge/Java-Backend-orange)
![JSP](https://img.shields.io/badge/JSP-Servlets-blue)
![MySQL](https://img.shields.io/badge/MySQL-Database-green)
![Maven](https://img.shields.io/badge/Maven-Build-red)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED)

A feature-rich **CartZone E-Commerce Platform** developed using **Java, JSP, Servlets, JDBC, MySQL, Maven, and Docker**. The application provides a complete online shopping ecosystem including product browsing, cart management, wishlist functionality, order processing, seller onboarding, notifications, reviews, and order tracking.

---

# 🌐 Live Demo

🔗 **Application URL**

https://cartzone-e-commerce.onrender.com/Login.jsp

---

# 📖 Project Overview

The **CartZone E-Commerce Platform** replicates the core functionalities of a modern e-commerce marketplace by providing dedicated modules for both **Customers** and **Sellers**.

Customers can browse products, manage carts, place orders, track deliveries, and submit reviews, while sellers can register, manage inventory, and monitor their products through a dedicated seller dashboard.

The project follows a layered architecture consisting of:

* Presentation Layer (JSP)
* Controller Layer (Servlets)
* Business Logic Layer
* DAO Layer
* JDBC Integration Layer
* MySQL Database Layer

This architecture ensures maintainability, scalability, and separation of concerns.

---

# ✨ Key Features

## 👤 Customer Features

### 🔐 Authentication

* User Registration
* User Login
* Session Management
* Secure Authentication

### 🔍 Product Discovery

* Browse Products
* Product Search
* Category-Based Navigation
* Dynamic Search Results

### 📦 Product Management

* Product Details View
* Product Specifications
* Product Images
* Product Variants (Size & Color)

### 🛒 Shopping Experience

* Add To Cart
* Cart Management
* Quantity Updates
* Wishlist Management
* Buy Now Functionality

### 💳 Checkout Workflow

* Delivery Address Collection
* Payment Selection
* Cash On Delivery (COD)
* Online Payment Support
* Order Confirmation

### 📑 Order Management

* Place Orders
* View Order History
* Order Details
* Order Tracking

### ⭐ Customer Services

* Product Reviews
* Notifications
* Customer Care
* Help Center
* Contact Us
* Raise Support Tickets

---

## 🏪 Seller Features

### Seller Portal

* Become A Seller Registration
* Seller Login
* Seller Dashboard

### Product Management

* Add Products
* View Products
* Update Product Information
* Inventory Management

---

# 🛍️ Product Categories

* 📱 Mobiles
* 💻 Electronics
* 👕 Fashion
* 👔 Men's Clothing
* 👗 Women's Clothing
* 🛒 Grocery
* 🏠 Home & Furniture
* 💄 Beauty Products
* 🔌 Appliances

---

# 🏗️ System Architecture

```text
        Customer / Seller
                │
                ▼
         JSP Frontend
      (HTML + CSS + JS)
                │
                ▼
          Java Servlets
                │
                ▼
      Business Logic Layer
                │
                ▼
            DAO Layer
                │
                ▼
               JDBC
                │
                ▼
         MySQL Database
```

---

# ⚙️ Technology Stack

## Frontend

* HTML5
* CSS3
* Bootstrap
* JavaScript
* JSP

## Backend

* Java
* Servlets
* JDBC

## Database

* MySQL

## Build Tool

* Maven

## Deployment

* Docker
* Apache Tomcat
* Render

---

# 📂 Project Structure

```text
CartZone-E-Commerce/
│
├── src/
│   └── main/
│       ├── java/
│       ├── webapp/
│       └── resources/
│
├── Dockerfile
├── pom.xml
├── README.md
├── flip.sql
└── CartZone pics/
```

---

# 📸 Project Screenshots

## 🏠 Home Page

![Home Page](CartZone%20pics/Intro.png)

## 🔐 Authentication

### User Login

![Login](CartZone%20pics/login.png)

### User Registration

![Register](CartZone%20pics/Register.png)

---

## 🔍 Product Discovery

### Product Search

![Search](CartZone%20pics/SearchList.png)

### Product Details

![Product Details](CartZone%20pics/ProdcutView.png)

---

## 🛒 Shopping Experience

### Shopping Cart

![Cart](CartZone%20pics/Mycart.png)

### Wishlist

![Wishlist](CartZone%20pics/wishlist.png)

### Buy Now

![Buy Now](CartZone%20pics/buy.png)

### Product Details View

![View Details](CartZone%20pics/ViewDetails.png)

---

## 💳 Checkout Process

### Delivery Address

![Address](CartZone%20pics/Address.png)

### Payment Selection

![Payment](CartZone%20pics/Payment.png)

### Order Success

![Order Success](CartZone%20pics/OrderSuccess.png)

---

## 📦 Order Management

### My Orders

![My Orders](CartZone%20pics/MyOrders.png)

### Order Tracking

![Track Order](CartZone%20pics/TrackOrder.png)

---

## ⭐ Customer Services

### Notifications

![Notifications](CartZone%20pics/Notifications.png)

### Product Reviews

![Reviews](CartZone%20pics/Review.png)

### Help Center

![Help Center](CartZone%20pics/Help.png)

### Customer Care

![Customer Care](CartZone%20pics/Customer.png)

### Contact Us

![Contact Us](CartZone%20pics/Contact.png)

### Raise Support Ticket

![Raise Ticket](CartZone%20pics/RaiseTicket.png)

---

## 🏪 Seller Module

### Seller Login

![Seller Login](CartZone%20pics/SellerLogin.png)

### Seller Registration

![Seller Registration](CartZone%20pics/SellerRegister.png)

### Add Product

![Add Product](CartZone%20pics/Selleraddproduct.png)

### Seller Dashboard

![Seller Dashboard](CartZone%20pics/Sellerdashboard.png)

### Seller Products

![Seller Products](CartZone%20pics/sellerProducts.png)

---

# 🚀 Installation Guide

## 1️⃣ Clone Repository

```bash
git clone https://github.com/SyedYasin07/CartZone-E-Commerce.git
```

## 2️⃣ Navigate To Project

```bash
cd CartZone-E-Commerce
```

## 3️⃣ Configure Database

```sql
CREATE DATABASE cartzone;
```

```sql
SOURCE flip.sql;
```

## 4️⃣ Configure JDBC Connection

```java
String url = "jdbc:mysql://localhost:3306/cartzone";
String username = "root";
String password = "your_password";
```

## 5️⃣ Build Project

```bash
mvn clean install
```

## 6️⃣ Run Application

```text
http://localhost:8080/CartZone
```

---

# 🐳 Docker Deployment

## Build Docker Image

```bash
docker build -t cartzone .
```

## Run Docker Container

```bash
docker run -p 8080:8080 cartzone
```

---

# 🎯 Learning Outcomes

* Full Stack Java Development
* MVC Architecture
* JDBC Integration
* Session Management
* CRUD Operations
* Authentication & Authorization
* Shopping Cart Workflow
* Order Processing System
* Seller Marketplace Management
* Docker Deployment
* Cloud Deployment Using Render

---

# 🚀 Future Enhancements

* Spring Boot Migration
* Spring Security Authentication
* JWT Authorization
* Razorpay Payment Gateway Integration
* Email Notifications
* Admin Dashboard
* Product Recommendation System
* Coupon & Discount Engine
* Inventory Analytics
* REST APIs
* Microservices Architecture

---

# 👨‍💻 Author

## Syed Yasin

GitHub:

https://github.com/SyedYasin07

Live Project:

https://cartzone-e-commerce.onrender.com/Login.jsp

---

# 🤝 Contributing

Contributions are welcome.

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push the branch
5. Open a Pull Request

---

# ⭐ Support

If you found this project useful, consider giving it a **Star ⭐** on GitHub.

