<%-- 
    Document   : loggedin
    Created on : Nov 8, 2019, 1:59:22 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
         <c:set var="data" value="${requestScope.login}"/>
        <c:choose>
            <c:when test="${data != null}">
                <div class="name">
                <p>First Name: ${data.firstName}</p>
                <p>Last Name: ${data.lastName}</p>
                </div>
            </c:when>
                
            <c:otherwise>
                <div class="error">
                <p>Sorry, you are not registered</p>
                </div>
            </c:otherwise>
        </c:choose>
    </body>
</html>
