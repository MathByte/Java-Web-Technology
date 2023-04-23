<%-- 
    Document   : ELoan
    Created on : 5-Apr-2022, 1:36:33 PM
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
          <th>Code</th>
          <th>Description</th>
          <th>QOH</th>
          <th>Active</th>
        </tr>
        <c:forEach var="item" items="${applicationScope.loanitems}">
            <tr>
                <td align="left">
                    ${item.code} 
                </td>
                <td algin="left">
                    ${item.description} 
                </td>
                <td align="right">
                 
                    <c:if test="${item.quantity > 0}">
                        ${item.quantity}
                    </c:if>
                    <c:if test="${item.quantity < 1}">
                        0
                    </c:if>
                </td>
                <td align="right">
                    <c:if test="${item.quantity >= 1}">
                        <a href="<c:url value="Cart?action=reserve&code=${item.code}" />">
                        Reserve</a>
                    </c:if>
                    <c:if test="${item.quantity < 1}">
                        N/A
                    </c:if>
                </td>
            </tr>
        </c:forEach>
      </table>
    </body>
</html>
<jsp:include page="footer.jsp"/>
