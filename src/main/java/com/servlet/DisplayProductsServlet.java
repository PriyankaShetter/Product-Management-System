package com.servlet;
import java.io.IOException;
import java.util.List;
import com.dao.ProductDAO;
import com.model.Product;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/DisplayProductsServlet")
public class DisplayProductsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Product> products = new ProductDAO().getAllProducts();
            request.setAttribute("productList", products);
            request.getRequestDispatcher("productdisplay.jsp").forward(request, response);
        } catch (Exception e) { throw new ServletException(e); }
    }
}