<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
    <title>Date et Heure</title>
</head>
<body>
    <h2>Date et heure actuelles :</h2>
    <fmt:formatDate value="${now}" pattern="dd/MM/yyyy HH:mm:ss" var="currentDate" />
    <p><fmt:formatDate value="${currentDate}" pattern="EEEE, dd MMMM yyyy HH:mm:ss"/></p>
</body>
</html>
