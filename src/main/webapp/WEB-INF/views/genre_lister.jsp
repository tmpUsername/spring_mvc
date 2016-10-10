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
        <h1>Hello World!</h1>
        <ul>
            <c:forEach items="${genres}" var="genre">
                <li>
                    <p>${genre.nom}</p>
                </li>
            </c:forEach>
        </ul>
    </body>
</html>
