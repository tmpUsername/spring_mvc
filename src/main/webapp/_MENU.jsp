<%-- 
    Document   : _MENU
    Created on : 10 oct. 2016, 13:50:16
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<a href="<spring:url value="/"/>">Home</a>
<a href="<spring:url value="/liste_films"/>">films</a>
<a href="<spring:url value="/liste_genres"/>" >genres</a>
