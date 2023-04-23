<%-- 
    Document   : ECart
    Created on : 5-Apr-2022, 2:15:20 PM
    Author     : Samar
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
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <table>
            <tr>
              <th>Code |</th> 
              <th>Description |</th> 
              <th>Quantity</th>
            </tr>
            <c:set var="count" scope="page" value="0"/>
                <c:forEach var="book" items="${sessionScope.myCart.items}">
                    <tr>
                        <td align="left">${book.code}</td> 
                        <td align="left">${book.description}</td>
                        <td align="right">${book.quantity}</td>
                       
                    </tr>
                <c:set var="count" scope="page" value="${count+book.quantity}"/>
            </c:forEach>
                <tr>
                    <td align="left"></td> 
                    <td align="left">Total:</td>
                    <td align="right"><c:out value = "${count}"/></td>
                </tr>
        </table> 
                
                <a href="ClearCart">Clear Cart</a>
    </body>
</html>
<jsp:include page="footer.jsp"/>
