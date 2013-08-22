<%-- 
    Document   : oppgave3
    Created on : Aug 22, 2013, 8:59:27 AM
    Author     : Ruben
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teller</title>
    </head>
    <body>
        <%!
            int teller = 0;
        %>
        <%
            teller++;
        %>
        <p>Siden er nå lastet <%=teller%> ganger siden web-tjeneren startet sist gang!</p>
    </body>
</html>
