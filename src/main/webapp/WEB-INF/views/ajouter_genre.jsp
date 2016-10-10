<%-- 
    Document   : ajouter_genre
    Created on : 10 oct. 2016, 16:27:32
    Author     : admin
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="../../_MENU.jsp"/>
        <h1>Ajouter genre</h1>
        <form:form modelAttribute="genreAttr" action="ajouter">
            <label>Nom:</label>
            <form:input path="nom"/>
            <input type="submit"/>
        </form:form>
    </body>
</html>
