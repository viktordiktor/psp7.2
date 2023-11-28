<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Font Selection</title>
</head>
<body>
<h1>Выберите параметры шрифта:</h1>
<form action="font" method="GET" onsubmit="return validateForm()">
    <label for="fontSize">Размер шрифта (в пикселях):</label>
    <input type="number" name="fontSize" id="fontSize" required><br>
    <label for="numLines">Количество строк:</label>
    <input type="number" name="numLines" id="numLines" required><br>
    <input type="submit" value="Перейти к выводу текста">
</form>
<script>
    function validateForm() {
        var fontSize = document.getElementById("fontSize").value;
        var numLines = document.getElementById("numLines").value;

        if (fontSize <= 0 || numLines <= 0) {
            alert("Пожалуйста, введите положительные значения для размера шрифта и количества строк.");
            return false;
        }

        return true;
    }
</script>
</body>
</html>
