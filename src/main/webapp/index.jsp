<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inicio</title>
    <jsp:include page="./templates/head.jsp"/>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="get-personas">Hello Servlet</a>
<jsp:include page="./templates/footer.jsp"/>
</body>
</html>