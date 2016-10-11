<%-- 
    Document   : ajouter_genre
    Created on : 10 oct. 2016, 16:27:32
    Author     : admin
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1>Modifier film</h1>
        <c:set var = "route">
            <spring:url value="/modifierf"/>
        </c:set>
        <form:form modelAttribute="filmAttr" action="${route}">
            <form:hidden path="id"/>
            <label>Nom:</label>
            <form:input path="titre"/><br/>
            <label>Synopsis:</label>
            <form:textarea path="synopsis"/><br/>
            <label>Année de production:</label>
            <form:input path="anneeProd"/><br/>
            <label>Genre:</label>
            <form:select path="genre.id" items="${genres}" itemLabel="nom" itemValue="id"/><br/>
            <input type="submit"/>
        </form:form>
    </body>
</html>
