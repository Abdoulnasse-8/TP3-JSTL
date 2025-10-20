<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%
    try {
        Class.forName("oracle.jdbc.OracleDriver"); // charge le driver Oracle
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>

<sql:setDataSource var="ds"
                   driver="oracle.jdbc.OracleDriver"
                   url="jdbc:oracle:thin:@localhost:1521/XEPDB1"
                   user="testdb"
                   password="12345" />

<sql:query var="result" dataSource="${ds}">
    SELECT * FROM utilisateurs
</sql:query>

<h2>Liste des utilisateurs :</h2>

<c:choose>
    <c:when test="${not empty result.rows}">
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Email</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.ID}" /></td>
                    <td><c:out value="${row.NOM}" /></td>
                    <td><c:out value="${row.EMAIL}" /></td>
                </tr>
            </c:forEach>
        </table>
    </c:when>
    <c:otherwise>
        <p>Aucun utilisateur trouvé dans la base de données.</p>
    </c:otherwise>
</c:choose>
<a href="index.jsp">Retour à l'accueil</a>