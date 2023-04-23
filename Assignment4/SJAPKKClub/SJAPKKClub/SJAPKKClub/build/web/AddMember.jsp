<%-- 
    Document   : AddMember
    Created on : 16-Apr-2022, 11:17:25 PM
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
         <h1>Add new Member</h1>
         <h3 style = "color: red"> ${message} </h3>
         <form action="MemberAdmin?action=saveMember"  method="post">
            
             
            <!--<input type="hidden" name="action" value="addMember"><br>-->
            <label for="email">Email:   </label>
            <input type="text" id="email" name="email"><br>

            <label for="Fname">Full name:   </label>
            <input type="text" id="Fname" name="Fname" ><br>

            <label for="phone">Phone:   </label>
            <input type="text" id="phone" name="phone" ><br>
            
            
            <label for="prog">IT Program:   </label>
            <select id="prog" name="prog">
                <option value="CAD" >CAD</option>
                <option value="USA">USA</option>
            </select>
            <br>
            <label for="year">Year:   </label>
            <select id="year" name="year">
                <option value="1" >1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
            <br>
            <input style="float: left" type="submit" value="Save">
            
            <input style="float: left" type="reset" value="Reset">
          </form>
    </body>
</html>
<jsp:include page="footer.jsp"/>