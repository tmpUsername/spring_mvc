<%-- 
    Document   : genre_lister
    Created on : 10 oct. 2016, 11:01:24
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="../../_MENU.jsp"/>
        <h1>Hello World!</h1>
        <ul>
            <c:forEach items="${genres}" var="genre">
                <li>
                    <p>
                        ${genre.nom} 
                        <a href="supprimer_genre/${genre.id}">supprimer</a>
                        <a href="modifier_genre/${genre.id}">modifier</a>
                    </p>
                </li>
            </c:forEach>
        </ul>
        <a href="ajouter_genre">Ajouter genre</a>
    </body>
</html>
