<%-- 
    Document   : oppgave4
    Created on : Aug 22, 2013, 9:03:50 AM
    Author     : Ruben
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kvadratrot</title>
    </head>
    <body>
        <ul>
        <%
            int tab[] = {-16, 0, 25};
            for(int i = 0;i<tab.length;i++){
                out.println("<li>");
                out.println(kvad(tab[i]));
                out.println("</li>");
            }
        %>
        </ul>
    </body>
</html>
        <%!
            public String kvad(int tall){
                String res = "";
                if(tall<0){
                    res = "Kan ikke ta kvadratrota av "+tall+". <strong>Tallet er negativt</strong>";
                } else {
                    res = "Kvadratrota av "+tall+" er "+Math.sqrt(tall);
                }
                return res;
            }
        %>
