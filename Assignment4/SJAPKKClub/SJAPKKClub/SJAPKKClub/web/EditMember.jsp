<%-- 
    Document   : EditMember
    Created on : 17-Apr-2022, 12:27:10 AM
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
        <h1>Edit an Existing Member</h1>
         <h3 style = "color: red"> ${message} </h3>
         <form action="MemberAdmin?action=saveMember&email=${member.emailAddress}&db_operation=update"  method="post">
            
             
            <!--<input type="hidden" name="action" value="addMember"><br>-->
            <label for="email">Email:   </label>
            <input type="text" id="email" name="email" value="${member.emailAddress}" disabled="true"><br>

            <label for="Fname">Full name:   </label>
            <input type="text" id="Fname" name="Fname" value="${member.fullName}"><br>

            <label for="phone">Phone:   </label>
            <input type="text" id="phone" name="phone" value="${member.phoneNumber}"><br>

            
          
                
                
            <label for="prog">IT Program:   </label>
            <select id="prog" name="prog"  value="${member.programName}">
             
                    <option value="CAD" >CAD</option>
                    <option value="USA">USA</option>
              
            </select>
            <br>
            <label for="year">Year:   </label>
            <select id="year" name="year" value="${member.yearLevel}">
                <option value="1">1</option>
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