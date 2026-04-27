package com.dao;

import java.sql.*;
import java.util.*;
import com.model.Product;

public class ProductDAO {
    // CHANGE THESE to your actual database name, username, and password
    private String url = "jdbc:mysql://localhost:3306/productdb";
    private String user = "root";
    private String pass = "$mayka@1310";

    protected Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(url, user, pass);
    }

    // 1. ADD PRODUCT (Auto-increment handled by DB)
    public void addProduct(Product p) throws SQLException {
        String sql = "INSERT INTO Products (ProductName, Category, Price, Quantity) VALUES (?, ?, ?, ?)";
        try (Connection conn = getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, p.getProductName());
            st.setString(2, p.getCategory());
            st.setDouble(3, p.getPrice());
            st.setInt(4, p.getQuantity());
            st.executeUpdate();
        }
    }

    // 2. UPDATE PRODUCT
    public void updateProduct(Product p) throws SQLException {
        String sql = "UPDATE Products SET ProductName=?, Category=?, Price=?, Quantity=? WHERE ProductID=?";
        try (Connection conn = getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, p.getProductName());
            st.setString(2, p.getCategory());
            st.setDouble(3, p.getPrice());
            st.setInt(4, p.getQuantity());
            st.setInt(5, p.getProductId());
            st.executeUpdate();
        }
    }

    // 3. DELETE PRODUCT
    public void deleteProduct(int id) throws SQLException {
        String sql = "DELETE FROM Products WHERE ProductID=?";
        try (Connection conn = getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            st.executeUpdate();
        }
    }

    // 4. DISPLAY ALL PRODUCTS
    public List<Product> getAllProducts() throws SQLException {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products";
        try (Connection conn = getConnection(); 
             Statement st = conn.createStatement(); 
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                list.add(new Product(
                    rs.getInt("ProductID"), 
                    rs.getString("ProductName"), 
                    rs.getString("Category"), 
                    rs.getDouble("Price"), 
                    rs.getInt("Quantity")
                ));
            }
        }
        return list;
    }

    // 5. REPORT: PRICE > VALUE
    public List<Product> getByPrice(double price) throws SQLException {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products WHERE Price > ?";
        try (Connection conn = getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
            st.setDouble(1, price);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5)));
            }
        }
        return list;
    }

    // 6. REPORT: BY CATEGORY
    public List<Product> getByCategory(String cat) throws SQLException {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products WHERE Category = ?";
        try (Connection conn = getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, cat);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5)));
            }
        }
        return list;
    }

    // 7. REPORT: TOP N BY QUANTITY
    public List<Product> getTopProducts(int n) throws SQLException {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products ORDER BY Quantity DESC LIMIT ?";
        try (Connection conn = getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, n);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5)));
            }
        }
        return list;
    }
}