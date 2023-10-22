<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>眾數計算器</title>

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
    <h2>眾數計算器</h2>
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
        <br>
        <input type="submit" value="找出眾數" name="operation">
    </form>

    

    <!-- JSP Code Area -->

    <%!
        // 尋找眾數的函式
        private double findMode(double[] numbers) {
            Arrays.sort(numbers);
            Map<Double, Integer> frequencyMap = new HashMap<>();

            // 計算每個數字的出現頻率
            for (double number : numbers) {
                frequencyMap.put(number, frequencyMap.getOrDefault(number, 0) + 1);
            }

            // 找出最大頻率的數字
            double mode = Double.NaN; // 如果有多個眾數，預設為 NaN
            int maxFrequency = 0;

            for (Map.Entry<Double, Integer> entry : frequencyMap.entrySet()) {
                if (entry.getValue() > maxFrequency) {
                    maxFrequency = entry.getValue();
                    mode = entry.getKey();
                }
            }

            return mode;
        }

    %>

    <%
        // Check if the form is submitted
        if (request.getMethod().equalsIgnoreCase("post")) {
            double numbers[] = new double[5];
            numbers[0] = Double.parseDouble(request.getParameter("num1"));
            numbers[1] = Double.parseDouble(request.getParameter("num2"));
            numbers[2] = Double.parseDouble(request.getParameter("num3"));
            numbers[3] = Double.parseDouble(request.getParameter("num4"));
            numbers[4] = Double.parseDouble(request.getParameter("num5"));

            //Arrays.sort(numbers);
            double mode = findMode(numbers);
    %>
            <h3>原始數據： <%= numbers[0] %>, <%= numbers[1] %>, <%= numbers[2] %>, <%= numbers[3] %>, <%= numbers[4] %> </h3>
            <h3>眾數： <%= mode %></h3>
    <%
        }
    %>

    
</body>

</html>
