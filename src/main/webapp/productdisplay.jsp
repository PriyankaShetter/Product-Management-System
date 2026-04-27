<%@ page import="java.util.*, com.model.Product" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inventory Management</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; padding: 40px; margin: 0; }
        .table-container { background: white; padding: 30px; border-radius: 12px; box-shadow: 0 8px 24px rgba(0,0,0,0.1); max-width: 1000px; margin: auto; }
        .header-flex { display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; border-bottom: 2px solid #3498db; padding-bottom: 15px; }
        h2 { color: #2c3e50; margin: 0; }
        .btn { padding: 10px 18px; border-radius: 6px; text-decoration: none; font-weight: 600; font-size: 14px; transition: 0.3s; }
        .btn-home { background: #ecf0f1; color: #2c3e50; }
        .btn-add { background: #3498db; color: white; }
        .btn:hover { opacity: 0.8; transform: translateY(-1px); }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
        th { background-color: #f8f9fa; color: #7f8c8d; padding: 15px; text-align: left; text-transform: uppercase; font-size: 12px; letter-spacing: 1px; border-bottom: 2px solid #eee; }
        td { padding: 15px; border-bottom: 1px solid #f1f1f1; color: #34495e; }
        tr:hover { background-color: #fcfcfc; }
        .badge { padding: 4px 10px; border-radius: 4px; font-size: 12px; font-weight: bold; background: #e8f4fd; color: #3498db; }
        .price-tag { font-weight: bold; color: #27ae60; }
        .stock-warning { color: #e74c3c; font-weight: bold; }
    </style>
</head>
<body>
    <div class="table-container">
        <div class="header-flex">
            <h2>Current Inventory</h2>
            <div>
                <a href="index.jsp" class="btn btn-home">Dashboard</a>
                <a href="productadd.jsp" class="btn btn-add">+ Add Product</a>
            </div>
        </div>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Stock Level</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Product> list = (List<Product>)request.getAttribute("productList");
                    if(list != null && !list.isEmpty()) {
                        for(Product p : list) {
                %>
                <tr>
                    <td>#<%= p.getProductId() %></td>
                    <td><strong><%= p.getProductName() %></strong></td>
                    <td><span class="badge"><%= p.getCategory() %></span></td>
                    <td class="price-tag">$<%= String.format("%.2f", p.getPrice()) %></td>
                    <td>
                        <span class="<%= p.getQuantity() < 10 ? "stock-warning" : "" %>">
                            <%= p.getQuantity() %> units
                        </span>
                    </td>
                </tr>
                <%      } 
                    } else { %>
                    <tr><td colspan="5" style="text-align:center; padding: 40px; color: #95a5a6;">No products found in the system.</td></tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>