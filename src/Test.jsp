<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.text.Decimal
 %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>小數點取位示例</title>
</head>

<body>

    <%
        double originalNumber = 15.6789;

        // 使用 DecimalFormat 取得小數點後兩位
        DecimalFormat decimal
DecimalFormat decimalFormat = new DecimalFormat("#.##");
        String formattedNumber = decimalFormat.format(originalNumber);

        out.print("<p>原始數字：" + originalNumber + "</p>");
        out.print("<p>小數點取位：" + formattedNumber + "</p>");
    %>

</body>

</html>