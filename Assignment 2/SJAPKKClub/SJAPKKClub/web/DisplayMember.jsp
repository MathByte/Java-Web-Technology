<%-- 
    Document   : DisplayMember
    Created on : Feb. 21, 2022, 10:34:42 p.m.
    Author     : Samar
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
        <h2> Thanks for joining our SJAPKK Computer Programming Club!</h2>
        
        <p>Here is the information that you entered:</p>

        
        <label>Full Name:</label>
        <span> <%= request.getParameter("fullname")%>  </span><br>
        
        
        <label>Email:</label>
        <span> <%= request.getParameter("email")%> </span><br>
        
        
        <label>Phone:</label>
        <span><%= request.getParameter("phone")%></span><br>
        
        
        <label>It Program:</label>
        <span><%= request.getParameter("itprogram")%></span><br>

        
        <label>Year:</label>
        <span><%= request.getParameter("year")%></span><br>

        
        <p>To enter another email address, click on the Back 
        button in your browser or the Return button shown 
        below.</p>

        <form action="register.jsp" method="post">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>

    
    </body>
    
    
    
</html>
<jsp:include page="footer.jsp"/>