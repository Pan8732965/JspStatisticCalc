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
    <h2>變異係數(CV)計算器</h2>
    <h3> <a href="index.jsp" target="_self">返回主頁</a> <h3>

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
        <input type="submit" value="計算CV值" name="operation">
    </form>

    <%-- JSP Code Area --%>
    <%
        // Check if the form is submitted
        if (request.getMethod().equalsIgnoreCase("post")) {
            double numbers[] = new double[5];
            numbers[0] = Double.parseDouble(request.getParameter("num1"));
            numbers[1] = Double.parseDouble(request.getParameter("num2"));
            numbers[2] = Double.parseDouble(request.getParameter("num3"));
            numbers[3] = Double.parseDouble(request.getParameter("num4"));
            numbers[4] = Double.parseDouble(request.getParameter("num5"));

            String operation = request.getParameter("operation");

            Arrays.sort(numbers);

            double average = (numbers[0] + numbers[1] + numbers[2] + numbers[3]+ numbers[4])/5 ;
            
            // Calculate the sample variance and standard deviation value
            double a,b=0;
            for(int i=0;i<=4;i++){
                a = (numbers[i] - average)*(numbers[i] - average);
                b = b+a;
            }
            double sampleVariance = b / 4;
            double sampleStandardDeviation = Math.sqrt(sampleVariance);

            //rounded to the nearest whole number
            DecimalFormat decimalFormat = new DecimalFormat("0%");
            String CV = decimalFormat.format(sampleStandardDeviation / average);
        
    %>
            <h3>原始數據： <%= numbers[0] %>, <%= numbers[1] %>, <%= numbers[2] %>, <%= numbers[3] %>, <%= numbers[4] %> </h3>
            <h3>CV： <%= CV %>  </h3>
    <%
        }
    %>