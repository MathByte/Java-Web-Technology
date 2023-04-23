<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Catalog</title>
    </head>
    <body>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

        <table>
            <tr align="left">
                <td><b><b>Code</b></b></td>
                <td><b><b>Description</b></b></td>
                <td><b><b></b>Action</b></td>
            </tr>
            <!-- loop through all salesitems and print item code/description-->
            <!-- Fill the Blanks and put Bold Code as your Q-3 Answer in Quiz -->
            
           <c:forEach var="item" items="${salesItems}">
                <tr>
                    <td align="left">
                        ${item.code}
                    </td>
                    <td algin="left">
                        ${item.description}
                    </td>
                    <td algin="left">
                        <a href="<c:url value="/Cart?action=add&code=${item.code}" />">Add to Cart</a>
                    </td>
                </tr>
            </c:forEach> 

        </table>

    </body>
</html> 