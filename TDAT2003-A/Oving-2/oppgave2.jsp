<%-- 
    Document   : oppgave2
    Created on : Aug 22, 2013, 8:38:13 AM
    Author     : Ruben
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>God 'xxxx'</title>
    </head>
    <body>
        <h1>En hilsen</h1>
        <%@ page import="java.util.Date" %>
        <%
            Date dato = new java.util.Date();
            int time = dato.getHours();
            int minutt = dato.getMinutes();
            String res = "";
            if(time < 10){
                res = "God Morgen";
            } else if (time > 10 && time < 17){
                res = "God dag";
            } else {
                res = "God Kveld";
            }

        %>
        <p>Klokka er <%=time%>:<%=minutt%><br>
        Da sier vi <%=res%></p>
        
    </body>
</html>
