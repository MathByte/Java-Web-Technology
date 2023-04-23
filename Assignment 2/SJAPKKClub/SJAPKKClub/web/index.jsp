<%-- 
    Document   : index
    Created on : 19-Feb-2022, 11:38:15 AM
    Author     : PREDATOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Banner.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SJAPKK Computer Programming Club</title>
    </head>
    <body>
        
        <h3 class="b">Java Web Technologies: Section 1</h3>
        <%= "Pair Programming team:" %>  
        <br>
        <h3 class="b">Course Code: PROG2240</h3>
        <br>
        <h3 class="b">Project: Assignment1</h3>
        <br>
        <h3 class="b">Team members: Samar Jabbour, Arth Patel and Khachig Kerbian</h3>
        <br>
        <br>
        <%= "Current date and time: " 
            + new java.util.Date() %>
        </p>
    </body>
</html>
<jsp:include page="footer.jsp"/>
