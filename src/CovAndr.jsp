<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>樣本共變異數與相關係數計算器</title>

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
    <h2>樣本共變異數 / 相關係數 計算器</h2>
    <h3> <a href="index.jsp" target="_self">返回主頁</a> <h3>

    <form method="post">
        <h3> X 組數據 </h3>
        <label for="numX1">數據 X1</label>
        <input type="text" name="numX1" required>
        <br>
        <label for="numX2">數據 X2</label>
        <input type="text" name="numX2" required>
        <br>
        <label for="numX3">數據 X3</label>
        <input type="text" name="numX3" required>
        <br>
        <label for="numX4">數據 X4</label>
        <input type="text" name="numX4" required>
        <br>
        <label for="numX5">數據 X5</label>
        <input type="text" name="numX5" required>
        <br>
        <br>
        <h3> Y 組數據 </h3>
        <label for="numY1">數據 Y1</label>
        <input type="text" name="numY1" required>
        <br>
        <label for="numY2">數據 Y2</label>
        <input type="text" name="numY2" required>
        <br>
        <label for="numY3">數據 Y3</label>
        <input type="text" name="numY3" required>
        <br>
        <label for="numY4">數據 Y4</label>
        <input type="text" name="numY4" required>
        <br>
        <label for="numY5">數據 Y5</label>
        <input type="text" name="numY5" required>
        <br>
        <br>
        <input type="submit" value="開始計算" name="operation">
    </form>

    <%-- JSP Code Area --%>
    <%!
        private double calculateAverage(double[] numbers) {
            double sum = 0;
            for (double number : numbers) {
                sum += number;
            }
            return sum / numbers.length;
        }

        private double calculateCovariance(double[] Xnumbers, double[] Ynumbers, double Xaverage, double Yaverage) {
            double b = 0;

            for (int i = 0; i < Xnumbers.length; i++) {
                double a = (Xnumbers[i] - Xaverage) * (Ynumbers[i] - Yaverage);
                b += a;
            }
            return b / (Xnumbers.length - 1); // 5(n) - 1
        }

        private double calculateCorrelationCoefficient(double COVxy, double[] Xnumbers, double[] Ynumbers) {
            double xSampleStandardDeviation = calculateSampleStandardDeviation(Xnumbers);
            double ySampleStandardDeviation = calculateSampleStandardDeviation(Ynumbers);

            return COVxy / (xSampleStandardDeviation * ySampleStandardDeviation);
        }

        private double calculateSampleStandardDeviation(double[] numbers) {
            double average = calculateAverage(numbers);
            double sum = 0;

            for (double number : numbers) {
                double diff = number - average;
                sum += diff * diff;
            }

            return Math.sqrt(sum / (numbers.length - 1)); // 5(n) - 1
        }
    %>

    <%
        // Check if the form is submitted
        if (request.getMethod().equalsIgnoreCase("post")) {

            // get X numbers
            double Xnumbers[] = new double[5];
            Xnumbers[0] = Double.parseDouble(request.getParameter("numX1"));
            Xnumbers[1] = Double.parseDouble(request.getParameter("numX2"));
            Xnumbers[2] = Double.parseDouble(request.getParameter("numX3"));
            Xnumbers[3] = Double.parseDouble(request.getParameter("numX4"));
            Xnumbers[4] = Double.parseDouble(request.getParameter("numX5"));
            
            // get Y numbers
            double Ynumbers[] = new double[5];
            Ynumbers[0] = Double.parseDouble(request.getParameter("numY1"));
            Ynumbers[1] = Double.parseDouble(request.getParameter("numY2"));
            Ynumbers[2] = Double.parseDouble(request.getParameter("numY3"));
            Ynumbers[3] = Double.parseDouble(request.getParameter("numY4"));
            Ynumbers[4] = Double.parseDouble(request.getParameter("numY5"));
            

            String operation = request.getParameter("operation");

            // sort the numbers
            Arrays.sort(Xnumbers);
            Arrays.sort(Ynumbers);

            //Calc the average numbers
            double Xaverage = (Xnumbers[0] + Xnumbers[1] + Xnumbers[2] + Xnumbers[3]+ Xnumbers[4])/5 ;
            double Yaverage = (Ynumbers[0] + Ynumbers[1] + Ynumbers[2] + Ynumbers[3]+ Ynumbers[4])/5 ;
            
            /* use function to calculate */
            double COVxy = calculateCovariance(Xnumbers, Ynumbers, Xaverage, Yaverage); 
            double rNumber = calculateCorrelationCoefficient(COVxy, Xnumbers, Ynumbers);

            //rounded to the nearest whole number
            DecimalFormat decimalFormat = new DecimalFormat("#.####");
            String OutputCOVxy = decimalFormat.format(COVxy);
            String OutputrNumber = decimalFormat.format(rNumber);
        
    %>
            <h3>X原始數據： <%= Xnumbers[0] %>, <%= Xnumbers[1] %>, <%= Xnumbers[2] %>, <%= Xnumbers[3] %>, <%= Xnumbers[4] %> </h3>
            <h3>Y原始數據： <%= Ynumbers[0] %>, <%= Ynumbers[1] %>, <%= Ynumbers[2] %>, <%= Ynumbers[3] %>, <%= Ynumbers[4] %> </h3>
            <h3>Cov 樣本共變異數： <%= OutputCOVxy %>  </h3>
            <h3>r 相關係數： <%= OutputrNumber %>  </h3>
            
    <%
        }
    %>