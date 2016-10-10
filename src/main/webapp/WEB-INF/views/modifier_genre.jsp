<%-- 
    Document   : modifier_genre
    Created on : 10 oct. 2016, 14:33:00
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="../../_MENU.jsp"/>
        <h1>Modifier genre ${genreAttr.nom}</h1>
        <section>
            <c:set var="route">
                <spring:url value="/modifier"/>
            </c:set>
            <form:form modelAttribute="genreAttr" action="${route}">
                <form:hidden path="id"/>
                <label>Nom du genre:</label>
                <form:input path="nom"/>
                <br/>
                <input type="submit"/>
            </form:form>
        </section>
    </body>
</html>
