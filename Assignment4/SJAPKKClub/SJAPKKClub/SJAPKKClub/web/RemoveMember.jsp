<%-- 
    Document   : RemoveMember
    Created on : 18-Apr-2022, 9:32:16 PM
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
        <h1>Do you want to delete this member?</h1>
        
         <form action="MemberAdmin?action=deleteMember&email=${member.emailAddress}"  method="post">
            
             
           
            <label for="email">Email:   </label>
            <input type="text" id="email" name="email" value="${member.emailAddress}" disabled="true"><br>

            <label for="Fname">Full name:   </label>
            <input type="text" id="Fname" name="Fname" value="${member.fullName}" disabled="true"><br>

            <label for="phone">Phone:   </label>
            <input type="text" id="phone" name="phone" value="${member.phoneNumber}" disabled="true" ><br>

            
          
                
                
            <label for="prog">IT Program:   </label>
            <select id="prog" name="prog"  value="${member.programName}" disabled="true">
             
                    <option value="cad" >CAD</option>
                    <option value="usa">USA</option>
              
            </select>
            <br>
            <label for="year">Year:   </label>
            <select id="year" name="year" value="${member.yearLevel}" disabled="true">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
            <br>
            <input style="float: left" type="submit" value="Yes">
            
           
          </form>
                <a style="float: left" type="button" href="MemberAdmin?action=displayMembers">No</a>
    </body>
</html>
<jsp:include page="footer.jsp"/>