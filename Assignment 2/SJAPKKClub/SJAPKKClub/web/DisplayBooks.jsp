<%-- 
    Document   : DisplayBooks
    Created on : 22-Mar-2022, 1:22:59 PM
    Author     : PrograMath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Banner.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of Books</h1>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <table>
            <tr>
                <td>Code</td>
                <td style=" text-align: center">Description</td>
                <td>Quantity</td>
            </tr>
             <c:forEach var="item" items="${books}">
                <tr>
                    <td>${item.code}</td>
                    <td>${item.description}</td>
                    <td>${item.quantity}</td>
                </tr>
            </c:forEach>
            
        </table>
        <form method="get" action="AddBook.jsp">
            <button type="submit"> Add Book</button>
        </form>
      
    </body>
</html>
<jsp:include page="footer.jsp"/>