<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Report Criteria</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .form-container { background: white; padding: 40px; border-radius: 12px; box-shadow: 0 10px 25px rgba(0,0,0,0.1); width: 100%; max-width: 400px; text-align: center; border-top: 5px solid #3498db; }
        h3 { color: #2c3e50; margin-bottom: 10px; }
        p { color: #7f8c8d; font-size: 14px; margin-bottom: 25px; }
        .input-group { text-align: left; margin-bottom: 20px; }
        label { display: block; font-weight: bold; margin-bottom: 8px; color: #34495e; font-size: 14px; }
        input[type="text"], input[type="number"] { width: 100%; padding: 12px; border: 1px solid #ddd; border-radius: 6px; box-sizing: border-box; font-size: 16px; }
        input:focus { outline: none; border-color: #3498db; box-shadow: 0 0 5px rgba(52,152,219,0.2); }
        .submit-btn { background: #3498db; color: white; border: none; padding: 12px 30px; border-radius: 6px; cursor: pointer; font-size: 16px; font-weight: bold; width: 100%; transition: 0.3s; }
        .submit-btn:hover { background: #2980b9; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        .cancel-link { display: block; margin-top: 20px; color: #95a5a6; text-decoration: none; font-size: 13px; }
    </style>
</head>
<body>
    <% 
        String type = (String)request.getAttribute("reportType"); 
        String labelText = "Search Value";
        String placeholder = "";
        String inputType = "text";

        // Logic to customize the form based on type
        if ("price".equals(type)) {
            labelText = "Minimum Price Amount ($)";
            placeholder = "e.g. 500.00";
            inputType = "number";
        } else if ("category".equals(type)) {
            labelText = "Enter Category Name";
            placeholder = "e.g. Electronics";
        } else if ("top".equals(type)) {
            labelText = "Number of Products (N)";
            placeholder = "e.g. 5";
            inputType = "number";
        }
    %>

    <div class="form-container">
        <h3>Generate Report</h3>
        <p>Please provide the criteria below</p>
        
        <form action="ReportServlet" method="post">
            <input type="hidden" name="reportType" value="<%= type %>">
            
            <div class="input-group">
                <label><%= labelText %></label>
                <input type="<%= inputType %>" name="value" placeholder="<%= placeholder %>" required step="any">
            </div>

            <button type="submit" class="submit-btn">Run Report</button>
        </form>

        <a href="reports.jsp" class="cancel-link">Cancel and go back</a>
    </div>
</body>
</html>