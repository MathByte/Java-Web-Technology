<%-- 
    Document   : AddBook
    Created on : 22-Mar-2022, 2:03:17 PM
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
        <h2>Add a Book</h2>
        <h3 style = "color: red"> ${message} </h3>
        <form action="AddBook"  method="post">
               
            <label for="code">Code: </label>
            <input type="text" id="code" name="code" value="${book.code}"><br>

            <label for="description">Description: </label>
            <input type="text" id="description" name="description" value="${book.description}"><br>

            <label for="quantity">Quantity:  </label>
            <input type="text" id="quantity" name="quantity" value="${book.quantity}"><br>

            <input style="float: left" type="submit" value="Save">
                 
        </form>
                <a href="<%=request.getContextPath()%>/DisplayBooks"  >
                    <button>Cancel</button>
                </a>
                
                   
                
                
    </body>
</html>
<jsp:include page="footer.jsp"/>