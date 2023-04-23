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
       <h1>List of Members</h1>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <table>
            <tr>
                <td>Email</td>
                <td style=" text-align: center">Full Name</td>
                <td>Program</td>
                <td>Year</td>
            </tr>
             <c:forEach var="item" items="${members}">
                <tr>
                    <td>${item.emailAddress}</td>
                    <td>${item.fullName}</td>
                    <td>${item.programName}</td>
                    <td>${item.yearLevel}</td>
                    <td><a href="MemberAdmin?action=editMember&email=${item.emailAddress}">Edit</a></td>
                    <td><a href="MemberAdmin?action=removeMember&email=${item.emailAddress}">Remove</a></td>
                </tr>
            </c:forEach>
        </table>
        <form method="get" action="MemberAdmin">
            <input type="hidden" name="action" value="addMember">
            <button type="submit"> Add a Member</button>
        </form>
    
    </body>
    
    
    
</html>
<jsp:include page="footer.jsp"/>