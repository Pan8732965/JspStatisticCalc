<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<html>
<head>
    <title>函式示例</title>
</head>
<body>

    <h2>函式示例</h2>

    <%! 
    // 假設這是一個計算平均值的函式
    private double calculateAverage(double[] numbers) {
        double sum = 0;
        for (double number : numbers) {
            sum += number;
        }
        return sum / numbers.length;
    }
    %>
    
    <% 
        // 在這裡使用函式
        double[] data = {1.0, 2.0, 3.0, 4.0, 5.0};

        // 呼叫 calculateAverage 函式
        double average = calculateAverage(data);
    %>

    <p>數據: <%= Arrays.toString(data) %></p>
    <p>平均值: <%= average %></p>

</body>
</html>
