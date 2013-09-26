<%-- 
    Document   : oving4
    Created on : Aug 24, 2013, 2:49:03 PM
    Author     : Rubenhag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            li {
                padding-left: 25px;
            }
        </style>
    </head>
    <body>
        <%
            String navn = request.getParameter("navn");
            if(navn!=null){
                navn = navn.trim();
                if(navn.equals("")) out.println("Du må fylle inn opplysninger om navn: <a href=oving4.html>Fyll inn navn</a>");
                else out.println(navn);
            }
        %>
        <h1>Opplysninger du har gitt er:</h1>
        <p>Sitter på lab:</p>
        <%
            String lab = request.getParameter("sitter");
            out.println("<li> lab "+lab+"</li>");
        %>
        <p>Ønsker hjelp til/med:</p>
        <%
            String[] verdier = request.getParameterValues("besk");
            String[] hjelp = request.getParameterValues("liste");
            for(int i =0;i<verdier.length;i++){
                if(verdier[i].equals("annet")){
                    String annet = request.getParameter("annet");
                    out.println("<li> Annet: "+annet+"</li>");
                }
            }
            for(int i = 0;i<hjelp.length;i++){
                out.println("<li>Øving "+hjelp[i]+"</li>");
            }
            if(hjelp.length>3){
                out.println("Flott. Nå har du jammen jobbet bra!");
            }
        %>
    </body>
</html>
