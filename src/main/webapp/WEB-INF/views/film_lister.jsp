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
        <h1>Films!</h1>
        <ul>
            <c:forEach items="${films}" var="film">
                <li>
                    <p>
                        ${film.titre} 
                        <a href="supprimer_film/${film.id}">supprimer</a>
                        <a href="modifier_film/${film.id}">modifier</a>
                    </p>
                </li>
            </c:forEach>
        </ul>
        <a href="ajouter_film">Ajouter film</a>
    </body>
</html>
