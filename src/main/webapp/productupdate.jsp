<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; padding: 50px 20px; margin: 0; }
        .form-card { background: white; padding: 30px; border-radius: 12px; box-shadow: 0 10px 25px rgba(0,0,0,0.1); width: 100%; max-width: 400px; border-top: 5px solid #3f51b5; }
        h2 { color: #1a237e; margin-top: 0; margin-bottom: 20px; font-size: 24px; text-align: center; }
        .input-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; color: #555; font-size: 14px; font-weight: 600; }
        input { width: 100%; padding: 10px; border: 1px solid #ddd; border-radius: 6px; box-sizing: border-box; transition: 0.3s; }
        input:focus { border-color: #3f51b5; outline: none; box-shadow: 0 0 5px rgba(63, 81, 181, 0.2); }
        .id-field { background-color: #f8f9fa; border-left: 4px solid #3f51b5; }
        input[type="submit"] { background: #3f51b5; color: white; border: none; padding: 12px; margin-top: 10px; cursor: pointer; font-weight: bold; font-size: 16px; border-radius: 6px; }
        input[type="submit"]:hover { background: #303f9f; }
        .back-link { display: block; text-align: center; margin-top: 20px; color: #7f8c8d; text-decoration: none; font-size: 14px; }
    </style>
</head>
<body>
    <div class="form-card">
        <h2>Update Product</h2>
        <form action="UpdateProductServlet" method="post">
            <div class="input-group">
                <label>Target Product ID (Required)</label>
                <input type="number" name="id" class="id-field" placeholder="Enter ID to modify" required>
            </div>
            <hr style="border: 0; border-top: 1px solid #eee; margin: 20px 0;">
            <div class="input-group">
                <label>New Name</label>
                <input type="text" name="name" required>
            </div>
            <div class="input-group">
                <label>New Category</label>
                <input type="text" name="category">
            </div>
            <div class="input-group">
                <label>New Price ($)</label>
                <input type="number" step="0.01" min="0" name="price" required>
            </div>
            <div class="input-group">
                <label>New Quantity</label>
                <input type="number" min="0" name="quantity" required>
            </div>
            <input type="submit" value="Apply Changes">
        </form>
        <a href="index.jsp" class="back-link">← Cancel and Back</a>
    </div>
</body>
</html>