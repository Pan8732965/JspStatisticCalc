<%@ page contentType="text/html;charset=UTF-8" %>
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
        <input type="submit" value="找出眾數" name="operation">
    </form>

    

    <!-- JSP Code Area -->
    <%!
        int findMode(int[] arr) {
            
            java.util.Map<Integer, Integer> frequencyMap = new java.util.HashMap<>();

            // to calculate the frequency of the appeared value. 
            for (int num : arr) {
                requencyMap.put(num, frequencyMap.getOrDefault(num, 0) + 1);
            }

            // to find the most frqurntly appeared value
            int maxFrequency = 0;
            int mode = 0;

            for (java.util.Map.Entry<Integer, Integer> entry : frequencyMap.entrySet()){
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

            Arrays.sort(numbers);
            double mode = findMode(numbers);
    %>
            <p>眾數： <%= mode %></p>
    <%
        }
    %>

    
</body>

</html>
