<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>中位數計算器</title>
</head>
<body>

<%! 
    // 聲明全域函式
    double calculateMedian(double[] arr) {
        int length = arr.length;
        double median;

        if (length % 2 == 0) {
            double middle1 = arr[length / 2 - 1];
            double middle2 = arr[length / 2];
            median = (middle1 + middle2) / 2;
        } else {
            median = arr[length / 2];
        }

        return median;
    }
%>

<%
    // 在JSP中使用函式
    double[] numbers = {5, 2, 9, 1, 7};
    double median = calculateMedian(numbers);
%>

<p>原始陣列： [<%= numbers[0] %>, <%= numbers[1] %>, <%= numbers[2] %>, <%= numbers[3] %>, <%= numbers[4] %>]</p>
<p>中位數： <%= median %></p>

</body>
</html>
