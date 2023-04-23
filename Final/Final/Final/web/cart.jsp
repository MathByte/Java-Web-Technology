<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>My Cart</title>
</head>
<body>

<h2>My Cart</h2>

<table>
  <tr><th>Sales Item</th></tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- loop through all cartItems and print Sales item then Navigate to Catalog Servlet-->
<!-- Fill in the Blanks and put Bold Code as your Q-6 Answer in Quiz -->


<c:forEach var="item" items="${sessionScope.cartItems}">
  <tr>
    <td><c:out value="${item.code}"/></td>
  </tr>
</c:forEach>

</table>
 
</br>
</br>
<a href="<c:url value="/Catalog" />">Show Catalog</a>

</body>
</html>