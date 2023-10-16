<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>平均數計算器</title>

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
    <h2>平均數計算器</h2>
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
        <input type="submit" value="計算平均值" name="operation">
    </form>

    

    <%-- JSP Code Area --%>
    <%
        // Check if the form is submitted
        if (request.getMethod().equalsIgnoreCase("post")) {
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            int num3 = Integer.parseInt(request.getParameter("num3"));
            int num4 = Integer.parseInt(request.getParameter("num4"));
            int num5 = Integer.parseInt(request.getParameter("num5"));

            String operation = request.getParameter("operation");

            double result = 0;
            result = (num1 + num2 + num3 + num4 + num5) / 5.0;
        
    %>
            <h3>平均值： <%= result %></h3>
    <%
        }
    %>
    

</body>

</html>
