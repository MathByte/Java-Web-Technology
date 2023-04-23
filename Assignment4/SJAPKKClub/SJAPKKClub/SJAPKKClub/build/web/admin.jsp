<%-- 
    Document   : admin
    Created on : 19-Feb-2022, 11:38:38 AM
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
        <input type="hidden" name="action" value="displayMembers">   
        <h2>Admin: Data Maintenance</h2>
        <a href="<%=request.getContextPath()%>/DisplayBooks">Maintain Books</a></br>
        <a href="<%=request.getContextPath()%>/MemberAdmin?action=displayMembers">Display Members</a>
    </body>
</html>

<jsp:include page="footer.jsp"/>
