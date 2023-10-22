<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>變異係數(CV)計算器</title>

    <style>
        h2 {
            text-align: center;
        }
        h3 {
            text-align: center;
        }
        
    </style>
</head>

<body>
    <h2>Z分數計算器</h2>
    <h3> <a href="index.jsp" target="_self">返回主頁</a> <h3>

    <form method="post">
        <label for="wantStandardDeviation">所要的平均標準差距離</label>
        <input type="text" name="wantStandardDeviation" required>
        <br>
        <br>
        <input type="submit" value="計算契理雪夫定理的預測值" name="operation">
    </form>

    <%-- JSP Code Area --%>
    <%
        // Check if the form is submitted
        if (request.getMethod().equalsIgnoreCase("post")) {
            double numbers[] = new double[5];
            double wantStandardDeviation = Double.parseDouble(request.getParameter("wantStandardDeviation")); ;
            String operation = request.getParameter("operation");

            double chebyshev = 1 - (1/(wantStandardDeviation*wantStandardDeviation));

            //rounded to the nearest whole number
            DecimalFormat decimalFormat = new DecimalFormat("#.####");
            String OutputChebyshev = decimalFormat.format(chebyshev);
        
    %>
            <h3> 在平均值的 <%= wantStandardDeviation %> 個標準差內，約有 <%= OutputChebyshev %> 個數據 </h3>

            
    <%
        }
    %>