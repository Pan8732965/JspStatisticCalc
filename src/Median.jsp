<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html lang="en">

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
        body{
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
        <br>
        <input type="submit" value="找出中位數" name="operation">
    </form>

    <%-- JSP Code Area --%>

    <%
        if (request.getMethod().equalsIgnoreCase("post")) {
            double numbers[] = new double[5];
            numbers[0] = Double.parseDouble(request.getParameter("num1"));
            numbers[1] = Double.parseDouble(request.getParameter("num2"));
            numbers[2] = Double.parseDouble(request.getParameter("num3"));
            numbers[3] = Double.parseDouble(request.getParameter("num4"));
            numbers[4] = Double.parseDouble(request.getParameter("num5"));

            String operation = request.getParameter("operation");

            // Sort the numer from the smallest to largest and find the location value. Finally, print out.
            Arrays.sort(numbers);
            double median = numbers[2];
    %>
        <h3>原始數據： <%= numbers[0] %>, <%= numbers[1] %>, <%= numbers[2] %>, <%= numbers[3] %>, <%= numbers[4] %> </h3>
        <h3>中位數： <%= median %> </h3>
    <%
        }
    %>
</body>

</html>