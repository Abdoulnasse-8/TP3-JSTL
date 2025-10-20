<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
    <title>Date et heure</title>
</head>
<body>
    <h2>Date et heure actuelles</h2>

    <p>
        <fmt:formatDate value="<%= new java.util.Date() %>" pattern="dd/MM/yyyy HH:mm:ss"/>
    </p>

    <br>
    <a href="index.jsp">Retour à l'accueil</a>
</body>
</html>
