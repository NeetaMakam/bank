<%-- 
    Document   : update
    Created on : 1 Dec, 2018, 8:10:00 PM
    Author     : Sunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>  h1{color: black;} 
            h1{ font-style: italic}
            h2{font-style: oblique}
        </style>
    </head>
    <body>
        <center> <br><br><br>
            <img src="h.jpg" height="400" width="400" style="float: left">
         <img src="B1.jpg" height="400" width="400" style="float: right">
        <h2><table><form action="udi.jsp">
                   
                     <tr><td>ADDRESS :</td><td> <input type ="textbox" name="z2" size="25" value="" required></td></tr>
                     <tr><td>MOBILE NUMBER :</td><td> <input type ="textbox" maxlength="10" name="z3" size="25" value="" required></td></tr></table>
            <br><input style="font-size: 100%" type="submit" value="SUBMIT"></form>
        </center>
    </body>
</html>
