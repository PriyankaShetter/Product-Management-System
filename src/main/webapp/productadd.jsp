<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; padding-top: 50px; }
        .form-card { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); width: 350px; }
        h2 { color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 10px; }
        input, select { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ddd; border-radius: 4px; box-sizing: border-box; }
        input[type="submit"] { background: #3498db; color: white; border: none; cursor: pointer; font-weight: bold; }
        input[type="submit"]:hover { background: #2980b9; }
        .back-link { display: block; text-align: center; margin-top: 15px; color: #7f8c8d; text-decoration: none; font-size: 14px; }
    </style>
</head>
<body>
    <div class="form-card">
        <h2>Add Product</h2>
        <form action="AddProductServlet" method="post">
            <label>Product Name</label>
            <input type="text" name="name" placeholder="e.g. Laptop" required>
            <label>Category</label>
            <input type="text" name="category" placeholder="e.g. Electronics">
            <label>Price ($)</label>
            <input type="number" step="0.01" min="0" name="price" required>
            <label>Quantity</label>
            <input type="number" min="0" name="quantity" required>
            <input type="submit" value="Save to Database">
        </form>
        <a href="index.jsp" class="back-link">← Back to Dashboard</a>
    </div>
</body>
</html>