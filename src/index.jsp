<%@ page contentType="text/html;charset=UTF-8" %> <!--Can show chinese word--> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>統計學 敘述統計計算網站</title>

    <style>
        h1 {
            text-align: center;
        }
        table {
            width: 25%;
            border: 3px solid black;
            margin-left: auto;
            margin-right: auto;
        }

        th {
            border: 0px solid black;
            color: #000000;
            font-size: 28px;
        }

        td {
            border: 0px solid rgb(255, 145, 0);
            text-align: center;
            font-size: 30px;
            font-family: "標楷體";
        }

        .my-image {
            border: 4px solid #ddd; 
            border-radius: 15px;
            padding: 3px;
            width:100px;
            height: 100px;
        }

        .rounded-border {
            border-radius: 20px;
        }

    </style>

</head>

<body>
    <h1> 請點選以下任一個計算工具👇，以協助你的統計計算需求 </h1>
    <table class="rounded-border">
        <tr> 
            <td>
                【集中趨勢】 
            </td>
            
        </tr>
        <tr> 
            <td>
                <a href="ArithmeticMean.jsp" target="_self">平均數</a> 
            </td>
            
        </tr>
        <tr>
            <td>
                <a href="Median.jsp" target="_self">中位數</a>
            </td>
            
        </tr>
        <tr>
            <td>
                <a href="Mode.jsp" target="_self">眾數</a>
            </td>
            
        </tr>
            <tr> 
                <td>
                    【離散趨勢】 
                </td>
            
            </tr>
        <tr>
            <td>
                <a href="Quartile.jsp" target="_self">四分位數</a>
            </td>
            
        </tr>
        <tr>
            <td>
                <a href="StandardDeviation.jsp" target="_self">標準差 / 變異數</a>
            </td>
            
        </tr>
        
        <tr>
            <td>
                <a href="CV.jsp" target="_self">變異係數(CV)</a>
            </td>
            
        </tr>
        <tr> 
            <td>
                【圖形應用】
            </td>
            
        </tr>
        <tr>
            <td>
                <a href="zScore.jsp" target="_self">Z分數</a>
            </td>
            
        </tr>
        <tr>
            <td>
                <a href="CovAndr.jsp" target="_self">樣本之共變異數(COV) / 相關係數(r) </a>
            </td>
            
        </tr>
        <tr>
            <td>
                <a href="chebyshev.jsp" target="_self">契理雪夫定理 - 資料分配預測</a>
            </td>
            
        </tr>
    </table>

    <img src="statistics.jpg" alt="Statistics" class="my-image">
    <p> <a href="https://youtu.be/ogeGJS0GEF4?si=K72oD2mPNEQe4dD7" target="_blank">✨ 關於統計學有趣的影片 ✨</a>。</p>
    <p> 有疑問請來信：</p>
    潘驄杰  <a href= "mailto:smartjay1206@gmail.com">smartjay1206@gmail.com</a>


     
</body>

</html>