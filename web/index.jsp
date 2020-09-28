<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Intro JSP!</h1>
        <h2>Formas de escribi texto en HTML</h2>
        <ul>
            <li>
                <% 
                    out.println("Salida con Scriptlets"); 
                    out.println(1+2);
                    out.println(request.getContentType());
                %>
            </li>
            <li>
                ${"Salida con Expression Language. La multiplicación de 5x5= "} ${5*5}
            </li>
            <li>
                <c:if test="${true}">
                    <c:out value="Salida con JSTL... es true!!!"></c:out>
                </c:if>
                <c:if test="${ !(2 > 3)}">
                    <c:out value="Es false!!!"></c:out>
                </c:if>
            </li>
        </ul>
        <h2>Formas de obtener funcionalidad del lado del servidor</h2>
        <ol>
            <li><%= new Date() %></li>
            <li><%= request.getContextPath() %></li>
            <li><%= request.getParameter("texto") %></li>
        </ol>
    </body>
</html>
