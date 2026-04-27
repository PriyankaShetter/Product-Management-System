package com.servlet;
import java.io.IOException;
import java.util.List;
import com.dao.ProductDAO;
import com.model.Product;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("reportType");
        ProductDAO dao = new ProductDAO();
        List<Product> results = null;
        try {
            if ("price".equals(type)) {
                results = dao.getByPrice(Double.parseDouble(request.getParameter("value")));
            } else if ("category".equals(type)) {
                results = dao.getByCategory(request.getParameter("value"));
            } else if ("top".equals(type)) {
                results = dao.getTopProducts(Integer.parseInt(request.getParameter("value")));
            }
            request.setAttribute("reportResults", results);
            request.getRequestDispatcher("report_result.jsp").forward(request, response);
        } catch (Exception e) { throw new ServletException(e); }
    }
}