<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Font Page</title>
</head>
<body>
<%
  int fontSize = (Integer) request.getAttribute("fontSize");
  int numLines = (Integer) request.getAttribute("numLines");

  for (int i = 0; i < numLines; i++) {
%>
<p style="font-size: <%= fontSize %>px;">Это текст с размером шрифта <%= fontSize %> пикселей.</p>
<%
  }
%>

<form action="font" method="POST">
  <input type="submit" value="Перейти на главную" formaction="font">
</form>
</body>
</html>