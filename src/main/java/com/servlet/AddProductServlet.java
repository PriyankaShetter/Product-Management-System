package com.servlet;
import java.io.IOException;
import com.dao.ProductDAO;
import com.model.Product;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        int qty = Integer.parseInt(request.getParameter("quantity"));

        // Creating Product object without an ID
        Product p = new Product(name, category, price, qty);
        
        try {
            new ProductDAO().addProduct(p);
            response.sendRedirect("DisplayProductsServlet");
        } catch (Exception e) { 
            throw new ServletException("Database Error: Ensure price/quantity are positive.", e); 
        }
    }
}