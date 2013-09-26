<%-- 
    Document   : øving5
    Created on : Sep 6, 2013, 11:42:54 PM
    Author     : Rubenhag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="ov5.css"/>
        <%
            response.setHeader("Cache-control", "no-cache");
            String[] inter = request.getParameterValues("inter");
            if(inter== null){
                System.out.println("Første nedlasting");
                String[] cookies = finnCookies(request);
                if(cookies!=null){
                    out.println("Cookies funnet");
                }
            }
            
        %>
    </head>
    <body>
        <header>
            <%@include file="logo.html" %>
        </header>
        <div id="checkbox">
            <form action="øving5.jsp" method="post">
                <table>
                    <tr>
                    <strong>Velg de temaene du er interesser i:</strong>
                    </tr>
                    <br>
                    <tr>
                    <input type="checkbox" name="inter" value="Bil"/>Bil
                    <input type="checkbox" name="inter" value="Sport"/>Sport
                    <input type="checkbox" name="inter" value="Musikk"/>Musikk
                    <input type="checkbox" name="inter" value="Mat"/>Mat
                    <input type="submit" value="Send"/>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
<%!
            public void lagreCookie(String[] inter, String navn, HttpServletResponse response){
                Cookie c;
                for(int i =0;i<inter.length;i++){
                    c = new Cookie(navn,inter[i]);
                    c.setMaxAge(300);
                    response.addCookie(c);
                }
            }
            
            public String[] finnCookies(HttpServletRequest request){
                Cookie[] tabell = request.getCookies();
                if(tabell==null){
                    return null;
                }
                String[] res = new String[tabell.length];
                for(int i =0;i<res.length;i++){
                    res[i] = tabell[i].getValue();
                }
                return res;
            }
%>
