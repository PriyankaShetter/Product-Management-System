<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.model.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Report Summary</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background-color: #fdfdfd; padding: 40px; margin: 0; }
        .report-wrapper { background: white; padding: 30px; border-radius: 8px; border-top: 5px solid #f39c12; box-shadow: 0 4px 12px rgba(0,0,0,0.05); max-width: 900px; margin: auto; }
        .report-header { text-align: center; margin-bottom: 30px; }
        h2 { color: #d35400; margin-bottom: 5px; text-transform: uppercase; letter-spacing: 1px; }
        p { color: #7f8c8d; margin-top: 0; }
        table { width: 100%; border-collapse: separate; border-spacing: 0 8px; }
        th { padding: 12px; color: #95a5a6; font-weight: 500; text-align: left; border-bottom: 1px solid #eee; }
        td { padding: 15px; background: #fff; border-top: 1px solid #f1f1f1; border-bottom: 1px solid #f1f1f1; }
        td:first-child { border-left: 1px solid #f1f1f1; border-radius: 8px 0 0 8px; }
        td:last-child { border-right: 1px solid #f1f1f1; border-radius: 0 8px 8px 0; }
        .rank-id { background: #f39c12; color: white; padding: 2px 8px; border-radius: 4px; font-size: 12px; }
        .btn-back { display: inline-block; padding: 8px 20px; background: #f39c12; color: white; text-decoration: none; border-radius: 4px; font-weight: bold; margin-bottom: 20px; }
        .btn-back:hover { background: #e67e22; }
    </style>
</head>
<body>
    <div class="report-wrapper">
        <a href="reports.jsp" class="btn-back">New Report</a>
        
        <div class="report-header">
            <h2>Generated Report</h2>
            <p>Analysis based on your custom criteria</p>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Ref ID</th>
                    <th>Product Details</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Product> list = (List<Product>)request.getAttribute("reportResults");
                    if(list != null && !list.isEmpty()) {
                        for(Product p : list) {
                %>
                <tr>
                    <td><span class="rank-id"><%= p.getProductId() %></span></td>
                    <td><strong><%= p.getProductName() %></strong></td>
                    <td><%= p.getCategory() %></td>
                    <td>$<%= String.format("%.2f", p.getPrice()) %></td>
                    <td><%= p.getQuantity() %></td>
                </tr>
                <%      } 
                    } else { %>
                    <tr><td colspan="5" style="text-align:center; padding: 30px;">No products match these criteria.</td></tr>
                <% } %>
            </tbody>
        </table>
        
        <div style="text-align: center; margin-top: 30px;">
            <a href="index.jsp" style="color: #bdc3c7; text-decoration: none; font-size: 13px;">Return to Main Dashboard</a>
        </div>
    </div>
</body>
</html>