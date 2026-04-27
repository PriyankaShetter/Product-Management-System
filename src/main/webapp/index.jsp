<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Management System | Dashboard</title>
    <style>
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%); 
            margin: 0; 
            padding: 0; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
        }
        .dashboard-card { 
            background: white; 
            padding: 50px; 
            border-radius: 15px; 
            box-shadow: 0 15px 35px rgba(0,0,0,0.1); 
            text-align: center; 
            width: 450px; 
        }
        .logo-area {
            font-size: 50px;
            margin-bottom: 10px;
        }
        h1 { 
            color: #2c3e50; 
            margin-bottom: 5px;
            font-weight: 700;
            letter-spacing: -1px;
        }
        p.subtitle {
            color: #7f8c8d;
            margin-bottom: 30px;
            font-size: 14px;
        }
        .menu-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
        }
        .menu-btn { 
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px; 
            background: #ffffff; 
            color: #34495e; 
            text-decoration: none; 
            border-radius: 10px; 
            transition: all 0.3s ease; 
            font-weight: 600; 
            border: 1px solid #e0e0e0;
        }
        .menu-btn:hover { 
            background: #3498db; 
            color: white; 
            border-color: #3498db;
            transform: translateY(-5px); 
            box-shadow: 0 5px 15px rgba(52, 152, 219, 0.3);
        }
        /* Special styling for the wide Report button */
        .report-btn { 
            grid-column: span 2;
            background: #2ecc71; 
            color: white;
            border: none;
        }
        .report-btn:hover { 
            background: #27ae60; 
            box-shadow: 0 5px 15px rgba(46, 204, 113, 0.3);
        }
        .icon {
            font-size: 24px;
            margin-bottom: 8px;
        }
    </style>
</head>
<body>
    <div class="dashboard-card">
        <div class="logo-area">📦</div>
        <h1>Inventory Pro</h1>
        <p class="subtitle">Product Management System v1.0</p>
        
        <div class="menu-grid">
            <a href="productadd.jsp" class="menu-btn">
                <span class="icon">➕</span> Add Product
            </a>
            <a href="productupdate.jsp" class="menu-btn">
                <span class="icon">🔄</span> Update
            </a>
            <a href="productdelete.jsp" class="menu-btn">
                <span class="icon">🗑️</span> Delete
            </a>
            <a href="DisplayProductsServlet" class="menu-btn">
                <span class="icon">📋</span> View All
            </a>
            <a href="reports.jsp" class="menu-btn report-btn">
                <span class="icon">📊</span> Business Reports & Analytics
            </a>
        </div>
    </div>
</body>
</html>