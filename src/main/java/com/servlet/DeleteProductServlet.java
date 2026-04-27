package com.servlet;
import java.io.IOException;
import com.dao.ProductDAO;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            new ProductDAO().deleteProduct(id);
            response.sendRedirect("DisplayProductsServlet");
        } catch (Exception e) { throw new ServletException(e); }
    }
}