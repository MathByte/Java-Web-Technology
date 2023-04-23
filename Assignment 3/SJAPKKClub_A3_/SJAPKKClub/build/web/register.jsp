<%-- 
    Document   : register
    Created on : 19-Feb-2022, 11:38:28 AM
    Author     : PREDATOR
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
        <div>
            <h2>New Member Registration Form</h2>
            
            
            <form action="DisplayMember.jsp"  method="GET">
                
                <label for="fullname">Full Name:  </label>
                <input type="text" id="fullname" name="fullname"><br>
                
                <label for="email">Email:  </label>
                <input type="text" id="email" name="email"><br>
                
                <label for="phone">Phone:  </label>
                <input type="text" id="phone" name="phone"><br>
                
               
                
                
                <label for="itprogram">It Program:  </label>
                <select id="itprogram" name="itprogram">
                    <optgroup label="Program">
                        <option value="cas" selected>CAS</option>
                        <option value="sqate">SQATE</option>
                        <option value="cpa">CPA</option>
                        <option value="cp" selected>CP</option>
                        <option value="itid">ITID</option>
                        <option value="cad">CAD</option>
                        <option value="itss">ITSS</option>
                    </optgroup>
                </select><br>
               
                
                
                
                <label for="year">Year:</label>
                <select id="year" name="year">
                    <optgroup label="Year">
                        <option value="1" selected>1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </optgroup>
                </select>
            
                
            
                <input type="submit" value="Register Now!">
                <input type="reset" value="Reset form">
            
                
           
                
               </form>
        </div>
    </body>
</html>
<jsp:include page="footer.jsp"/>