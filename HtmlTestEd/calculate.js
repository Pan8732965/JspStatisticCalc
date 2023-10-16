function calculate(operator) {
    // 取得輸入的數字
    var num1 = parseInt(document.getElementById("num1").value);
    var num2 = parseInt(document.getElementById("num2").value);

    // 進行計算
    var result;
    if (operator === 'add') {
        result = num1 + num2;
    } else if (operator === 'subtract') {
        result = num1 - num2;
    } else {
        result = '未知操作';
    }

    // 顯示計算結果
    document.getElementById("result").innerText = result;
}
