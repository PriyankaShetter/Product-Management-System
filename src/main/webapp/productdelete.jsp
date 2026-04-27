<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Product</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background-color: #fdf2f2; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .delete-card { background: white; padding: 40px; border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); width: 100%; max-width: 380px; text-align: center; border-bottom: 6px solid #e74c3c; }
        .icon-circle { width: 60px; height: 60px; background: #fdeaea; color: #e74c3c; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 30px; margin: 0 auto 20px; }
        h2 { color: #c0392b; margin: 0 0 10px; }
        p { color: #7f8c8d; font-size: 14px; margin-bottom: 25px; line-height: 1.5; }
        input[type="number"] { width: 100%; padding: 12px; border: 2px solid #eee; border-radius: 8px; font-size: 16px; margin-bottom: 20px; text-align: center; box-sizing: border-box; }
        input[type="number"]:focus { border-color: #e74c3c; outline: none; }
        input[type="submit"] { background: #e74c3c; color: white; border: none; padding: 12px 30px; border-radius: 8px; cursor: pointer; font-size: 16px; font-weight: bold; width: 100%; transition: 0.3s; }
        input[type="submit"]:hover { background: #c0392b; box-shadow: 0 4px 12px rgba(231, 76, 60, 0.3); }
        .cancel-btn { display: block; margin-top: 20px; color: #95a5a6; text-decoration: none; font-size: 14px; }
        .cancel-btn:hover { color: #7f8c8d; }
    </style>
</head>
<body>
    <div class="delete-card">
        <div class="icon-circle">🗑</div>
        <h2>Remove Product</h2>
        <p>Warning: This action cannot be undone. Enter the Product ID to delete it from the system.</p>
        
        <form action="DeleteProductServlet" method="post">
            <input type="number" name="id" placeholder="Product ID #" required>
            <input type="submit" value="Delete Permanently">
        </form>

        <a href="index.jsp" class="cancel-btn">Back to Home</a>
    </div>
</body>
</html>