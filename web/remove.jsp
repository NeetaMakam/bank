<%-- 
    Document   : remove
    Created on : 30 Nov, 2018, 9:53:43 PM
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
            h2{color: black;}
            h2{font-style: oblique}</style>
    </head>
    <body>
       <center>      
        <br>
        <h1><font face="ink free" size="8" >FIN-SER BANK </font><hr></h1>
         <img src="bank2.jpg" height="450" width="450" style="float: left">
        <img src="Jenis-Bank1.jpg" height="500" width="500" style="float: right">
        <br><br><form action="remove1.jsp">
         <h3> <table align="center"><br>       
                <tr>
                     <td>BRANCH ID : </td>
                     <td><input type ="textbox" name="n1" size="25" value=""></td>
                 </tr><br>
                </table></h3><br>
         <input style="font-size: 130%" type="submit" value="DELETE"/>
            </form>
       </center>
    </body>
</html>
