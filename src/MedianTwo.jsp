<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html lang="en">

<!-- 1. 確認函式做法是否正確 2.可否可以不要用函式 3. 基本觀念沒有搞懂 -->

<head>
    <meta charset="utf-8">
    <title>中位數計算器</title>

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
    <h2>中位數計算器</h2>
    <h3> <a href="index.jsp" target="_self">返回主頁</a> </h3>

    <form method="post">
        <label for="num1">數據1</label>
        <input type="text" name="num1" required>
        <br>
        <label for="num2">數據2</label>
        <input type="text" name="num2" required>
        <br>
        <label for="num3">數據3</label>
        <input type="text" name="num3" required>
        <br>
        <label for="num4">數據4</label>
        <input type="text" name="num4" required>
        <br>
        <label for="num5">數據5</label>
        <input type="text" name="num5" required>
        <br>
        <input type="submit" value="找出中位數" name="operation">
    </form>

    <%-- JSP Code Area --%>
    <%-- Check if the form is submitted --%>
    <%
        double median = 0; // Declare outside the try block

        if (request.getMethod().equalsIgnoreCase("post")) {
            double numbers[] = new double[5];
            
            try {
                numbers[0] = Double.parseDouble(request.getParameter("num1"));
                numbers[1] = Double.parseDouble(request.getParameter("num2"));
                numbers[2] = Double.parseDouble(request.getParameter("num3"));
                numbers[3] = Double.parseDouble(request.getParameter("num4"));
                numbers[4] = Double.parseDouble(request.getParameter("num5"));

                // Sort the numer from the smallest to largest and find the location value. Finally, print out.
                Arrays.sort(numbers);
                median = findMedian(numbers);
            } catch (NumberFormatException e) {
                // Handle the case where the user enters non-numeric values
                out.println("<p>Please enter valid numeric values.</p>");
            }
        
    %>

    <%
        }
    %>

    
