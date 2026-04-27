<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reports Menu</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background-color: #f4f7f6; margin: 0; padding: 40px; text-align: center; }
        h2 { color: #2c3e50; margin-bottom: 10px; text-transform: uppercase; letter-spacing: 1px; }
        p { color: #7f8c8d; margin-bottom: 40px; }
        .report-grid { display: flex; justify-content: center; gap: 25px; flex-wrap: wrap; max-width: 1000px; margin: 0 auto; }
        .report-card { 
            background: white; border-radius: 12px; padding: 30px; width: 220px; 
            box-shadow: 0 4px 15px rgba(0,0,0,0.05); text-decoration: none; 
            color: inherit; transition: all 0.3s ease; border: 1px solid #eee;
        }
        .report-card:hover { transform: translateY(-8px); box-shadow: 0 12px 24px rgba(0,0,0,0.1); border-color: #3498db; }
        .icon { font-size: 48px; margin-bottom: 15px; display: block; }
        .title { font-weight: bold; font-size: 18px; color: #34495e; display: block; margin-bottom: 8px; }
        .desc { font-size: 13px; color: #95a5a6; line-height: 1.4; }
        .btn-home { margin-top: 40px; display: inline-block; color: #3498db; text-decoration: none; font-weight: bold; border-bottom: 2px solid transparent; transition: 0.3s; }
        .btn-home:hover { border-bottom-color: #3498db; }
    </style>
</head>
<body>
    <h2>Analytics & Reports</h2>
    <p>Select the type of report you wish to generate</p>

    <div class="report-grid">
        <a href="ReportCriteriaServlet?type=price" class="report-card">
            <span class="icon">💸</span>
            <span class="title">Price Filter</span>
            <span class="desc">Find all products priced above a specific value.</span>
        </a>

        <a href="ReportCriteriaServlet?type=category" class="report-card">
            <span class="icon">📂</span>
            <span class="title">Category Wise</span>
            <span class="desc">Filter your inventory by specific departments.</span>
        </a>

        <a href="ReportCriteriaServlet?type=top" class="report-card">
            <span class="icon">📈</span>
            <span class="title">Top Sellers</span>
            <span class="desc">View the top N products based on stock quantity.</span>
        </a>
    </div>

    <a href="index.jsp" class="btn-home">← Return to Dashboard</a>
</body>
</html>